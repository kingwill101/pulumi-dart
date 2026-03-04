/// The type of peering set for this internal range.
enum InternalRangePeering {
  peeringUnspecified("PEERING_UNSPECIFIED"),
  forSelf("FOR_SELF"),
  forPeer("FOR_PEER"),
  notShared("NOT_SHARED");

  const InternalRangePeering(this.wireValue);
  final String wireValue;

  static InternalRangePeering fromValue(String value) {
    for (final item in InternalRangePeering.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangePeering value: $value');
  }
}
