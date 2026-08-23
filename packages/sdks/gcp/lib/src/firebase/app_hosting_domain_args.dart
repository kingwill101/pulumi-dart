// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_serve.dart';

/// {@template pulumi_firebase_app_hosting_domain_app_hosting_domain_args_doc}
/// The set of arguments for AppHostingDomain.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_hosting_domain_app_hosting_domain_args_doc}
class AppHostingDomainArgs {
  /// The ID of the Backend that this Domain is associated with
  final pulumi.Input<String> backend;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Id of the domain to create.
  /// Must be a valid domain name, such as "foo.com"
  final pulumi.Input<String> domainId;
  /// The location of the Backend that this Domain is associated with
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The serving behavior of the domain. If specified, the domain will
  /// serve content other than its Backend's live content.
  /// Structure is documented below.
  final pulumi.Input<AppHostingDomainServe>? serve;

  /// Creates a new [AppHostingDomainArgs].
  /// [backend] The ID of the Backend that this Domain is associated with
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [domainId] Id of the domain to create.
  /// [location] The location of the Backend that this Domain is associated with
  /// [project] The ID of the project in which the resource belongs.
  /// [serve] The serving behavior of the domain. If specified, the domain will
  const AppHostingDomainArgs({
    required this.backend,
    this.deletionPolicy,
    required this.domainId,
    required this.location,
    this.project,
    this.serve,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': backend,
      'deletionPolicy': ?deletionPolicy,
      'domainId': domainId,
      'location': location,
      'project': ?project,
      'serve': ?pulumi.Input.mapOptionalInputValue<AppHostingDomainServe, Map<String, dynamic>>(serve, (value) => value.toMap()),
    };
  }

  factory AppHostingDomainArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainArgs(
      backend: pulumi.Input.fromValue(map['backend'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serve: (() { final guardedValue = map['serve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppHostingDomainServe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
