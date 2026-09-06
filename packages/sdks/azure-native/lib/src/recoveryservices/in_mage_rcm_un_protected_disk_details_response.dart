// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcm un-protected disk details.
class InMageRcmUnProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final pulumi.Input<double> capacityInBytes;
  /// The disk Id.
  final pulumi.Input<String> diskId;
  /// The disk name.
  final pulumi.Input<String> diskName;

  /// Creates a new [InMageRcmUnProtectedDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [diskId] The disk Id.
  /// [diskName] The disk name.
  const InMageRcmUnProtectedDiskDetailsResponse({
    required this.capacityInBytes,
    required this.diskId,
    required this.diskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'diskId': diskId,
      'diskName': diskName,
    };
  }

  factory InMageRcmUnProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmUnProtectedDiskDetailsResponse(
      capacityInBytes: pulumi.Input.fromValue((map['capacityInBytes'] as num).toDouble()),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
    );
  }
}
