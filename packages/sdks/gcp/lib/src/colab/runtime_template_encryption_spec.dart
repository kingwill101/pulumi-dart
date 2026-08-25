// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateEncryptionSpec {
  /// The Cloud KMS encryption key (customer-managed encryption key) used to protect the runtime.
  final pulumi.Input<String?>? kmsKeyName;

  /// Creates a new [RuntimeTemplateEncryptionSpec].
  /// [kmsKeyName] The Cloud KMS encryption key (customer-managed encryption key) used to protect the runtime.
  const RuntimeTemplateEncryptionSpec({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory RuntimeTemplateEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateEncryptionSpec(
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
