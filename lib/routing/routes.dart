const RootRoute = "/";

const AlbunsPageDisplayName = "Álbuns";
const AlbunsPageRoute = "/Albuns";

class PageItem {
  final String name;
  final String route;

  PageItem(this.name, this.route);
}

List<PageItem> pageItemsList = [PageItem(AlbunsPageDisplayName, AlbunsPageRoute)];
