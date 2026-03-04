/// The type of peering set for this internal range.
enum InternalRangePeeringNetworkconnectivityV1alpha1 {
  peeringUnspecified("PEERING_UNSPECIFIED"),
  forSelf("FOR_SELF"),
  forPeer("FOR_PEER"),
  notShared("NOT_SHARED");

  const InternalRangePeeringNetworkconnectivityV1alpha1(this.wireValue);
  final String wireValue;

  static InternalRangePeeringNetworkconnectivityV1alpha1 fromValue(
    String value,
  ) {
    for (final item in InternalRangePeeringNetworkconnectivityV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InternalRangePeeringNetworkconnectivityV1alpha1 value: $value',
    );
  }
}
