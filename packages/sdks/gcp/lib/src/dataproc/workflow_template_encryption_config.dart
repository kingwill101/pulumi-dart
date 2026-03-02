// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateEncryptionConfig {
  /// Optional. The Cloud KMS key name to use for encryption.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [WorkflowTemplateEncryptionConfig].
  /// [kmsKey] Optional. The Cloud KMS key name to use for encryption.
  WorkflowTemplateEncryptionConfig({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
    };
  }

  factory WorkflowTemplateEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateEncryptionConfig(
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey']! as String).input(),
    );
  }
}

