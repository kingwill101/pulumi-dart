// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_error.dart';
import 'ai_evaluation_item_evaluation_request.dart';
import 'ai_evaluation_item_evaluation_response.dart';

/// Input properties used for looking up and filtering AiEvaluationItem resources.
class AiEvaluationItemState {
  /// Timestamp when this EvaluationItem was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-friendly display name for the EvaluationItem.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// (Output)
  /// Error while evaluating the candidate for the metric.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemError>?>? errors;
  /// The type of the EvaluationItem.
  /// Possible values are: `REQUEST`, `RESULT`.
  final pulumi.Input<String?>? evaluationItemType;
  /// The request to evaluate.
  /// Exactly one of `evaluationRequest` or `gcsUri` can be set.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequest?>? evaluationRequest;
  /// The response from evaluation.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemEvaluationResponse>?>? evaluationResponses;
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
  /// The short name of the EvaluationItem (the final component of the resource name).
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The region of the EvaluationItem. eg us-central1
  final pulumi.Input<String?>? region;

  /// Creates a new [AiEvaluationItemState].
  /// [createTime] Timestamp when this EvaluationItem was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-friendly display name for the EvaluationItem.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] (Output)
  /// [evaluationItemType] The type of the EvaluationItem.
  /// [evaluationRequest] The request to evaluate.
  /// [evaluationResponses] The response from evaluation.
  /// [gcsUri] The Cloud Storage object where the request or response is stored.
  /// [labels] Labels for the EvaluationItem.
  /// [metadata] User-defined metadata for this evaluation item as a JSON string.
  /// [name] The short name of the EvaluationItem (the final component of the resource name).
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the EvaluationItem. eg us-central1
  const AiEvaluationItemState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.errors,
    this.evaluationItemType,
    this.evaluationRequest,
    this.evaluationResponses,
    this.gcsUri,
    this.labels,
    this.metadata,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiEvaluationItemError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluationItemType': ?evaluationItemType,
      'evaluationRequest': ?pulumi.Input.mapOptionalInputValue<AiEvaluationItemEvaluationRequest, Map<String, dynamic>>(evaluationRequest, (value) => value.toMap()),
      'evaluationResponses': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationResponse>, List<Map<String, dynamic>>>(evaluationResponses, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcsUri': ?gcsUri,
      'labels': ?labels,
      'metadata': ?metadata,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
    };
  }

  factory AiEvaluationItemState.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemError>(guardedValue, (value) => AiEvaluationItemError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      evaluationItemType: (() { final guardedValue = map['evaluationItemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationRequest: (() { final guardedValue = map['evaluationRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationItemEvaluationRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evaluationResponses: (() { final guardedValue = map['evaluationResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationResponse>(guardedValue, (value) => AiEvaluationItemEvaluationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gcsUri: (() { final guardedValue = map['gcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
