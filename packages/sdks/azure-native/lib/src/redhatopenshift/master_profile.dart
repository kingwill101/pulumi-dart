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
      diskEncryptionSetId: (() {
        final guardedValue = map['diskEncryptionSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionAtHost: (() {
        final guardedValue = map['encryptionAtHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmSize: (() {
        final guardedValue = map['vmSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
