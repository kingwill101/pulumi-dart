// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_transition_route_group_dialogflow_v3beta1_args_doc}
/// Arguments for getTransitionRouteGroup.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_transition_route_group_dialogflow_v3beta1_args_doc}
class GetTransitionRouteGroupDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> transitionRouteGroupId;

  /// Creates a new [GetTransitionRouteGroupDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  /// [transitionRouteGroupId] Required.
  GetTransitionRouteGroupDialogflowV3beta1Args({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> flowId,
    pulumi.Output<String>? languageCode,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> transitionRouteGroupId,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      flowId = pulumi.Input.asInput<String>(flowId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      transitionRouteGroupId = pulumi.Input.asInput<String>(transitionRouteGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'flowId': flowId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
      'transitionRouteGroupId': transitionRouteGroupId,
    };
  }

  factory GetTransitionRouteGroupDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTransitionRouteGroupDialogflowV3beta1Args(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      flowId: pulumi.Output.create<String>(map['flowId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      transitionRouteGroupId: pulumi.Output.create<String>(map['transitionRouteGroupId'] as String),
    );
  }
}

