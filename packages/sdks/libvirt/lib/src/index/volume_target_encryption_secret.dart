// ignore_for_file: unused_element, unnecessary_cast


class VolumeTargetEncryptionSecret {
  /// Defines the type of the secret used for encryption purposes.
  final String type;
  /// Sets the universally unique identifier (UUID) for the encryption secret.
  final String? uuid;

  /// Creates a new [VolumeTargetEncryptionSecret].
  /// [type] Defines the type of the secret used for encryption purposes.
  /// [uuid] Sets the universally unique identifier (UUID) for the encryption secret.
  VolumeTargetEncryptionSecret({
    required this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'uuid': ?uuid,
    };
  }

  factory VolumeTargetEncryptionSecret.fromMap(Map<String, dynamic> map) {
    return VolumeTargetEncryptionSecret(
      type: map['type'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

