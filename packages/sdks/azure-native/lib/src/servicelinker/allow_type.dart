import 'package:pulumi/pulumi.dart' as pulumi;

/// Allow caller client IP to access the target service if true. the property is used when connecting local application to target service.
enum AllowType implements pulumi.PulumiEnum<String> {
  valueTrue("true"),
  valueFalse("false");

  const AllowType(this.wireValue);
  @override
  final String wireValue;

  static AllowType fromValue(String value) {
    for (final item in AllowType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowType value: $value');
  }
}
