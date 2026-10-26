import 'package:pulumi/pulumi.dart' as pulumi;

/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseMode implements pulumi.PulumiEnum<String> {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseMode(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpPeerAdvertiseMode fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseMode value: $value');
  }
}
