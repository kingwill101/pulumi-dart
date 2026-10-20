import 'package:pulumi/pulumi.dart' as pulumi;

enum InternalRangeOverlapsItemNetworkconnectivityV1alpha1 implements pulumi.PulumiEnum<String> {
  overlapUnspecified("OVERLAP_UNSPECIFIED"),
  overlapRouteRange("OVERLAP_ROUTE_RANGE"),
  overlapExistingSubnetRange("OVERLAP_EXISTING_SUBNET_RANGE");

  const InternalRangeOverlapsItemNetworkconnectivityV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static InternalRangeOverlapsItemNetworkconnectivityV1alpha1 fromValue(String value) {
    for (final item in InternalRangeOverlapsItemNetworkconnectivityV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeOverlapsItemNetworkconnectivityV1alpha1 value: $value');
  }
}
