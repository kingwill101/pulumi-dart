// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeTimeouts {
  /// Used when creating the volume (until the volume is reaches the initial `active` state)
  final pulumi.Input<String>? create;
  /// Used when deleting the volume
  final pulumi.Input<String>? delete;
  /// Used when updating the volume when necessary during update - e.g. when resizing the volume
  final pulumi.Input<String>? update;

  /// Creates a new [VolumeTimeouts].
  /// [create] Used when creating the volume (until the volume is reaches the initial `active` state)
  /// [delete] Used when deleting the volume
  /// [update] Used when updating the volume when necessary during update - e.g. when resizing the volume
  VolumeTimeouts({
    this.create,
    this.delete,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'delete': ?delete,
      'update': ?update,
    };
  }

  factory VolumeTimeouts.fromMap(Map<String, dynamic> map) {
    return VolumeTimeouts(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      update: (() { final guardedValue = map['update']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

