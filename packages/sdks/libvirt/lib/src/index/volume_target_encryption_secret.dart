// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeTargetEncryptionSecret {
  /// Defines the type of the secret used for encryption purposes.
  final pulumi.Input<String> type;
  /// Sets the universally unique identifier (UUID) for the encryption secret.
  final pulumi.Input<String> uuid;

  /// Creates a new [VolumeTargetEncryptionSecret].
  /// [type] Defines the type of the secret used for encryption purposes.
  /// [uuid] Sets the universally unique identifier (UUID) for the encryption secret.
  const VolumeTargetEncryptionSecret({
    required this.type,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'uuid': uuid,
    };
  }

  factory VolumeTargetEncryptionSecret.fromMap(Map<String, dynamic> map) {
    return VolumeTargetEncryptionSecret(
      type: pulumi.Input.fromValue(map['type'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
