// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_autoscaling_policy.dart';

/// Input properties used for looking up and filtering Autoscaler resources.
class AutoscalerState {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicy>? autoscalingPolicy;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// URL of the managed instance group that this autoscaler will scale.
  final pulumi.Input<String>? target;
  /// URL of the zone where the instance group resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [AutoscalerState].
  /// [autoscalingPolicy] The configuration parameters for the autoscaling algorithm. You can
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. The name must be 1-63 characters long and match
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [target] URL of the managed instance group that this autoscaler will scale.
  /// [zone] URL of the zone where the instance group resides.
  AutoscalerState({
    pulumi.Output<AutoscalerAutoscalingPolicy>? autoscalingPolicy,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? target,
    pulumi.Output<String>? zone,
  }) :
      autoscalingPolicy = pulumi.Input.asOptionalInput<AutoscalerAutoscalingPolicy>(autoscalingPolicy),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      target = pulumi.Input.asOptionalInput<String>(target),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy': ?pulumi.Input.mapOptionalInputValue<AutoscalerAutoscalingPolicy, Map<String, dynamic>>(autoscalingPolicy, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'target': ?target,
      'zone': ?zone,
    };
  }

  factory AutoscalerState.fromMap(Map<String, dynamic> map) {
    return AutoscalerState(
      autoscalingPolicy: map['autoscalingPolicy'] == null ? null : pulumi.Output.create<AutoscalerAutoscalingPolicy>(AutoscalerAutoscalingPolicy.fromMap((map['autoscalingPolicy'] as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

