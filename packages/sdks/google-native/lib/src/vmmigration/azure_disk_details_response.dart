// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of an Azure VM disk.
class AzureDiskDetailsResponse {
  /// Azure disk ID.
  final pulumi.Input<String> diskId;
  /// The ordinal number of the disk.
  final pulumi.Input<int> diskNumber;
  /// Size in GB.
  final pulumi.Input<String> sizeGb;

  /// Creates a new [AzureDiskDetailsResponse].
  /// [diskId] Azure disk ID.
  /// [diskNumber] The ordinal number of the disk.
  /// [sizeGb] Size in GB.
  const AzureDiskDetailsResponse({
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

  factory AzureDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureDiskDetailsResponse(
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskNumber: pulumi.Input.fromValue(map['diskNumber'] as int),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as String),
    );
  }
}
