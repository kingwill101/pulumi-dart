import 'package:pulumi/pulumi.dart' as pulumi;

/// The indicator of whether the platform default endpoints are allowed for the egress traffic.
enum CloudServicesNetworkEnableDefaultEgressEndpoints implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const CloudServicesNetworkEnableDefaultEgressEndpoints(this.wireValue);
  @override
  final String wireValue;

  static CloudServicesNetworkEnableDefaultEgressEndpoints fromValue(String value) {
    for (final item in CloudServicesNetworkEnableDefaultEgressEndpoints.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudServicesNetworkEnableDefaultEgressEndpoints value: $value');
  }
}
