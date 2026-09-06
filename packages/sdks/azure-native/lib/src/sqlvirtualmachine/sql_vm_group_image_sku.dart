import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL image sku.
enum SqlVmGroupImageSku implements pulumi.PulumiEnum<String> {
  developer("Developer"),
  enterprise("Enterprise");

  const SqlVmGroupImageSku(this.wireValue);
  @override
  final String wireValue;

  static SqlVmGroupImageSku fromValue(String value) {
    for (final item in SqlVmGroupImageSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlVmGroupImageSku value: $value');
  }
}
