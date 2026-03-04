/// The type of direct peering.
enum DirectPeeringType {
  valueEdge("Edge"),
  valueTransit("Transit"),
  valueCdn("Cdn"),
  valueInternal("Internal"),
  valueIx("Ix"),
  valueIxRs("IxRs"),
  valueVoice("Voice"),
  valueEdgeZoneForOperators("EdgeZoneForOperators");

  const DirectPeeringType(this.wireValue);
  final String wireValue;

  static DirectPeeringType fromValue(String value) {
    for (final item in DirectPeeringType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DirectPeeringType value: $value');
  }
}
