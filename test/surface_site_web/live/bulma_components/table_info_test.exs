defmodule SurfaceSiteWeb.BulmaComponents.TableInfoTest do
  use SurfaceSiteWeb.ConnCase, async: true
  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/uicomponents/Table")
    assert disconnected_html =~ "Table"
    assert render(page_live) =~ "Table"
  end
end
