// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevSubsysPciSourceAddressZpci {
  /// Sets the function identifier for the zPCI device's address.
  final double? fid;
  /// Defines the unique identifier for the zPCI address of the device.
  final double? uid;

  /// Creates a new [DomainDevicesHostdevSubsysPciSourceAddressZpci].
  /// [fid] Sets the function identifier for the zPCI device's address.
  /// [uid] Defines the unique identifier for the zPCI address of the device.
  DomainDevicesHostdevSubsysPciSourceAddressZpci({
    this.fid,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fid': ?fid,
      'uid': ?uid,
    };
  }

  factory DomainDevicesHostdevSubsysPciSourceAddressZpci.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysPciSourceAddressZpci(
      fid: map['fid'] == null ? null : map['fid'] as double,
      uid: map['uid'] == null ? null : map['uid'] as double,
    );
  }
}

