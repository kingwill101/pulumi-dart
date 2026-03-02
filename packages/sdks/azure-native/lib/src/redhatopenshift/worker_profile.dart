// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkerProfile represents a worker profile.
class WorkerProfile {
  /// The number of worker VMs.
  final pulumi.Input<int>? count;
  /// The resource ID of an associated DiskEncryptionSet, if applicable.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The disk size of the worker VMs.
  final pulumi.Input<int>? diskSizeGB;
  /// Whether master virtual machines are encrypted at host.
  final pulumi.Input<String>? encryptionAtHost;
  /// The worker profile name.
  final pulumi.Input<String>? name;
  /// The Azure resource ID of the worker subnet.
  final pulumi.Input<String>? subnetId;
  /// The size of the worker VMs.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [WorkerProfile].
  /// [count] The number of worker VMs.
  /// [diskEncryptionSetId] The resource ID of an associated DiskEncryptionSet, if applicable.
  /// [diskSizeGB] The disk size of the worker VMs.
  /// [encryptionAtHost] Whether master virtual machines are encrypted at host.
  /// [name] The worker profile name.
  /// [subnetId] The Azure resource ID of the worker subnet.
  /// [vmSize] The size of the worker VMs.
  WorkerProfile({
    this.count,
    this.diskEncryptionSetId,
    this.diskSizeGB,
    this.encryptionAtHost,
    this.name,
    this.subnetId,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGB': ?diskSizeGB,
      'encryptionAtHost': ?encryptionAtHost,
      'name': ?name,
      'subnetId': ?subnetId,
      'vmSize': ?vmSize,
    };
  }

  factory WorkerProfile.fromMap(Map<String, dynamic> map) {
    return WorkerProfile(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId'] as String).input(),
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB'] as int).input(),
      encryptionAtHost: map['encryptionAtHost'] == null ? null : (map['encryptionAtHost'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize'] as String).input(),
    );
  }
}

