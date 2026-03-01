// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceIdentity resources.
class ServiceIdentityState {
  /// The email address of the Google managed service account.
  final pulumi.Input<String>? email;
  /// The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  final pulumi.Input<String>? member;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The service to generate identity for.
  ///
  /// - - -
  final pulumi.Input<String>? service;

  /// Creates a new [ServiceIdentityState].
  /// [email] The email address of the Google managed service account.
  /// [member] The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The service to generate identity for.
  ServiceIdentityState({
    pulumi.Output<String>? email,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? service,
  }) :
      email = pulumi.Input.asOptionalInput<String>(email),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asOptionalInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'member': ?member,
      'project': ?project,
      'service': ?service,
    };
  }

  factory ServiceIdentityState.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityState(
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

