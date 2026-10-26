// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_case_close_definition_case_close_definition_args_doc}
/// The set of arguments for CaseCloseDefinition.
/// {@endtemplate}
/// {@macro pulumi_chronicle_case_close_definition_case_close_definition_args_doc}
class CaseCloseDefinitionArgs {
  /// Specify why the case was closed.
  /// Possible values are: `MALICIOUS`, `NOT_MALICIOUS`, `MAINTENANCE`, `INCONCLUSIVE`.
  final pulumi.Input<String> closeReason;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Provides detailed description about the specific root cause option.
  final pulumi.Input<String> rootCause;

  /// Creates a new [CaseCloseDefinitionArgs].
  /// [closeReason] Specify why the case was closed.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [project] The ID of the project in which the resource belongs.
  /// [rootCause] Provides detailed description about the specific root cause option.
  const CaseCloseDefinitionArgs({
    required this.closeReason,
    this.deletionPolicy,
    required this.instance,
    required this.location,
    this.project,
    required this.rootCause,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'closeReason': closeReason,
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'location': location,
      'project': ?project,
      'rootCause': rootCause,
    };
  }

  factory CaseCloseDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return CaseCloseDefinitionArgs(
      closeReason: pulumi.Input.fromValue(map['closeReason'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootCause: pulumi.Input.fromValue(map['rootCause'] as String),
    );
  }
}
