import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of peering set for this internal range.
enum InternalRangePeering implements pulumi.PulumiEnum<String> {
  peeringUnspecified("PEERING_UNSPECIFIED"),
  forSelf("FOR_SELF"),
  forPeer("FOR_PEER"),
  notShared("NOT_SHARED");

  const InternalRangePeering(this.wireValue);
  @override
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
