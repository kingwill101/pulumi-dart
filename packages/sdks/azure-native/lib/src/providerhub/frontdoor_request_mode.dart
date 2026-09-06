import 'package:pulumi/pulumi.dart' as pulumi;

/// The frontdoor request mode.
enum FrontdoorRequestMode implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  useManifest("UseManifest");

  const FrontdoorRequestMode(this.wireValue);
  @override
  final String wireValue;

  static FrontdoorRequestMode fromValue(String value) {
    for (final item in FrontdoorRequestMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontdoorRequestMode value: $value');
  }
}
