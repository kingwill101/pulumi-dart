// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseImport {
  /// Specifies the name of the SQL administrator.
  final pulumi.Input<String> administratorLogin;
  /// Specifies the password of the SQL administrator.
  final pulumi.Input<String> administratorLoginPassword;
  /// Specifies the type of authentication used to access the server. Valid values are `SQL` or `ADPassword`.
  final pulumi.Input<String> authenticationType;
  /// The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storageUri parameter.
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
  /// [storageAccountId] The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storageUri parameter.
  /// [storageKey] Specifies the access key for the storage account.
  /// [storageKeyType] Specifies the type of access key for the storage account. Valid values are `StorageAccessKey` or `SharedAccessKey`.
  /// [storageUri] Specifies the blob URI of the .bacpac file.
  const DatabaseImport({
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
      administratorLogin: pulumi.Input.fromValue(map['administratorLogin'] as String),
      administratorLoginPassword: pulumi.Input.fromValue(map['administratorLoginPassword'] as String),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageKey: pulumi.Input.fromValue(map['storageKey'] as String),
      storageKeyType: pulumi.Input.fromValue(map['storageKeyType'] as String),
      storageUri: pulumi.Input.fromValue(map['storageUri'] as String),
    );
  }
}
