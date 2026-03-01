// ignore_for_file: unused_element, unnecessary_cast


/// MasterProfile represents a master profile.
class MasterProfile {
  /// The resource ID of an associated DiskEncryptionSet, if applicable.
  final String? diskEncryptionSetId;
  /// Whether master virtual machines are encrypted at host.
  final String? encryptionAtHost;
  /// The Azure resource ID of the master subnet.
  final String? subnetId;
  /// The size of the master VMs.
  final String? vmSize;

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
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      encryptionAtHost: map['encryptionAtHost'] == null ? null : map['encryptionAtHost'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

