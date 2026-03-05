// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of an Azure VM disk.
class AzureDiskDetailsResponseVmmigrationV1alpha1 {
  /// Azure disk ID.
  final pulumi.Input<String> diskId;
  /// The ordinal number of the disk.
  final pulumi.Input<int> diskNumber;
  /// Size in GB.
  final pulumi.Input<String> sizeGb;

  /// Creates a new [AzureDiskDetailsResponseVmmigrationV1alpha1].
  /// [diskId] Azure disk ID.
  /// [diskNumber] The ordinal number of the disk.
  /// [sizeGb] Size in GB.
  AzureDiskDetailsResponseVmmigrationV1alpha1({
    required this.diskId,
    required this.diskNumber,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'diskNumber': diskNumber,
      'sizeGb': sizeGb,
    };
  }

  factory AzureDiskDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AzureDiskDetailsResponseVmmigrationV1alpha1(
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskNumber: pulumi.Input.fromValue(map['diskNumber'] as int),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as String),
    );
  }
}

