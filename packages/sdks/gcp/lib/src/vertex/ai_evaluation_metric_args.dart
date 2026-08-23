// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_metric_encryption_spec.dart';

/// {@template pulumi_vertex_ai_evaluation_metric_ai_evaluation_metric_args_doc}
/// The set of arguments for AiEvaluationMetric.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_evaluation_metric_ai_evaluation_metric_args_doc}
class AiEvaluationMetricArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A description of the EvaluationMetric.
  final pulumi.Input<String>? description;
  /// The user-friendly display name for the EvaluationMetric.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for this EvaluationMetric. If set,
  /// this EvaluationMetric will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationMetricEncryptionSpec>? encryptionSpec;
  /// The ID to use for the EvaluationMetric, which will become the final
  /// component of the resource name. This value should be 1-63 characters,
  /// and valid characters are /[a-z][0-9]-/. The first character must be
  /// a lowercase letter, and the last character must be a lowercase letter
  /// or number. If not provided, the server will generate a unique ID.
  final pulumi.Input<String>? evaluationMetricId;
  /// The Google Cloud Storage URI that stores the metric specification.
  final pulumi.Input<String>? gcsUri;
  /// Labels for the EvaluationMetric.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The metric configuration as a JSON string. Uses camelCase field names
  /// to match the API format. Supports LLM-based metrics and custom code
  /// execution metrics.
  /// See the [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/Metric)
  /// for the full schema.
  final pulumi.Input<String>? metric;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the EvaluationMetric. eg us-central1
  final pulumi.Input<String> region;

  /// Creates a new [AiEvaluationMetricArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the EvaluationMetric.
  /// [displayName] The user-friendly display name for the EvaluationMetric.
  /// [encryptionSpec] Customer-managed encryption key spec for this EvaluationMetric. If set,
  /// [evaluationMetricId] The ID to use for the EvaluationMetric, which will become the final
  /// [gcsUri] The Google Cloud Storage URI that stores the metric specification.
  /// [labels] Labels for the EvaluationMetric.
  /// [metric] The metric configuration as a JSON string. Uses camelCase field names
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the EvaluationMetric. eg us-central1
  const AiEvaluationMetricArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.evaluationMetricId,
    this.gcsUri,
    this.labels,
    this.metric,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiEvaluationMetricEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'evaluationMetricId': ?evaluationMetricId,
      'gcsUri': ?gcsUri,
      'labels': ?labels,
      'metric': ?metric,
      'project': ?project,
      'region': region,
    };
  }

  factory AiEvaluationMetricArgs.fromMap(Map<String, dynamic> map) {
    return AiEvaluationMetricArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationMetricEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evaluationMetricId: (() { final guardedValue = map['evaluationMetricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsUri: (() { final guardedValue = map['gcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
