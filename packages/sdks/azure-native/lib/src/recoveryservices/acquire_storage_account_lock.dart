import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether storage account lock is to be acquired for this container or not.
enum AcquireStorageAccountLock implements pulumi.PulumiEnum<String> {
  valueAcquire("Acquire"),
  valueNotAcquire("NotAcquire");

  const AcquireStorageAccountLock(this.wireValue);
  @override
  final String wireValue;

  static AcquireStorageAccountLock fromValue(String value) {
    for (final item in AcquireStorageAccountLock.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcquireStorageAccountLock value: $value');
  }
}
