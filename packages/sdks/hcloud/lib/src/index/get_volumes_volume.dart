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
  const GetVolumesVolume({
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
      deleteProtection: pulumi.Input.fromValue(map['deleteProtection'] as bool),
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      linuxDevice: pulumi.Input.fromValue(map['linuxDevice'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}

