// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevSubsysScsiHostSource {
  /// Defines the protocol type for the SCSI host source.
  final String? protocol;
  /// Specifies the World Wide Port Name (WWPN) for the SCSI host source.
  final String? wwpn;

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
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      wwpn: map['wwpn'] == null ? null : map['wwpn'] as String,
    );
  }
}

