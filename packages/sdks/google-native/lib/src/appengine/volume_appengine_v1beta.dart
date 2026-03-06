// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class VolumeAppengineV1beta {
  /// Unique name for the volume.
  final pulumi.Input<String>? name;
  /// Volume size in gigabytes.
  final pulumi.Input<double>? sizeGb;
  /// Underlying volume type, e.g. 'tmpfs'.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [VolumeAppengineV1beta].
  /// [name] Unique name for the volume.
  /// [sizeGb] Volume size in gigabytes.
  /// [volumeType] Underlying volume type, e.g. 'tmpfs'.
  const VolumeAppengineV1beta({
    this.name,
    this.sizeGb,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sizeGb': ?sizeGb,
      'volumeType': ?volumeType,
    };
  }

  factory VolumeAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return VolumeAppengineV1beta(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

