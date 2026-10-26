import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of peering set for this internal range.
enum InternalRangePeeringNetworkconnectivityV1alpha1 implements pulumi.PulumiEnum<String> {
  peeringUnspecified("PEERING_UNSPECIFIED"),
  forSelf("FOR_SELF"),
  forPeer("FOR_PEER"),
  notShared("NOT_SHARED");

  const InternalRangePeeringNetworkconnectivityV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static InternalRangePeeringNetworkconnectivityV1alpha1 fromValue(String value) {
    for (final item in InternalRangePeeringNetworkconnectivityV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangePeeringNetworkconnectivityV1alpha1 value: $value');
  }
}
