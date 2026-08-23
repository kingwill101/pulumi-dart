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
  const GetTransitionRouteGroupDialogflowV3beta1Args({
    required this.agentId,
    required this.flowId,
    this.languageCode,
    required this.location,
    this.project,
    required this.transitionRouteGroupId,
  });

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
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      flowId: pulumi.Input.fromValue(map['flowId'] as String),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionRouteGroupId: pulumi.Input.fromValue(map['transitionRouteGroupId'] as String),
    );
  }
}
