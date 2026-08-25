// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceIdentity resources.
class ServiceIdentityState {
  /// The email address of the Google managed service account.
  final pulumi.Input<String?>? email;
  /// The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  final pulumi.Input<String?>? member;
  /// The organization in which the resource belongs.
  final pulumi.Input<String?>? organization;
  /// The service to generate identity for.
  ///
  /// - - -
  final pulumi.Input<String?>? service;

  /// Creates a new [ServiceIdentityState].
  /// [email] The email address of the Google managed service account.
  /// [member] The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [organization] The organization in which the resource belongs.
  /// [service] The service to generate identity for.
  const ServiceIdentityState({
    this.email,
    this.member,
    this.organization,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'member': ?member,
      'organization': ?organization,
      'service': ?service,
    };
  }

  factory ServiceIdentityState.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityState(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
