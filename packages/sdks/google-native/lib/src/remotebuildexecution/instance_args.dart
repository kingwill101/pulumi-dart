// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy.dart';

/// {@template pulumi_remotebuildexecution_v1alpha_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_remotebuildexecution_v1alpha_instance_args_doc}
class InstanceArgs {
  /// The policy to define whether or not RBE features can be used or how they can be used.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>? featurePolicy;
  /// ID of the created instance. A valid `instance_id` must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
  final pulumi.Input<String>? instanceId;
  /// The location is a GCP region. Currently only `us-central1` is supported.
  final pulumi.Input<String>? location;
  /// Resource name of the project containing the instance. Format: `projects/[PROJECT_ID]`.
  final pulumi.Input<String>? parent;
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [featurePolicy] The policy to define whether or not RBE features can be used or how they can be used.
  /// [instanceId] ID of the created instance. A valid `instance_id` must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
  /// [location] The location is a GCP region. Currently only `us-central1` is supported.
  /// [parent] Resource name of the project containing the instance. Format: `projects/[PROJECT_ID]`.
  /// [project] Optional.
  InstanceArgs({
    pulumi.Output<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>? featurePolicy,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? project,
  }) :
      featurePolicy = pulumi.Input.asOptionalInput<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>(featurePolicy),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurePolicy': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy, Map<String, dynamic>>(featurePolicy, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'location': ?location,
      'parent': ?parent,
      'project': ?project,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      featurePolicy: map['featurePolicy'] == null ? null : pulumi.Output.create<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy.fromMap((map['featurePolicy'] as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

