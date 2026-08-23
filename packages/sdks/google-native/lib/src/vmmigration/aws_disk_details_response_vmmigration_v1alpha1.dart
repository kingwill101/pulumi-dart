// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of an AWS instance disk.
class AwsDiskDetailsResponseVmmigrationV1alpha1 {
  /// The ordinal number of the disk.
  final pulumi.Input<int> diskNumber;
  /// Size in GB.
  final pulumi.Input<String> sizeGb;
  /// AWS volume ID.
  final pulumi.Input<String> volumeId;

  /// Creates a new [AwsDiskDetailsResponseVmmigrationV1alpha1].
  /// [diskNumber] The ordinal number of the disk.
  /// [sizeGb] Size in GB.
  /// [volumeId] AWS volume ID.
  const AwsDiskDetailsResponseVmmigrationV1alpha1({
    required this.diskNumber,
    required this.sizeGb,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskNumber': diskNumber,
      'sizeGb': sizeGb,
      'volumeId': volumeId,
    };
  }

  factory AwsDiskDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AwsDiskDetailsResponseVmmigrationV1alpha1(
      diskNumber: pulumi.Input.fromValue(map['diskNumber'] as int),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as String),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}
