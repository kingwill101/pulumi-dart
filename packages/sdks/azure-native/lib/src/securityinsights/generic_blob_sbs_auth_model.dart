// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication for working with service bus or storage account.
class GenericBlobSbsAuthModel {
  /// Credentials for service bus namespace, keyvault uri for access key
  final pulumi.Input<Map<String, String>>? credentialsConfig;
  /// Credentials for storage account, keyvault uri for access key
  final pulumi.Input<Map<String, String>>? storageAccountCredentialsConfig;
  /// Type of paging
  /// Expected value is 'ServiceBus'.
  final pulumi.Input<String> type;

  /// Creates a new [GenericBlobSbsAuthModel].
  /// [credentialsConfig] Credentials for service bus namespace, keyvault uri for access key
  /// [storageAccountCredentialsConfig] Credentials for storage account, keyvault uri for access key
  /// [type] Type of paging
  GenericBlobSbsAuthModel({
    this.credentialsConfig,
    this.storageAccountCredentialsConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsConfig': ?credentialsConfig,
      'storageAccountCredentialsConfig': ?storageAccountCredentialsConfig,
      'type': type,
    };
  }

  factory GenericBlobSbsAuthModel.fromMap(Map<String, dynamic> map) {
    return GenericBlobSbsAuthModel(
      credentialsConfig: (() { final guardedValue = map['credentialsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      storageAccountCredentialsConfig: (() { final guardedValue = map['storageAccountCredentialsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

