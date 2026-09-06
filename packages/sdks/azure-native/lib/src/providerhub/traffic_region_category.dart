import 'package:pulumi/pulumi.dart' as pulumi;

/// The next traffic region.
enum TrafficRegionCategory implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  canary("Canary"),
  lowTraffic("LowTraffic"),
  mediumTraffic("MediumTraffic"),
  highTraffic("HighTraffic"),
  none("None"),
  restOfTheWorldGroupOne("RestOfTheWorldGroupOne"),
  restOfTheWorldGroupTwo("RestOfTheWorldGroupTwo");

  const TrafficRegionCategory(this.wireValue);
  @override
  final String wireValue;

  static TrafficRegionCategory fromValue(String value) {
    for (final item in TrafficRegionCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficRegionCategory value: $value');
  }
}
