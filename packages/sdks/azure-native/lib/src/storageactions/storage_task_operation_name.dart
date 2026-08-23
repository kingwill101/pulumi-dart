/// The operation to be performed on the object.
enum StorageTaskOperationName {
  setBlobTier("SetBlobTier"),
  setBlobTags("SetBlobTags"),
  setBlobImmutabilityPolicy("SetBlobImmutabilityPolicy"),
  setBlobLegalHold("SetBlobLegalHold"),
  setBlobExpiry("SetBlobExpiry"),
  deleteBlob("DeleteBlob"),
  undeleteBlob("UndeleteBlob");

  const StorageTaskOperationName(this.wireValue);
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
