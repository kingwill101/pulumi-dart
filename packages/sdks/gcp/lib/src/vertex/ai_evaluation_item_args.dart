// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_request.dart';

/// {@template pulumi_vertex_ai_evaluation_item_ai_evaluation_item_args_doc}
/// The set of arguments for AiEvaluationItem.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_evaluation_item_ai_evaluation_item_args_doc}
class AiEvaluationItemArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-friendly display name for the EvaluationItem.
  final pulumi.Input<String> displayName;
  /// The type of the EvaluationItem.
  /// Possible values are: `REQUEST`, `RESULT`.
  final pulumi.Input<String> evaluationItemType;
  /// The request to evaluate.
  /// Exactly one of `evaluationRequest` or `gcsUri` can be set.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequest?>? evaluationRequest;
  /// The Cloud Storage object where the request or response is stored.
  /// Exactly one of `evaluationRequest` or `gcsUri` can be set.
  final pulumi.Input<String?>? gcsUri;
  /// Labels for the EvaluationItem.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// User-defined metadata for this evaluation item as a JSON string.
  final pulumi.Input<String?>? metadata;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the EvaluationItem. eg us-central1
  final pulumi.Input<String> region;

  /// Creates a new [AiEvaluationItemArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-friendly display name for the EvaluationItem.
  /// [evaluationItemType] The type of the EvaluationItem.
  /// [evaluationRequest] The request to evaluate.
  /// [gcsUri] The Cloud Storage object where the request or response is stored.
  /// [labels] Labels for the EvaluationItem.
  /// [metadata] User-defined metadata for this evaluation item as a JSON string.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the EvaluationItem. eg us-central1
  const AiEvaluationItemArgs({
    this.deletionPolicy,
    required this.displayName,
    required this.evaluationItemType,
    this.evaluationRequest,
    this.gcsUri,
    this.labels,
    this.metadata,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'evaluationItemType': evaluationItemType,
      'evaluationRequest': ?pulumi.Input.mapOptionalInputValue<AiEvaluationItemEvaluationRequest, Map<String, dynamic>>(evaluationRequest, (value) => value.toMap()),
      'gcsUri': ?gcsUri,
      'labels': ?labels,
      'metadata': ?metadata,
      'project': ?project,
      'region': region,
    };
  }

  factory AiEvaluationItemArgs.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      evaluationItemType: pulumi.Input.fromValue(map['evaluationItemType'] as String),
      evaluationRequest: (() { final guardedValue = map['evaluationRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationItemEvaluationRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsUri: (() { final guardedValue = map['gcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
