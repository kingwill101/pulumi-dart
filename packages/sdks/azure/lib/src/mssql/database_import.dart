// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseImport {
  /// Specifies the name of the SQL administrator.
  final pulumi.Input<String> administratorLogin;
  /// Specifies the password of the SQL administrator.
  final pulumi.Input<String> administratorLoginPassword;
  /// Specifies the type of authentication used to access the server. Valid values are `SQL` or `ADPassword`.
  final pulumi.Input<String> authenticationType;
  /// The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storage_uri parameter.
  final pulumi.Input<String>? storageAccountId;
  /// Specifies the access key for the storage account.
  final pulumi.Input<String> storageKey;
  /// Specifies the type of access key for the storage account. Valid values are `StorageAccessKey` or `SharedAccessKey`.
  final pulumi.Input<String> storageKeyType;
  /// Specifies the blob URI of the .bacpac file.
  final pulumi.Input<String> storageUri;

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
      administratorLogin: (map['administratorLogin'] as String).input(),
      administratorLoginPassword: (map['administratorLoginPassword'] as String).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
      storageKey: (map['storageKey'] as String).input(),
      storageKeyType: (map['storageKeyType'] as String).input(),
      storageUri: (map['storageUri'] as String).input(),
    );
  }
}

