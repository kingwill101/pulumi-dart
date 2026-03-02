// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnmpTraps resources.
class SnmpTrapsState {
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

  /// Creates a new [SnmpTrapsState].
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
  SnmpTrapsState({
    this.authPasswordencrypted,
    this.authProtocol,
    this.community,
    this.description,
    this.engineId,
    this.host,
    this.name,
    this.port,
    this.privacyPassword,
    this.privacyPasswordEncrypted,
    this.privacyProtocol,
    this.securityLevel,
    this.securityName,
    this.version,
  });

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

  factory SnmpTrapsState.fromMap(Map<String, dynamic> map) {
    return SnmpTrapsState(
      authPasswordencrypted: map['authPasswordencrypted'] == null ? null : (map['authPasswordencrypted'] as String).input(),
      authProtocol: map['authProtocol'] == null ? null : (map['authProtocol'] as String).input(),
      community: map['community'] == null ? null : (map['community'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      engineId: map['engineId'] == null ? null : (map['engineId'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      privacyPassword: map['privacyPassword'] == null ? null : (map['privacyPassword'] as String).input(),
      privacyPasswordEncrypted: map['privacyPasswordEncrypted'] == null ? null : (map['privacyPasswordEncrypted'] as String).input(),
      privacyProtocol: map['privacyProtocol'] == null ? null : (map['privacyProtocol'] as String).input(),
      securityLevel: map['securityLevel'] == null ? null : (map['securityLevel'] as String).input(),
      securityName: map['securityName'] == null ? null : (map['securityName'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

