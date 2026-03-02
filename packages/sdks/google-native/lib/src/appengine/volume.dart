// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class Volume {
  /// Unique name for the volume.
  final pulumi.Input<String>? name;
  /// Volume size in gigabytes.
  final pulumi.Input<double>? sizeGb;
  /// Underlying volume type, e.g. 'tmpfs'.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [Volume].
  /// [name] Unique name for the volume.
  /// [sizeGb] Volume size in gigabytes.
  /// [volumeType] Underlying volume type, e.g. 'tmpfs'.
  Volume({
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

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb']! as double).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType']! as String).input(),
    );
  }
}

