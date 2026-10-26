import 'package:pulumi/pulumi.dart' as pulumi;

/// The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
enum NetworkRoutingConfigBgpBestPathSelectionMode implements pulumi.PulumiEnum<String> {
  legacy("LEGACY"),
  standard("STANDARD");

  const NetworkRoutingConfigBgpBestPathSelectionMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkRoutingConfigBgpBestPathSelectionMode fromValue(String value) {
    for (final item in NetworkRoutingConfigBgpBestPathSelectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRoutingConfigBgpBestPathSelectionMode value: $value');
  }
}
