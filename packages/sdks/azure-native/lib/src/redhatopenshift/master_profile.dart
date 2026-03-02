// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MasterProfile represents a master profile.
class MasterProfile {
  /// The resource ID of an associated DiskEncryptionSet, if applicable.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// Whether master virtual machines are encrypted at host.
  final pulumi.Input<String>? encryptionAtHost;
  /// The Azure resource ID of the master subnet.
  final pulumi.Input<String>? subnetId;
  /// The size of the master VMs.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [MasterProfile].
  /// [diskEncryptionSetId] The resource ID of an associated DiskEncryptionSet, if applicable.
  /// [encryptionAtHost] Whether master virtual machines are encrypted at host.
  /// [subnetId] The Azure resource ID of the master subnet.
  /// [vmSize] The size of the master VMs.
  MasterProfile({
    this.diskEncryptionSetId,
    this.encryptionAtHost,
    this.subnetId,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'encryptionAtHost': ?encryptionAtHost,
      'subnetId': ?subnetId,
      'vmSize': ?vmSize,
    };
  }

  factory MasterProfile.fromMap(Map<String, dynamic> map) {
    return MasterProfile(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId']! as String).input(),
      encryptionAtHost: map['encryptionAtHost'] == null ? null : (map['encryptionAtHost']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize']! as String).input(),
    );
  }
}

