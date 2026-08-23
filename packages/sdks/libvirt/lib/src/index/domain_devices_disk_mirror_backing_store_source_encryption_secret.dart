// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceEncryptionSecret {
  /// Sets the type of secret used for iSCSI authentication.
  final pulumi.Input<String>? type;
  /// Defines the usage context for the iSCSI authentication secret.
  final pulumi.Input<String>? usage;
  /// Specifies the UUID of the iSCSI authentication secret.
  final pulumi.Input<String>? uuid;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceEncryptionSecret].
  /// [type] Sets the type of secret used for iSCSI authentication.
  /// [usage] Defines the usage context for the iSCSI authentication secret.
  /// [uuid] Specifies the UUID of the iSCSI authentication secret.
  const DomainDevicesDiskMirrorBackingStoreSourceEncryptionSecret({
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

  factory DomainDevicesDiskMirrorBackingStoreSourceEncryptionSecret.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceEncryptionSecret(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
