import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL type.
enum SslState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueSniEnabled("SniEnabled"),
  valueIpBasedEnabled("IpBasedEnabled");

  const SslState(this.wireValue);
  @override
  final String wireValue;

  static SslState fromValue(String value) {
    for (final item in SslState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslState value: $value');
  }
}
