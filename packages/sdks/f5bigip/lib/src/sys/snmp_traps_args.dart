// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_snmp_traps_snmp_traps_args_doc}
/// The set of arguments for SnmpTraps.
/// {@endtemplate}
/// {@macro pulumi_sys_snmp_traps_snmp_traps_args_doc}
class SnmpTrapsArgs {
  /// Encrypted password
  final pulumi.Input<String>? authPasswordencrypted;
  /// Specifies the protocol used to authenticate the user.
  final pulumi.Input<String>? authProtocol;
  /// Specifies the community string used for this trap.
  final pulumi.Input<String>? community;
  /// The port that the trap will be sent to.
  final pulumi.Input<String>? description;
  /// Specifies the authoritative security engine for SNMPv3.
  final pulumi.Input<String>? engineId;
  /// The host the trap will be sent to.
  final pulumi.Input<String>? host;
  /// Name of the snmp trap.
  final pulumi.Input<String>? name;
  /// User defined description.
  final pulumi.Input<int>? port;
  /// Specifies the clear text password used to encrypt traffic. This field will not be displayed.
  final pulumi.Input<String>? privacyPassword;
  /// Specifies the encrypted password used to encrypt traffic.
  final pulumi.Input<String>? privacyPasswordEncrypted;
  /// Specifies the protocol used to encrypt traffic.
  final pulumi.Input<String>? privacyProtocol;
  /// Specifies whether or not traffic is encrypted and whether or not authentication is required.
  final pulumi.Input<String>? securityLevel;
  /// Security name used in conjunction with SNMPv3.
  final pulumi.Input<String>? securityName;
  /// SNMP version used for sending the trap.
  final pulumi.Input<String>? version;

  /// Creates a new [SnmpTrapsArgs].
  /// [authPasswordencrypted] Encrypted password
  /// [authProtocol] Specifies the protocol used to authenticate the user.
  /// [community] Specifies the community string used for this trap.
  /// [description] The port that the trap will be sent to.
  /// [engineId] Specifies the authoritative security engine for SNMPv3.
  /// [host] The host the trap will be sent to.
  /// [name] Name of the snmp trap.
  /// [port] User defined description.
  /// [privacyPassword] Specifies the clear text password used to encrypt traffic. This field will not be displayed.
  /// [privacyPasswordEncrypted] Specifies the encrypted password used to encrypt traffic.
  /// [privacyProtocol] Specifies the protocol used to encrypt traffic.
  /// [securityLevel] Specifies whether or not traffic is encrypted and whether or not authentication is required.
  /// [securityName] Security name used in conjunction with SNMPv3.
  /// [version] SNMP version used for sending the trap.
  SnmpTrapsArgs({
    pulumi.Output<String>? authPasswordencrypted,
    pulumi.Output<String>? authProtocol,
    pulumi.Output<String>? community,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engineId,
    pulumi.Output<String>? host,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    pulumi.Output<String>? privacyPassword,
    pulumi.Output<String>? privacyPasswordEncrypted,
    pulumi.Output<String>? privacyProtocol,
    pulumi.Output<String>? securityLevel,
    pulumi.Output<String>? securityName,
    pulumi.Output<String>? version,
  }) :
      authPasswordencrypted = pulumi.Input.asOptionalInput<String>(authPasswordencrypted),
      authProtocol = pulumi.Input.asOptionalInput<String>(authProtocol),
      community = pulumi.Input.asOptionalInput<String>(community),
      description = pulumi.Input.asOptionalInput<String>(description),
      engineId = pulumi.Input.asOptionalInput<String>(engineId),
      host = pulumi.Input.asOptionalInput<String>(host),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      privacyPassword = pulumi.Input.asOptionalInput<String>(privacyPassword),
      privacyPasswordEncrypted = pulumi.Input.asOptionalInput<String>(privacyPasswordEncrypted),
      privacyProtocol = pulumi.Input.asOptionalInput<String>(privacyProtocol),
      securityLevel = pulumi.Input.asOptionalInput<String>(securityLevel),
      securityName = pulumi.Input.asOptionalInput<String>(securityName),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authPasswordencrypted': ?authPasswordencrypted,
      'authProtocol': ?authProtocol,
      'community': ?community,
      'description': ?description,
      'engineId': ?engineId,
      'host': ?host,
      'name': ?name,
      'port': ?port,
      'privacyPassword': ?privacyPassword,
      'privacyPasswordEncrypted': ?privacyPasswordEncrypted,
      'privacyProtocol': ?privacyProtocol,
      'securityLevel': ?securityLevel,
      'securityName': ?securityName,
      'version': ?version,
    };
  }

  factory SnmpTrapsArgs.fromMap(Map<String, dynamic> map) {
    return SnmpTrapsArgs(
      authPasswordencrypted: map['authPasswordencrypted'] == null ? null : pulumi.Output.create<String>(map['authPasswordencrypted'] as String),
      authProtocol: map['authProtocol'] == null ? null : pulumi.Output.create<String>(map['authProtocol'] as String),
      community: map['community'] == null ? null : pulumi.Output.create<String>(map['community'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engineId: map['engineId'] == null ? null : pulumi.Output.create<String>(map['engineId'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      privacyPassword: map['privacyPassword'] == null ? null : pulumi.Output.create<String>(map['privacyPassword'] as String),
      privacyPasswordEncrypted: map['privacyPasswordEncrypted'] == null ? null : pulumi.Output.create<String>(map['privacyPasswordEncrypted'] as String),
      privacyProtocol: map['privacyProtocol'] == null ? null : pulumi.Output.create<String>(map['privacyProtocol'] as String),
      securityLevel: map['securityLevel'] == null ? null : pulumi.Output.create<String>(map['securityLevel'] as String),
      securityName: map['securityName'] == null ? null : pulumi.Output.create<String>(map['securityName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

