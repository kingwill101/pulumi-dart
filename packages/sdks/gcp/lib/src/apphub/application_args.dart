// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attributes.dart';
import 'application_scope.dart';

/// {@template pulumi_apphub_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_apphub_application_application_args_doc}
class ApplicationArgs {
  /// Required. The Application identifier.
  final pulumi.Input<String> applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributes>? attributes;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. User-defined description of an Application.
  final pulumi.Input<String>? description;
  /// Optional. User-defined name for the Application.
  final pulumi.Input<String>? displayName;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Scope of an application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationScope> scope;

  /// Creates a new [ApplicationArgs].
  /// [applicationId] Required. The Application identifier.
  /// [attributes] Consumer provided attributes.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. User-defined description of an Application.
  /// [displayName] Optional. User-defined name for the Application.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] Scope of an application.
  const ApplicationArgs({
    required this.applicationId,
    this.attributes,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.location,
    this.project,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<ApplicationAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'scope': pulumi.Input.mapInputValue<ApplicationScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(ApplicationScope.fromMap((map['scope']! as Map).cast<String, dynamic>())),
    );
  }
}
