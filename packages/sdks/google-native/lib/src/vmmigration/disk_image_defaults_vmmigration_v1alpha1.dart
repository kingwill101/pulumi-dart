// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains details about the image source used to create the disk.
class DiskImageDefaultsVmmigrationV1alpha1 {
  /// The Image resource used when creating the disk.
  final pulumi.Input<String> sourceImage;

  /// Creates a new [DiskImageDefaultsVmmigrationV1alpha1].
  /// [sourceImage] The Image resource used when creating the disk.
  DiskImageDefaultsVmmigrationV1alpha1({
    required this.sourceImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImage': sourceImage,
    };
  }

  factory DiskImageDefaultsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return DiskImageDefaultsVmmigrationV1alpha1(
      sourceImage: pulumi.Input.fromValue(map['sourceImage'] as String),
    );
  }
}

