// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication for working with service bus or storage account.
class GenericBlobSbsAuthModelResponse {
  /// Credentials for service bus namespace, keyvault uri for access key
  final pulumi.Input<Map<String, String>>? credentialsConfig;
  /// Credentials for storage account, keyvault uri for access key
  final pulumi.Input<Map<String, String>>? storageAccountCredentialsConfig;
  /// Type of paging
  /// Expected value is 'ServiceBus'.
  final pulumi.Input<String> type;

  /// Creates a new [GenericBlobSbsAuthModelResponse].
  /// [credentialsConfig] Credentials for service bus namespace, keyvault uri for access key
  /// [storageAccountCredentialsConfig] Credentials for storage account, keyvault uri for access key
  /// [type] Type of paging
  GenericBlobSbsAuthModelResponse({
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

  factory GenericBlobSbsAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return GenericBlobSbsAuthModelResponse(
      credentialsConfig: map['credentialsConfig'] == null ? null : ((map['credentialsConfig']! as Map).cast<String, String>()).input(),
      storageAccountCredentialsConfig: map['storageAccountCredentialsConfig'] == null ? null : ((map['storageAccountCredentialsConfig']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

