import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines what this IP filter will be used for. This is to support IP filtering on proxies.
enum IpFilterTag implements pulumi.PulumiEnum<String> {
  default_("Default"),
  xffProxy("XffProxy"),
  serviceTag("ServiceTag");

  const IpFilterTag(this.wireValue);
  @override
  final String wireValue;

  static IpFilterTag fromValue(String value) {
    for (final item in IpFilterTag.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFilterTag value: $value');
  }
}
