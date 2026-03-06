// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceEncryptionSecret {
  /// Sets the type of secret used for iSCSI authentication.
  final pulumi.Input<String>? type;
  /// Defines the usage context for the iSCSI authentication secret.
  final pulumi.Input<String>? usage;
  /// Specifies the UUID of the iSCSI authentication secret.
  final pulumi.Input<String>? uuid;

  /// Creates a new [DomainDevicesDiskMirrorSourceEncryptionSecret].
  /// [type] Sets the type of secret used for iSCSI authentication.
  /// [usage] Defines the usage context for the iSCSI authentication secret.
  /// [uuid] Specifies the UUID of the iSCSI authentication secret.
  const DomainDevicesDiskMirrorSourceEncryptionSecret({
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

  factory DomainDevicesDiskMirrorSourceEncryptionSecret.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceEncryptionSecret(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

