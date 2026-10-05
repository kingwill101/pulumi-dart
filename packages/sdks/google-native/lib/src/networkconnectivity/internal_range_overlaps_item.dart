import 'package:pulumi/pulumi.dart' as pulumi;

enum InternalRangeOverlapsItem implements pulumi.PulumiEnum<String> {
  overlapUnspecified("OVERLAP_UNSPECIFIED"),
  overlapRouteRange("OVERLAP_ROUTE_RANGE"),
  overlapExistingSubnetRange("OVERLAP_EXISTING_SUBNET_RANGE");

  const InternalRangeOverlapsItem(this.wireValue);
  @override
  final String wireValue;

  static InternalRangeOverlapsItem fromValue(String value) {
    for (final item in InternalRangeOverlapsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeOverlapsItem value: $value');
  }
}
