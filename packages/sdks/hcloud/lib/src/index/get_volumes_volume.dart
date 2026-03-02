// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumesVolume {
  final pulumi.Input<bool> deleteProtection;
  final pulumi.Input<int> id;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> linuxDevice;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> name;
  final pulumi.Input<int>? serverId;
  final pulumi.Input<int> size;

  /// Creates a new [GetVolumesVolume].
  /// [deleteProtection] Required.
  /// [id] Required.
  /// [labels] Required.
  /// [linuxDevice] Required.
  /// [location] Optional.
  /// [name] Required.
  /// [serverId] Optional.
  /// [size] Required.
  GetVolumesVolume({
    required this.deleteProtection,
    required this.id,
    required this.labels,
    required this.linuxDevice,
    this.location,
    required this.name,
    this.serverId,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'id': id,
      'labels': labels,
      'linuxDevice': linuxDevice,
      'location': ?location,
      'name': name,
      'serverId': ?serverId,
      'size': size,
    };
  }

  factory GetVolumesVolume.fromMap(Map<String, dynamic> map) {
    return GetVolumesVolume(
      deleteProtection: (map['deleteProtection'] as bool).input(),
      id: (map['id'] as int).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      linuxDevice: (map['linuxDevice'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as int).input(),
      size: (map['size'] as int).input(),
    );
  }
}

