// ignore_for_file: unused_element, unnecessary_cast


class DeviceGroupDevice {
  /// Is the name of the device Group
  final String? name;
  /// Name of origin
  final bool? setSyncLeader;

  /// Creates a new [DeviceGroupDevice].
  /// [name] Is the name of the device Group
  /// [setSyncLeader] Name of origin
  DeviceGroupDevice({
    this.name,
    this.setSyncLeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'setSyncLeader': ?setSyncLeader,
    };
  }

  factory DeviceGroupDevice.fromMap(Map<String, dynamic> map) {
    return DeviceGroupDevice(
      name: map['name'] == null ? null : map['name'] as String,
      setSyncLeader: map['setSyncLeader'] == null ? null : map['setSyncLeader'] as bool,
    );
  }
}

