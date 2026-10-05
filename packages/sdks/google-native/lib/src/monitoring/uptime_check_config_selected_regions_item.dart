import 'package:pulumi/pulumi.dart' as pulumi;

enum UptimeCheckConfigSelectedRegionsItem implements pulumi.PulumiEnum<String> {
  regionUnspecified("REGION_UNSPECIFIED"),
  usa("USA"),
  europe("EUROPE"),
  southAmerica("SOUTH_AMERICA"),
  asiaPacific("ASIA_PACIFIC"),
  usaOregon("USA_OREGON"),
  usaIowa("USA_IOWA"),
  usaVirginia("USA_VIRGINIA");

  const UptimeCheckConfigSelectedRegionsItem(this.wireValue);
  @override
  final String wireValue;

  static UptimeCheckConfigSelectedRegionsItem fromValue(String value) {
    for (final item in UptimeCheckConfigSelectedRegionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UptimeCheckConfigSelectedRegionsItem value: $value');
  }
}
