// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_security_service_security_service_args_doc}
/// The set of arguments for SecurityService.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_security_service_security_service_args_doc}
class SecurityServiceArgs {
  /// The human-readable description for the security service.
  /// Changing this updates the description of the existing security service.
  final pulumi.Input<String>? description;
  /// The security service DNS IP address that is used inside the
  /// tenant network.
  final pulumi.Input<String>? dnsIp;
  /// The security service domain.
  final pulumi.Input<String>? domain;
  /// The name of the security service. Changing this updates the name
  /// of the existing security service.
  final pulumi.Input<String>? name;
  /// The security service ou. An organizational unit can be added to
  /// specify where the share ends up. New in Manila microversion 2.44.
  final pulumi.Input<String>? ou;
  /// The user password, if you specify a user.
  final pulumi.Input<String>? password;
  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to create a security service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// security service.
  final pulumi.Input<String>? region;
  /// The security service host name or IP address.
  final pulumi.Input<String>? server;
  /// The security service type - can either be active\_directory,
  /// kerberos or ldap.  Changing this updates the existing security service.
  final pulumi.Input<String> type;
  /// The security service user or group name that is used by the
  /// tenant.
  final pulumi.Input<String>? user;

  /// Creates a new [SecurityServiceArgs].
  /// [description] The human-readable description for the security service.
  /// [dnsIp] The security service DNS IP address that is used inside the
  /// [domain] The security service domain.
  /// [name] The name of the security service. Changing this updates the name
  /// [ou] The security service ou. An organizational unit can be added to
  /// [password] The user password, if you specify a user.
  /// [region] The region in which to obtain the V2 Shared File System client.
  /// [server] The security service host name or IP address.
  /// [type] The security service type - can either be active\_directory,
  /// [user] The security service user or group name that is used by the
  SecurityServiceArgs({
    this.description,
    this.dnsIp,
    this.domain,
    this.name,
    this.ou,
    this.password,
    this.region,
    this.server,
    required this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dnsIp': ?dnsIp,
      'domain': ?domain,
      'name': ?name,
      'ou': ?ou,
      'password': ?password,
      'region': ?region,
      'server': ?server,
      'type': type,
      'user': ?user,
    };
  }

  factory SecurityServiceArgs.fromMap(Map<String, dynamic> map) {
    return SecurityServiceArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dnsIp: map['dnsIp'] == null ? null : (map['dnsIp'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ou: map['ou'] == null ? null : (map['ou'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      server: map['server'] == null ? null : (map['server'] as String).input(),
      type: (map['type'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

