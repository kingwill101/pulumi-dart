// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionResourcesVolume {
  /// Unique name for the volume.
  final pulumi.Input<String> name;
  /// Volume size in gigabytes.
  final pulumi.Input<int> sizeGb;
  /// Underlying volume type, e.g. 'tmpfs'.
  final pulumi.Input<String> volumeType;

  /// Creates a new [FlexibleAppVersionResourcesVolume].
  /// [name] Unique name for the volume.
  /// [sizeGb] Volume size in gigabytes.
  /// [volumeType] Underlying volume type, e.g. 'tmpfs'.
  FlexibleAppVersionResourcesVolume({
    required this.name,
    required this.sizeGb,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sizeGb': sizeGb,
      'volumeType': volumeType,
    };
  }

  factory FlexibleAppVersionResourcesVolume.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionResourcesVolume(
      name: (map['name'] as String).input(),
      sizeGb: (map['sizeGb'] as int).input(),
      volumeType: (map['volumeType'] as String).input(),
    );
  }
}

