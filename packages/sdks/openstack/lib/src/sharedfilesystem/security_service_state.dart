// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityService resources.
class SecurityServiceState {
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
  /// The owner of the Security Service.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to create a security service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// security service.
  final pulumi.Input<String>? region;
  /// The security service host name or IP address.
  final pulumi.Input<String>? server;
  /// The security service type - can either be active\_directory,
  /// kerberos or ldap.  Changing this updates the existing security service.
  final pulumi.Input<String>? type;
  /// The security service user or group name that is used by the
  /// tenant.
  final pulumi.Input<String>? user;

  /// Creates a new [SecurityServiceState].
  /// [description] The human-readable description for the security service.
  /// [dnsIp] The security service DNS IP address that is used inside the
  /// [domain] The security service domain.
  /// [name] The name of the security service. Changing this updates the name
  /// [ou] The security service ou. An organizational unit can be added to
  /// [password] The user password, if you specify a user.
  /// [projectId] The owner of the Security Service.
  /// [region] The region in which to obtain the V2 Shared File System client.
  /// [server] The security service host name or IP address.
  /// [type] The security service type - can either be active\_directory,
  /// [user] The security service user or group name that is used by the
  SecurityServiceState({
    this.description,
    this.dnsIp,
    this.domain,
    this.name,
    this.ou,
    this.password,
    this.projectId,
    this.region,
    this.server,
    this.type,
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
      'projectId': ?projectId,
      'region': ?region,
      'server': ?server,
      'type': ?type,
      'user': ?user,
    };
  }

  factory SecurityServiceState.fromMap(Map<String, dynamic> map) {
    return SecurityServiceState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsIp: (() { final guardedValue = map['dnsIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ou: (() { final guardedValue = map['ou']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

