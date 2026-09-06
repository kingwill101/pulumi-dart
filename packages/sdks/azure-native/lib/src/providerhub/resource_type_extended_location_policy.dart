import 'package:pulumi/pulumi.dart' as pulumi;

enum ResourceTypeExtendedLocationPolicy implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  all("All");

  const ResourceTypeExtendedLocationPolicy(this.wireValue);
  @override
  final String wireValue;

  static ResourceTypeExtendedLocationPolicy fromValue(String value) {
    for (final item in ResourceTypeExtendedLocationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeExtendedLocationPolicy value: $value');
  }
}
