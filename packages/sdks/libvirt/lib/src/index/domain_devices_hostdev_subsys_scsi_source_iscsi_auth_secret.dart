// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret {
  /// Sets the type of secret used for iSCSI authentication.
  final pulumi.Input<String>? type;
  /// Defines the usage context for the iSCSI authentication secret.
  final pulumi.Input<String>? usage;
  /// Specifies the UUID of the iSCSI authentication secret.
  final pulumi.Input<String>? uuid;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret].
  /// [type] Sets the type of secret used for iSCSI authentication.
  /// [usage] Defines the usage context for the iSCSI authentication secret.
  /// [uuid] Specifies the UUID of the iSCSI authentication secret.
  DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret({
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

  factory DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceIscsiAuthSecret(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      usage: map['usage'] == null ? null : (map['usage']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

