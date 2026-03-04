/// Mounting protocol to use for the storage account.
enum AzureStorageProtocol {
  valueSmb("Smb"),
  valueHttp("Http"),
  valueNfs("Nfs");

  const AzureStorageProtocol(this.wireValue);
  final String wireValue;

  static AzureStorageProtocol fromValue(String value) {
    for (final item in AzureStorageProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageProtocol value: $value');
  }
}
