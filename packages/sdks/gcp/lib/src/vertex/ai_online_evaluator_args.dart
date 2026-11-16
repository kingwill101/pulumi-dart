// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_cloud_observability.dart';
import 'ai_online_evaluator_config.dart';
import 'ai_online_evaluator_metric_source.dart';

/// {@template pulumi_vertex_ai_online_evaluator_ai_online_evaluator_args_doc}
/// The set of arguments for AiOnlineEvaluator.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_online_evaluator_ai_online_evaluator_args_doc}
class AiOnlineEvaluatorArgs {
  /// The name of the agent that the OnlineEvaluator evaluates periodically.
  /// This value is used to filter the traces with a matching cloud.resource_id
  /// and link the evaluation results with relevant dashboards/UIs. This field
  /// is immutable; once set, it cannot be changed.
  final pulumi.Input<String> agentResource;
  /// Data source for the OnlineEvaluator, based on the Google Cloud
  /// Observability stack (Cloud Trace & Cloud Logging). The data source type is
  /// immutable once set. Within `cloudObservability`, `logView` and
  /// `traceView` can be updated; the eval scope (`traceScope` /
  /// `sessionScope`) and the convention (`openTelemetry`) are immutable.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservability> cloudObservability;
  /// Configuration for sampling behavior of the OnlineEvaluator. The
  /// OnlineEvaluator runs at a fixed interval of 10 minutes.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorConfig> config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable name for the OnlineEvaluator. The name doesn't have to be
  /// unique. The name can consist of any UTF-8 characters. The maximum length
  /// is 63 characters.
  final pulumi.Input<String?>? displayName;
  /// A list of metric sources to be used for evaluating samples. At least one
  /// metric source must be provided. Only predefined metrics (inline `metric`)
  /// and registered metrics (`metricResourceName`) are supported. Every
  /// registered metric must have a `displayName` (or `title`) and a
  /// `scoreRange` defined, otherwise the evaluations will fail. The maximum
  /// number of metric sources is 25. Exactly one of `metric` or
  /// `metricResourceName` must be set per metric source.
  /// Structure is documented below.
  final pulumi.Input<List<AiOnlineEvaluatorMetricSource>> metricSources;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the OnlineEvaluator (e.g. us-central1). If unset, the provider's region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [AiOnlineEvaluatorArgs].
  /// [agentResource] The name of the agent that the OnlineEvaluator evaluates periodically.
  /// [cloudObservability] Data source for the OnlineEvaluator, based on the Google Cloud
  /// [config] Configuration for sampling behavior of the OnlineEvaluator. The
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name for the OnlineEvaluator. The name doesn't have to be
  /// [metricSources] A list of metric sources to be used for evaluating samples. At least one
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the OnlineEvaluator (e.g. us-central1). If unset, the provider's region is used.
  const AiOnlineEvaluatorArgs({
    required this.agentResource,
    required this.cloudObservability,
    required this.config,
    this.deletionPolicy,
    this.displayName,
    required this.metricSources,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentResource': agentResource,
      'cloudObservability': pulumi.Input.mapInputValue<AiOnlineEvaluatorCloudObservability, Map<String, dynamic>>(cloudObservability, (value) => value.toMap()),
      'config': pulumi.Input.mapInputValue<AiOnlineEvaluatorConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'metricSources': pulumi.Input.mapInputValue<List<AiOnlineEvaluatorMetricSource>, List<Map<String, dynamic>>>(metricSources, (value) => pulumi.Input.encodeList<AiOnlineEvaluatorMetricSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiOnlineEvaluatorArgs.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorArgs(
      agentResource: pulumi.Input.fromValue(map['agentResource'] as String),
      cloudObservability: pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservability.fromMap((map['cloudObservability']! as Map).cast<String, dynamic>())),
      config: pulumi.Input.fromValue(AiOnlineEvaluatorConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricSources: pulumi.Input.fromValue(pulumi.Input.decodeList<AiOnlineEvaluatorMetricSource>(map['metricSources']!, (value) => AiOnlineEvaluatorMetricSource.fromMap((value as Map).cast<String, dynamic>()))),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
