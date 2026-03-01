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
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsIp,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ou,
    pulumi.Output<String>? password,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? server,
    pulumi.Output<String>? type,
    pulumi.Output<String>? user,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsIp = pulumi.Input.asOptionalInput<String>(dnsIp),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      name = pulumi.Input.asOptionalInput<String>(name),
      ou = pulumi.Input.asOptionalInput<String>(ou),
      password = pulumi.Input.asOptionalInput<String>(password),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      server = pulumi.Input.asOptionalInput<String>(server),
      type = pulumi.Input.asOptionalInput<String>(type),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsIp: map['dnsIp'] == null ? null : pulumi.Output.create<String>(map['dnsIp'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ou: map['ou'] == null ? null : pulumi.Output.create<String>(map['ou'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      server: map['server'] == null ? null : pulumi.Output.create<String>(map['server'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

