// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysScsiHostSource {
  /// Defines the protocol type for the SCSI host source.
  final pulumi.Input<String>? protocol;
  /// Specifies the World Wide Port Name (WWPN) for the SCSI host source.
  final pulumi.Input<String>? wwpn;

  /// Creates a new [DomainDevicesHostdevSubsysScsiHostSource].
  /// [protocol] Defines the protocol type for the SCSI host source.
  /// [wwpn] Specifies the World Wide Port Name (WWPN) for the SCSI host source.
  DomainDevicesHostdevSubsysScsiHostSource({
    this.protocol,
    this.wwpn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'wwpn': ?wwpn,
    };
  }

  factory DomainDevicesHostdevSubsysScsiHostSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiHostSource(
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wwpn: (() { final guardedValue = map['wwpn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

