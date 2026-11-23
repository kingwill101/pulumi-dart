// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_cloud_observability.dart';
import 'ai_online_evaluator_config.dart';
import 'ai_online_evaluator_metric_source.dart';
import 'ai_online_evaluator_state_detail.dart';

/// Input properties used for looking up and filtering AiOnlineEvaluator resources.
class AiOnlineEvaluatorState {
  /// The name of the agent that the OnlineEvaluator evaluates periodically.
  /// This value is used to filter the traces with a matching cloud.resource_id
  /// and link the evaluation results with relevant dashboards/UIs. This field
  /// is immutable; once set, it cannot be changed.
  final pulumi.Input<String?>? agentResource;
  /// Data source for the OnlineEvaluator, based on the Google Cloud
  /// Observability stack (Cloud Trace & Cloud Logging). The data source type is
  /// immutable once set. Within `cloudObservability`, `logView` and
  /// `traceView` can be updated; the eval scope (`traceScope` /
  /// `sessionScope`) and the convention (`openTelemetry`) are immutable.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservability?>? cloudObservability;
  /// Configuration for sampling behavior of the OnlineEvaluator. The
  /// OnlineEvaluator runs at a fixed interval of 10 minutes.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorConfig?>? config;
  /// Timestamp when the OnlineEvaluator was created.
  final pulumi.Input<String?>? createTime;
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
  final pulumi.Input<List<AiOnlineEvaluatorMetricSource>?>? metricSources;
  /// The resource name of the OnlineEvaluator. This is the final component of
  /// the resource path.
  /// Format: projects/{{project}}/locations/{{region}}/onlineEvaluators/{{id}}.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the OnlineEvaluator (e.g. us-central1). If unset, the provider's region is used.
  final pulumi.Input<String?>? region;
  /// The state of the OnlineEvaluator. Possible values are: ACTIVE, SUSPENDED,
  /// FAILED, WARNING.
  final pulumi.Input<String?>? state;
  /// Contains additional information about the state of the OnlineEvaluator.
  /// This is used to provide more details in the event of a failure.
  /// Structure is documented below.
  final pulumi.Input<List<AiOnlineEvaluatorStateDetail>?>? stateDetails;
  /// Timestamp when the OnlineEvaluator was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiOnlineEvaluatorState].
  /// [agentResource] The name of the agent that the OnlineEvaluator evaluates periodically.
  /// [cloudObservability] Data source for the OnlineEvaluator, based on the Google Cloud
  /// [config] Configuration for sampling behavior of the OnlineEvaluator. The
  /// [createTime] Timestamp when the OnlineEvaluator was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name for the OnlineEvaluator. The name doesn't have to be
  /// [metricSources] A list of metric sources to be used for evaluating samples. At least one
  /// [name] The resource name of the OnlineEvaluator. This is the final component of
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the OnlineEvaluator (e.g. us-central1). If unset, the provider's region is used.
  /// [state] The state of the OnlineEvaluator. Possible values are: ACTIVE, SUSPENDED,
  /// [stateDetails] Contains additional information about the state of the OnlineEvaluator.
  /// [updateTime] Timestamp when the OnlineEvaluator was last updated.
  const AiOnlineEvaluatorState({
    this.agentResource,
    this.cloudObservability,
    this.config,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.metricSources,
    this.name,
    this.project,
    this.region,
    this.state,
    this.stateDetails,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentResource': ?agentResource,
      'cloudObservability': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservability, Map<String, dynamic>>(cloudObservability, (value) => value.toMap()),
      'config': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'metricSources': ?pulumi.Input.mapOptionalInputValue<List<AiOnlineEvaluatorMetricSource>, List<Map<String, dynamic>>>(metricSources, (value) => pulumi.Input.encodeList<AiOnlineEvaluatorMetricSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'state': ?state,
      'stateDetails': ?pulumi.Input.mapOptionalInputValue<List<AiOnlineEvaluatorStateDetail>, List<Map<String, dynamic>>>(stateDetails, (value) => pulumi.Input.encodeList<AiOnlineEvaluatorStateDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory AiOnlineEvaluatorState.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorState(
      agentResource: (() { final guardedValue = map['agentResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudObservability: (() { final guardedValue = map['cloudObservability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricSources: (() { final guardedValue = map['metricSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiOnlineEvaluatorMetricSource>(guardedValue, (value) => AiOnlineEvaluatorMetricSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateDetails: (() { final guardedValue = map['stateDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiOnlineEvaluatorStateDetail>(guardedValue, (value) => AiOnlineEvaluatorStateDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
