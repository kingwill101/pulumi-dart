// ignore_for_file: unused_element, unnecessary_cast


/// A2A unprotected disk details.
class A2AUnprotectedDiskDetails {
  /// A value indicating whether the disk auto protection is enabled.
  final String? diskAutoProtectionStatus;
  /// The source lun Id for the data disk.
  final int? diskLunId;

  /// Creates a new [A2AUnprotectedDiskDetails].
  /// [diskAutoProtectionStatus] A value indicating whether the disk auto protection is enabled.
  /// [diskLunId] The source lun Id for the data disk.
  A2AUnprotectedDiskDetails({
    this.diskAutoProtectionStatus,
    this.diskLunId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskAutoProtectionStatus': ?diskAutoProtectionStatus,
      'diskLunId': ?diskLunId,
    };
  }

  factory A2AUnprotectedDiskDetails.fromMap(Map<String, dynamic> map) {
    return A2AUnprotectedDiskDetails(
      diskAutoProtectionStatus: map['diskAutoProtectionStatus'] == null ? null : map['diskAutoProtectionStatus'] as String,
      diskLunId: map['diskLunId'] == null ? null : map['diskLunId'] as int,
    );
  }
}

