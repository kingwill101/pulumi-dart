// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiAgentAnomalyDetectionScopeEncryptionSpec {
  /// Resource name of the Cloud KMS key used to protect the resource.
  /// Format: projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [AiAgentAnomalyDetectionScopeEncryptionSpec].
  /// [kmsKeyName] Resource name of the Cloud KMS key used to protect the resource.
  const AiAgentAnomalyDetectionScopeEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory AiAgentAnomalyDetectionScopeEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiAgentAnomalyDetectionScopeEncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
