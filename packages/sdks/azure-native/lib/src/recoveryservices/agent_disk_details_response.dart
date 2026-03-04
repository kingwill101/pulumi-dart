// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent disk details.
class AgentDiskDetailsResponse {
  /// The disk capacity in bytes.
  final pulumi.Input<double> capacityInBytes;

  /// The disk Id.
  final pulumi.Input<String> diskId;

  /// The disk name.
  final pulumi.Input<String> diskName;

  /// A value indicating whether the disk is the OS disk.
  final pulumi.Input<String> isOSDisk;

  /// The lun of disk.
  final pulumi.Input<int> lunId;

  /// Creates a new [AgentDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [diskId] The disk Id.
  /// [diskName] The disk name.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [lunId] The lun of disk.
  AgentDiskDetailsResponse({
    required this.capacityInBytes,
    required this.diskId,
    required this.diskName,
    required this.isOSDisk,
    required this.lunId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'diskId': diskId,
      'diskName': diskName,
      'isOSDisk': isOSDisk,
      'lunId': lunId,
    };
  }

  factory AgentDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AgentDiskDetailsResponse(
      capacityInBytes: pulumi.Input.fromValue(map['capacityInBytes'] as double),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      isOSDisk: pulumi.Input.fromValue(map['isOSDisk'] as String),
      lunId: pulumi.Input.fromValue(map['lunId'] as int),
    );
  }
}
