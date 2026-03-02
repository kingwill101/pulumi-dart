// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeExportPolicyRule {
  /// A list of allowed clients IPv4 addresses.
  final pulumi.Input<List<String>> allowedClients;
  /// Is Kerberos 5 read-only access permitted to this volume?
  final pulumi.Input<bool>? kerberos5ReadOnlyEnabled;
  /// Is Kerberos 5 read/write permitted to this volume?
  final pulumi.Input<bool>? kerberos5ReadWriteEnabled;
  /// Is Kerberos 5i read-only permitted to this volume?
  final pulumi.Input<bool>? kerberos5iReadOnlyEnabled;
  /// Is Kerberos 5i read/write permitted to this volume?
  final pulumi.Input<bool>? kerberos5iReadWriteEnabled;
  /// Is Kerberos 5p read-only permitted to this volume?
  final pulumi.Input<bool>? kerberos5pReadOnlyEnabled;
  /// Is Kerberos 5p read/write permitted to this volume?
  final pulumi.Input<bool>? kerberos5pReadWriteEnabled;
  /// A list of allowed protocols. Valid values include `CIFS`, `NFSv3`, or `NFSv4.1`. Only a single element is supported at this time. This replaces the previous arguments: `cifs_enabled`, `nfsv3_enabled` and `nfsv4_enabled`.
  final pulumi.Input<String>? protocol;
  final pulumi.Input<String>? protocolsEnabled;
  /// Is root access permitted to this volume?
  final pulumi.Input<bool>? rootAccessEnabled;
  /// The index number of the rule.
  final pulumi.Input<int> ruleIndex;
  /// Is the file system on unix read only?
  final pulumi.Input<bool>? unixReadOnly;
  /// Is the file system on unix read and write?
  final pulumi.Input<bool>? unixReadWrite;

  /// Creates a new [VolumeExportPolicyRule].
  /// [allowedClients] A list of allowed clients IPv4 addresses.
  /// [kerberos5ReadOnlyEnabled] Is Kerberos 5 read-only access permitted to this volume?
  /// [kerberos5ReadWriteEnabled] Is Kerberos 5 read/write permitted to this volume?
  /// [kerberos5iReadOnlyEnabled] Is Kerberos 5i read-only permitted to this volume?
  /// [kerberos5iReadWriteEnabled] Is Kerberos 5i read/write permitted to this volume?
  /// [kerberos5pReadOnlyEnabled] Is Kerberos 5p read-only permitted to this volume?
  /// [kerberos5pReadWriteEnabled] Is Kerberos 5p read/write permitted to this volume?
  /// [protocol] A list of allowed protocols. Valid values include `CIFS`, `NFSv3`, or `NFSv4.1`. Only a single element is supported at this time. This replaces the previous arguments: `cifs_enabled`, `nfsv3_enabled` and `nfsv4_enabled`.
  /// [protocolsEnabled] Optional.
  /// [rootAccessEnabled] Is root access permitted to this volume?
  /// [ruleIndex] The index number of the rule.
  /// [unixReadOnly] Is the file system on unix read only?
  /// [unixReadWrite] Is the file system on unix read and write?
  VolumeExportPolicyRule({
    required this.allowedClients,
    this.kerberos5ReadOnlyEnabled,
    this.kerberos5ReadWriteEnabled,
    this.kerberos5iReadOnlyEnabled,
    this.kerberos5iReadWriteEnabled,
    this.kerberos5pReadOnlyEnabled,
    this.kerberos5pReadWriteEnabled,
    this.protocol,
    this.protocolsEnabled,
    this.rootAccessEnabled,
    required this.ruleIndex,
    this.unixReadOnly,
    this.unixReadWrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': allowedClients,
      'kerberos5ReadOnlyEnabled': ?kerberos5ReadOnlyEnabled,
      'kerberos5ReadWriteEnabled': ?kerberos5ReadWriteEnabled,
      'kerberos5iReadOnlyEnabled': ?kerberos5iReadOnlyEnabled,
      'kerberos5iReadWriteEnabled': ?kerberos5iReadWriteEnabled,
      'kerberos5pReadOnlyEnabled': ?kerberos5pReadOnlyEnabled,
      'kerberos5pReadWriteEnabled': ?kerberos5pReadWriteEnabled,
      'protocol': ?protocol,
      'protocolsEnabled': ?protocolsEnabled,
      'rootAccessEnabled': ?rootAccessEnabled,
      'ruleIndex': ruleIndex,
      'unixReadOnly': ?unixReadOnly,
      'unixReadWrite': ?unixReadWrite,
    };
  }

  factory VolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return VolumeExportPolicyRule(
      allowedClients: ((map['allowedClients'] as List).cast<String>()).input(),
      kerberos5ReadOnlyEnabled: map['kerberos5ReadOnlyEnabled'] == null ? null : (map['kerberos5ReadOnlyEnabled'] as bool).input(),
      kerberos5ReadWriteEnabled: map['kerberos5ReadWriteEnabled'] == null ? null : (map['kerberos5ReadWriteEnabled'] as bool).input(),
      kerberos5iReadOnlyEnabled: map['kerberos5iReadOnlyEnabled'] == null ? null : (map['kerberos5iReadOnlyEnabled'] as bool).input(),
      kerberos5iReadWriteEnabled: map['kerberos5iReadWriteEnabled'] == null ? null : (map['kerberos5iReadWriteEnabled'] as bool).input(),
      kerberos5pReadOnlyEnabled: map['kerberos5pReadOnlyEnabled'] == null ? null : (map['kerberos5pReadOnlyEnabled'] as bool).input(),
      kerberos5pReadWriteEnabled: map['kerberos5pReadWriteEnabled'] == null ? null : (map['kerberos5pReadWriteEnabled'] as bool).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      protocolsEnabled: map['protocolsEnabled'] == null ? null : (map['protocolsEnabled'] as String).input(),
      rootAccessEnabled: map['rootAccessEnabled'] == null ? null : (map['rootAccessEnabled'] as bool).input(),
      ruleIndex: (map['ruleIndex'] as int).input(),
      unixReadOnly: map['unixReadOnly'] == null ? null : (map['unixReadOnly'] as bool).input(),
      unixReadWrite: map['unixReadWrite'] == null ? null : (map['unixReadWrite'] as bool).input(),
    );
  }
}

