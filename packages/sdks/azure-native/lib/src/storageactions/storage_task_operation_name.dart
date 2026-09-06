import 'package:pulumi/pulumi.dart' as pulumi;

/// The operation to be performed on the object.
enum StorageTaskOperationName implements pulumi.PulumiEnum<String> {
  setBlobTier("SetBlobTier"),
  setBlobTags("SetBlobTags"),
  setBlobImmutabilityPolicy("SetBlobImmutabilityPolicy"),
  setBlobLegalHold("SetBlobLegalHold"),
  setBlobExpiry("SetBlobExpiry"),
  deleteBlob("DeleteBlob"),
  undeleteBlob("UndeleteBlob");

  const StorageTaskOperationName(this.wireValue);
  @override
  final String wireValue;

  static StorageTaskOperationName fromValue(String value) {
    for (final item in StorageTaskOperationName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTaskOperationName value: $value');
  }
}
