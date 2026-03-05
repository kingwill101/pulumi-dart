/// SQL image sku.
enum SqlVmGroupImageSku {
  developer("Developer"),
  enterprise("Enterprise");

  const SqlVmGroupImageSku(this.wireValue);
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

