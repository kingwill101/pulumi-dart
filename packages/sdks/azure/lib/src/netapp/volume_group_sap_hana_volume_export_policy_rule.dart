// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupSapHanaVolumeExportPolicyRule {
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

  /// Creates a new [VolumeGroupSapHanaVolumeExportPolicyRule].
  /// [allowedClients] A comma-sperated list of allowed client IPv4 addresses.
  /// [nfsv3Enabled] Enables NFSv3. Please note that this cannot be enabled if volume has NFSv4.1 as its protocol.
  /// [nfsv41Enabled] Enables NFSv4.1. Please note that this cannot be enabled if volume has NFSv3 as its protocol.
  /// [rootAccessEnabled] Is root access permitted to this volume? Defaults to `true`.
  /// [ruleIndex] The index number of the rule, must start at 1 and maximum 5.
  /// [unixReadOnly] Is the file system on unix read only? Defaults to `false.
  /// [unixReadWrite] Is the file system on unix read and write? Defaults to `true`.
  const VolumeGroupSapHanaVolumeExportPolicyRule({
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

  factory VolumeGroupSapHanaVolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return VolumeGroupSapHanaVolumeExportPolicyRule(
      allowedClients: pulumi.Input.fromValue(map['allowedClients'] as String),
      nfsv3Enabled: pulumi.Input.fromValue(map['nfsv3Enabled'] as bool),
      nfsv41Enabled: pulumi.Input.fromValue(map['nfsv41Enabled'] as bool),
      rootAccessEnabled: (() { final guardedValue = map['rootAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleIndex: pulumi.Input.fromValue(map['ruleIndex'] as int),
      unixReadOnly: (() { final guardedValue = map['unixReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unixReadWrite: (() { final guardedValue = map['unixReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
