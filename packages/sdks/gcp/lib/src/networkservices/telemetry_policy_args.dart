// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_policy_metrics_configuration.dart';
import 'telemetry_policy_telemetry_target.dart';
import 'telemetry_policy_tracing_configuration.dart';

/// {@template pulumi_networkservices_telemetry_policy_telemetry_policy_args_doc}
/// The set of arguments for TelemetryPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_telemetry_policy_telemetry_policy_args_doc}
class TelemetryPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Provides a human-readable name for the policy.
  final pulumi.Input<String?>? displayName;
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
  /// Specifies the set of targets to which this telemetry policy applies.
  /// Structure is documented below.
  final pulumi.Input<TelemetryPolicyTelemetryTarget> telemetryTarget;
  /// Specifies the top-level configuration block within the telemetry policy that contains all the settings for how tracing will be applied to the target resources.
  /// Structure is documented below.
  final pulumi.Input<TelemetryPolicyTracingConfiguration?>? tracingConfiguration;

  /// Creates a new [TelemetryPolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Provides a human-readable name for the policy.
  /// [labels] Set of label tags associated with the TelemetryPolicy resource.
  /// [location] Location (region) of the TelemetryPolicy resource to be created. Defaults to 'global'.
  /// [metricsConfiguration] Specifies the top-level configuration block within the telemetry policy that contains all the settings for how metrics will be applied to the target resources.
  /// [name] Short name of the TelemetryPolicy resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [telemetryTarget] Specifies the set of targets to which this telemetry policy applies.
  /// [tracingConfiguration] Specifies the top-level configuration block within the telemetry policy that contains all the settings for how tracing will be applied to the target resources.
  const TelemetryPolicyArgs({
    this.deletionPolicy,
    this.displayName,
    this.labels,
    this.location,
    this.metricsConfiguration,
    this.name,
    this.project,
    required this.telemetryTarget,
    this.tracingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'metricsConfiguration': ?pulumi.Input.mapOptionalInputValue<TelemetryPolicyMetricsConfiguration, Map<String, dynamic>>(metricsConfiguration, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'telemetryTarget': pulumi.Input.mapInputValue<TelemetryPolicyTelemetryTarget, Map<String, dynamic>>(telemetryTarget, (value) => value.toMap()),
      'tracingConfiguration': ?pulumi.Input.mapOptionalInputValue<TelemetryPolicyTracingConfiguration, Map<String, dynamic>>(tracingConfiguration, (value) => value.toMap()),
    };
  }

  factory TelemetryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TelemetryPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsConfiguration: (() { final guardedValue = map['metricsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPolicyMetricsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telemetryTarget: pulumi.Input.fromValue(TelemetryPolicyTelemetryTarget.fromMap((map['telemetryTarget']! as Map).cast<String, dynamic>())),
      tracingConfiguration: (() { final guardedValue = map['tracingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPolicyTracingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
