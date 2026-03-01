// ignore_for_file: unused_element, unnecessary_cast


class DatabaseImport {
  /// Specifies the name of the SQL administrator.
  final String administratorLogin;
  /// Specifies the password of the SQL administrator.
  final String administratorLoginPassword;
  /// Specifies the type of authentication used to access the server. Valid values are `SQL` or `ADPassword`.
  final String authenticationType;
  /// The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storage_uri parameter.
  final String? storageAccountId;
  /// Specifies the access key for the storage account.
  final String storageKey;
  /// Specifies the type of access key for the storage account. Valid values are `StorageAccessKey` or `SharedAccessKey`.
  final String storageKeyType;
  /// Specifies the blob URI of the .bacpac file.
  final String storageUri;

  /// Creates a new [DatabaseImport].
  /// [administratorLogin] Specifies the name of the SQL administrator.
  /// [administratorLoginPassword] Specifies the password of the SQL administrator.
  /// [authenticationType] Specifies the type of authentication used to access the server. Valid values are `SQL` or `ADPassword`.
  /// [storageAccountId] The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storage_uri parameter.
  /// [storageKey] Specifies the access key for the storage account.
  /// [storageKeyType] Specifies the type of access key for the storage account. Valid values are `StorageAccessKey` or `SharedAccessKey`.
  /// [storageUri] Specifies the blob URI of the .bacpac file.
  DatabaseImport({
    required this.administratorLogin,
    required this.administratorLoginPassword,
    required this.authenticationType,
    this.storageAccountId,
    required this.storageKey,
    required this.storageKeyType,
    required this.storageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'administratorLoginPassword': administratorLoginPassword,
      'authenticationType': authenticationType,
      'storageAccountId': ?storageAccountId,
      'storageKey': storageKey,
      'storageKeyType': storageKeyType,
      'storageUri': storageUri,
    };
  }

  factory DatabaseImport.fromMap(Map<String, dynamic> map) {
    return DatabaseImport(
      administratorLogin: map['administratorLogin'] as String,
      administratorLoginPassword: map['administratorLoginPassword'] as String,
      authenticationType: map['authenticationType'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      storageKey: map['storageKey'] as String,
      storageKeyType: map['storageKeyType'] as String,
      storageUri: map['storageUri'] as String,
    );
  }
}

