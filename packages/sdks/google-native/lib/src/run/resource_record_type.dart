import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource record type. Example: `AAAA`.
enum ResourceRecordType implements pulumi.PulumiEnum<String> {
  recordTypeUnspecified("RECORD_TYPE_UNSPECIFIED"),
  a("A"),
  aaaa("AAAA"),
  cname("CNAME");

  const ResourceRecordType(this.wireValue);
  @override
  final String wireValue;

  static ResourceRecordType fromValue(String value) {
    for (final item in ResourceRecordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceRecordType value: $value');
  }
}
