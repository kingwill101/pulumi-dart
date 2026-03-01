// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceEncryptionSecret {
  /// Sets the type of secret used for iSCSI authentication.
  final String? type;
  /// Defines the usage context for the iSCSI authentication secret.
  final String? usage;
  /// Specifies the UUID of the iSCSI authentication secret.
  final String? uuid;

  /// Creates a new [DomainDevicesDiskSourceEncryptionSecret].
  /// [type] Sets the type of secret used for iSCSI authentication.
  /// [usage] Defines the usage context for the iSCSI authentication secret.
  /// [uuid] Specifies the UUID of the iSCSI authentication secret.
  DomainDevicesDiskSourceEncryptionSecret({
    this.type,
    this.usage,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'usage': ?usage,
      'uuid': ?uuid,
    };
  }

  factory DomainDevicesDiskSourceEncryptionSecret.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceEncryptionSecret(
      type: map['type'] == null ? null : map['type'] as String,
      usage: map['usage'] == null ? null : map['usage'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

