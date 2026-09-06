import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of direct peering.
enum DirectPeeringType implements pulumi.PulumiEnum<String> {
  valueEdge("Edge"),
  valueTransit("Transit"),
  valueCdn("Cdn"),
  valueInternal("Internal"),
  valueIx("Ix"),
  valueIxRs("IxRs"),
  valueVoice("Voice"),
  valueEdgeZoneForOperators("EdgeZoneForOperators");

  const DirectPeeringType(this.wireValue);
  @override
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
