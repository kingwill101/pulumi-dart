// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption settings for the encrypting customer core content. NEXT ID: 2
class GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig {
  /// Optional. The Cloud KMS key name to use for encrypting customer core content.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig].
  /// [kmsKey] Optional. The Cloud KMS key name to use for encrypting customer core content.
  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
    };
  }

  factory GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

