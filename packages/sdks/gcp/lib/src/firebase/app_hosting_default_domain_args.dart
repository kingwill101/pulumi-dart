// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_hosting_default_domain_app_hosting_default_domain_args_doc}
/// The set of arguments for AppHostingDefaultDomain.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_hosting_default_domain_app_hosting_default_domain_args_doc}
class AppHostingDefaultDomainArgs {
  /// The ID of the Backend that this Domain is associated with
  final pulumi.Input<String> backend;
  /// Whether the domain is disabled. Defaults to false.
  final pulumi.Input<bool>? disabled;
  /// Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  final pulumi.Input<String> domainId;
  /// The location of the Backend that this Domain is associated with
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AppHostingDefaultDomainArgs].
  /// [backend] The ID of the Backend that this Domain is associated with
  /// [disabled] Whether the domain is disabled. Defaults to false.
  /// [domainId] Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  /// [location] The location of the Backend that this Domain is associated with
  /// [project] The ID of the project in which the resource belongs.
  const AppHostingDefaultDomainArgs({
    required this.backend,
    this.disabled,
    required this.domainId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': backend,
      'disabled': ?disabled,
      'domainId': domainId,
      'location': location,
      'project': ?project,
    };
  }

  factory AppHostingDefaultDomainArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingDefaultDomainArgs(
      backend: pulumi.Input.fromValue(map['backend'] as String),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

