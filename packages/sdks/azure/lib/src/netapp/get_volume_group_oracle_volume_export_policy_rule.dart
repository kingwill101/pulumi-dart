// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeGroupOracleVolumeExportPolicyRule {
  /// A list of allowed clients IPv4 addresses.
  final pulumi.Input<String> allowedClients;
  /// Is the NFSv3 protocol enabled?
  final pulumi.Input<bool> nfsv3Enabled;
  /// Is the NFSv4.1 enabled?
  final pulumi.Input<bool> nfsv41Enabled;
  /// Is root access permitted to this volume?
  final pulumi.Input<bool> rootAccessEnabled;
  /// The index number of the rule.
  final pulumi.Input<int> ruleIndex;
  /// Is the file system on unix read only?.
  final pulumi.Input<bool> unixReadOnly;
  /// Is the file system on unix read and write?.
  final pulumi.Input<bool> unixReadWrite;

  /// Creates a new [GetVolumeGroupOracleVolumeExportPolicyRule].
  /// [allowedClients] A list of allowed clients IPv4 addresses.
  /// [nfsv3Enabled] Is the NFSv3 protocol enabled?
  /// [nfsv41Enabled] Is the NFSv4.1 enabled?
  /// [rootAccessEnabled] Is root access permitted to this volume?
  /// [ruleIndex] The index number of the rule.
  /// [unixReadOnly] Is the file system on unix read only?.
  /// [unixReadWrite] Is the file system on unix read and write?.
  const GetVolumeGroupOracleVolumeExportPolicyRule({
    required this.allowedClients,
    required this.nfsv3Enabled,
    required this.nfsv41Enabled,
    required this.rootAccessEnabled,
    required this.ruleIndex,
    required this.unixReadOnly,
    required this.unixReadWrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': allowedClients,
      'nfsv3Enabled': nfsv3Enabled,
      'nfsv41Enabled': nfsv41Enabled,
      'rootAccessEnabled': rootAccessEnabled,
      'ruleIndex': ruleIndex,
      'unixReadOnly': unixReadOnly,
      'unixReadWrite': unixReadWrite,
    };
  }

  factory GetVolumeGroupOracleVolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupOracleVolumeExportPolicyRule(
      allowedClients: pulumi.Input.fromValue(map['allowedClients'] as String),
      nfsv3Enabled: pulumi.Input.fromValue(map['nfsv3Enabled'] as bool),
      nfsv41Enabled: pulumi.Input.fromValue(map['nfsv41Enabled'] as bool),
      rootAccessEnabled: pulumi.Input.fromValue(map['rootAccessEnabled'] as bool),
      ruleIndex: pulumi.Input.fromValue((map['ruleIndex'] as num).toInt()),
      unixReadOnly: pulumi.Input.fromValue(map['unixReadOnly'] as bool),
      unixReadWrite: pulumi.Input.fromValue(map['unixReadWrite'] as bool),
    );
  }
}
