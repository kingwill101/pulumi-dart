// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy_compute_beta.dart';
import 'node_group_maintenance_interval_compute_beta.dart';
import 'node_group_maintenance_policy_compute_beta.dart';
import 'node_group_maintenance_window_compute_beta.dart';
import 'share_settings_compute_beta.dart';

/// {@template pulumi_compute_beta_node_group_compute_beta_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_node_group_compute_beta_args_doc}
class NodeGroupComputeBetaArgs {
  /// Specifies how autoscaling should behave.
  final pulumi.Input<NodeGroupAutoscalingPolicyComputeBeta>? autoscalingPolicy;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Initial count of nodes in the node group.
  final pulumi.Input<int> initialNodeCount;

  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  final pulumi.Input<String>? locationHint;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  final pulumi.Input<NodeGroupMaintenanceIntervalComputeBeta>?
  maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  final pulumi.Input<NodeGroupMaintenancePolicyComputeBeta>? maintenancePolicy;
  final pulumi.Input<NodeGroupMaintenanceWindowComputeBeta>? maintenanceWindow;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// URL of the node template to create the node group from.
  final pulumi.Input<String>? nodeTemplate;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Share-settings for the node group
  final pulumi.Input<ShareSettingsComputeBeta>? shareSettings;
  final pulumi.Input<String>? zone;

  /// Creates a new [NodeGroupComputeBetaArgs].
  /// [autoscalingPolicy] Specifies how autoscaling should behave.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [initialNodeCount] Initial count of nodes in the node group.
  /// [locationHint] An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  /// [maintenancePolicy] Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  /// [maintenanceWindow] Optional.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nodeTemplate] URL of the node template to create the node group from.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [shareSettings] Share-settings for the node group
  /// [zone] Optional.
  NodeGroupComputeBetaArgs({
    this.autoscalingPolicy,
    this.description,
    required this.initialNodeCount,
    this.locationHint,
    this.maintenanceInterval,
    this.maintenancePolicy,
    this.maintenanceWindow,
    this.name,
    this.nodeTemplate,
    this.project,
    this.requestId,
    this.shareSettings,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupAutoscalingPolicyComputeBeta,
            Map<String, dynamic>
          >(autoscalingPolicy, (value) => value.toMap()),
      'description': ?description,
      'initialNodeCount': initialNodeCount,
      'locationHint': ?locationHint,
      'maintenanceInterval':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupMaintenanceIntervalComputeBeta,
            String
          >(maintenanceInterval, (value) => value.wireValue),
      'maintenancePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupMaintenancePolicyComputeBeta,
            String
          >(maintenancePolicy, (value) => value.wireValue),
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupMaintenanceWindowComputeBeta,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'nodeTemplate': ?nodeTemplate,
      'project': ?project,
      'requestId': ?requestId,
      'shareSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ShareSettingsComputeBeta,
            Map<String, dynamic>
          >(shareSettings, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory NodeGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupComputeBetaArgs(
      autoscalingPolicy: (() {
        final guardedValue = map['autoscalingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeGroupAutoscalingPolicyComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialNodeCount: pulumi.Input.fromValue(map['initialNodeCount'] as int),
      locationHint: (() {
        final guardedValue = map['locationHint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceInterval: (() {
        final guardedValue = map['maintenanceInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeGroupMaintenanceIntervalComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      maintenancePolicy: (() {
        final guardedValue = map['maintenancePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeGroupMaintenancePolicyComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      maintenanceWindow: (() {
        final guardedValue = map['maintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeGroupMaintenanceWindowComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeTemplate: (() {
        final guardedValue = map['nodeTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareSettings: (() {
        final guardedValue = map['shareSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShareSettingsComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
