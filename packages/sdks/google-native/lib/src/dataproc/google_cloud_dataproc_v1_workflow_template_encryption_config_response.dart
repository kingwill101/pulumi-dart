// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption settings for the encrypting customer core content. NEXT ID: 2
class GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse {
  /// Optional. The Cloud KMS key name to use for encrypting customer core content.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse].
  /// [kmsKey] Optional. The Cloud KMS key name to use for encrypting customer core content.
  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': kmsKey};
  }

  factory GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataprocV1WorkflowTemplateEncryptionConfigResponse(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}
