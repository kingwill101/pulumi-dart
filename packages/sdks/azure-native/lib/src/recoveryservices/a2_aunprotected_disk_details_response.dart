// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A unprotected disk details.
class A2AUnprotectedDiskDetailsResponse {
  /// A value indicating whether the disk auto protection is enabled.
  final pulumi.Input<String>? diskAutoProtectionStatus;
  /// The source lun Id for the data disk.
  final pulumi.Input<int>? diskLunId;

  /// Creates a new [A2AUnprotectedDiskDetailsResponse].
  /// [diskAutoProtectionStatus] A value indicating whether the disk auto protection is enabled.
  /// [diskLunId] The source lun Id for the data disk.
  const A2AUnprotectedDiskDetailsResponse({
    this.diskAutoProtectionStatus,
    this.diskLunId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskAutoProtectionStatus': ?diskAutoProtectionStatus,
      'diskLunId': ?diskLunId,
    };
  }

  factory A2AUnprotectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AUnprotectedDiskDetailsResponse(
      diskAutoProtectionStatus: (() { final guardedValue = map['diskAutoProtectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskLunId: (() { final guardedValue = map['diskLunId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

