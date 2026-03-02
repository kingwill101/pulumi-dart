// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupOracleVolumeExportPolicyRule {
  /// A comma-sperated list of allowed client IPv4 addresses.
  final pulumi.Input<String> allowedClients;
  /// Enables NFSv3. Please note that this cannot be enabled if volume has NFSv4.1 as its protocol.
  final pulumi.Input<bool> nfsv3Enabled;
  /// Enables NFSv4.1. Please note that this cannot be enabled if volume has NFSv3 as its protocol.
  final pulumi.Input<bool> nfsv41Enabled;
  /// Is root access permitted to this volume? Defaults to `true`.
  final pulumi.Input<bool>? rootAccessEnabled;
  /// The index number of the rule, must start at 1 and maximum 5.
  final pulumi.Input<int> ruleIndex;
  /// Is the file system on unix read only? Defaults to `false.
  final pulumi.Input<bool>? unixReadOnly;
  /// Is the file system on unix read and write? Defaults to `true`.
  final pulumi.Input<bool>? unixReadWrite;

  /// Creates a new [VolumeGroupOracleVolumeExportPolicyRule].
  /// [allowedClients] A comma-sperated list of allowed client IPv4 addresses.
  /// [nfsv3Enabled] Enables NFSv3. Please note that this cannot be enabled if volume has NFSv4.1 as its protocol.
  /// [nfsv41Enabled] Enables NFSv4.1. Please note that this cannot be enabled if volume has NFSv3 as its protocol.
  /// [rootAccessEnabled] Is root access permitted to this volume? Defaults to `true`.
  /// [ruleIndex] The index number of the rule, must start at 1 and maximum 5.
  /// [unixReadOnly] Is the file system on unix read only? Defaults to `false.
  /// [unixReadWrite] Is the file system on unix read and write? Defaults to `true`.
  VolumeGroupOracleVolumeExportPolicyRule({
    required this.allowedClients,
    required this.nfsv3Enabled,
    required this.nfsv41Enabled,
    this.rootAccessEnabled,
    required this.ruleIndex,
    this.unixReadOnly,
    this.unixReadWrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': allowedClients,
      'nfsv3Enabled': nfsv3Enabled,
      'nfsv41Enabled': nfsv41Enabled,
      'rootAccessEnabled': ?rootAccessEnabled,
      'ruleIndex': ruleIndex,
      'unixReadOnly': ?unixReadOnly,
      'unixReadWrite': ?unixReadWrite,
    };
  }

  factory VolumeGroupOracleVolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return VolumeGroupOracleVolumeExportPolicyRule(
      allowedClients: (map['allowedClients'] as String).input(),
      nfsv3Enabled: (map['nfsv3Enabled'] as bool).input(),
      nfsv41Enabled: (map['nfsv41Enabled'] as bool).input(),
      rootAccessEnabled: map['rootAccessEnabled'] == null ? null : (map['rootAccessEnabled'] as bool).input(),
      ruleIndex: (map['ruleIndex'] as int).input(),
      unixReadOnly: map['unixReadOnly'] == null ? null : (map['unixReadOnly'] as bool).input(),
      unixReadWrite: map['unixReadWrite'] == null ? null : (map['unixReadWrite'] as bool).input(),
    );
  }
}

