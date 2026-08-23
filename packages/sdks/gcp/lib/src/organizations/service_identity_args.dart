// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_service_identity_service_identity_args_doc}
/// The set of arguments for ServiceIdentity.
/// {@endtemplate}
/// {@macro pulumi_organizations_service_identity_service_identity_args_doc}
class ServiceIdentityArgs {
  /// The organization in which the resource belongs.
  final pulumi.Input<String> organization;
  /// The service to generate identity for.
  ///
  /// - - -
  final pulumi.Input<String> service;

  /// Creates a new [ServiceIdentityArgs].
  /// [organization] The organization in which the resource belongs.
  /// [service] The service to generate identity for.
  const ServiceIdentityArgs({
    required this.organization,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'service': service,
    };
  }

  factory ServiceIdentityArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityArgs(
      organization: pulumi.Input.fromValue(map['organization'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
