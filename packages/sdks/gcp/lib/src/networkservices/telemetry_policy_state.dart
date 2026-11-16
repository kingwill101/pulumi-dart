// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_policy_metrics_configuration.dart';
import 'telemetry_policy_telemetry_target.dart';
import 'telemetry_policy_tracing_configuration.dart';

/// Input properties used for looking up and filtering TelemetryPolicy resources.
class TelemetryPolicyState {
  /// Time the TelemetryPolicy was created in UTC.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Provides a human-readable name for the policy.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Set of label tags associated with the TelemetryPolicy resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Location (region) of the TelemetryPolicy resource to be created. Defaults to 'global'.
  final pulumi.Input<String?>? location;
  /// Specifies the top-level configuration block within the telemetry policy that contains all the settings for how metrics will be applied to the target resources.
  /// Structure is documented below.
  final pulumi.Input<TelemetryPolicyMetricsConfiguration?>? metricsConfiguration;
  /// Short name of the TelemetryPolicy resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Specifies the set of targets to which this telemetry policy applies.
  /// Structure is documented below.
  final pulumi.Input<TelemetryPolicyTelemetryTarget?>? telemetryTarget;
  /// Specifies the top-level configuration block within the telemetry policy that contains all the settings for how tracing will be applied to the target resources.
  /// Structure is documented below.
  final pulumi.Input<TelemetryPolicyTracingConfiguration?>? tracingConfiguration;
  /// Specifies the server-assigned unique identifier for the policy.
  final pulumi.Input<String?>? uid;
  /// Time the TelemetryPolicy was updated in UTC.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [TelemetryPolicyState].
  /// [createTime] Time the TelemetryPolicy was created in UTC.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Provides a human-readable name for the policy.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the TelemetryPolicy resource.
  /// [location] Location (region) of the TelemetryPolicy resource to be created. Defaults to 'global'.
  /// [metricsConfiguration] Specifies the top-level configuration block within the telemetry policy that contains all the settings for how metrics will be applied to the target resources.
  /// [name] Short name of the TelemetryPolicy resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [telemetryTarget] Specifies the set of targets to which this telemetry policy applies.
  /// [tracingConfiguration] Specifies the top-level configuration block within the telemetry policy that contains all the settings for how tracing will be applied to the target resources.
  /// [uid] Specifies the server-assigned unique identifier for the policy.
  /// [updateTime] Time the TelemetryPolicy was updated in UTC.
  const TelemetryPolicyState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.metricsConfiguration,
    this.name,
    this.project,
    this.pulumiLabels,
    this.telemetryTarget,
    this.tracingConfiguration,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'metricsConfiguration': ?pulumi.Input.mapOptionalInputValue<TelemetryPolicyMetricsConfiguration, Map<String, dynamic>>(metricsConfiguration, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'telemetryTarget': ?pulumi.Input.mapOptionalInputValue<TelemetryPolicyTelemetryTarget, Map<String, dynamic>>(telemetryTarget, (value) => value.toMap()),
      'tracingConfiguration': ?pulumi.Input.mapOptionalInputValue<TelemetryPolicyTracingConfiguration, Map<String, dynamic>>(tracingConfiguration, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory TelemetryPolicyState.fromMap(Map<String, dynamic> map) {
    return TelemetryPolicyState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsConfiguration: (() { final guardedValue = map['metricsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPolicyMetricsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      telemetryTarget: (() { final guardedValue = map['telemetryTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPolicyTelemetryTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tracingConfiguration: (() { final guardedValue = map['tracingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPolicyTracingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
