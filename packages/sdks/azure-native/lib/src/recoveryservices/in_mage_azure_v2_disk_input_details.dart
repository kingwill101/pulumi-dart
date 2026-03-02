// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk input details.
class InMageAzureV2DiskInputDetails {
  /// The DiskEncryptionSet ARM ID.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The DiskId.
  final pulumi.Input<String>? diskId;
  /// The disk type.
  final pulumi.Input<String>? diskType;
  /// The LogStorageAccountId.
  final pulumi.Input<String>? logStorageAccountId;

  /// Creates a new [InMageAzureV2DiskInputDetails].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM ID.
  /// [diskId] The DiskId.
  /// [diskType] The disk type.
  /// [logStorageAccountId] The LogStorageAccountId.
  InMageAzureV2DiskInputDetails({
    this.diskEncryptionSetId,
    this.diskId,
    this.diskType,
    this.logStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': ?diskId,
      'diskType': ?diskType,
      'logStorageAccountId': ?logStorageAccountId,
    };
  }

  factory InMageAzureV2DiskInputDetails.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2DiskInputDetails(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId']! as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId']! as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      logStorageAccountId: map['logStorageAccountId'] == null ? null : (map['logStorageAccountId']! as String).input(),
    );
  }
}

