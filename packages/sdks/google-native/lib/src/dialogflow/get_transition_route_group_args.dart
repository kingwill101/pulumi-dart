// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_transition_route_group_args_doc}
/// Arguments for getTransitionRouteGroup.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_transition_route_group_args_doc}
class GetTransitionRouteGroupArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> transitionRouteGroupId;

  /// Creates a new [GetTransitionRouteGroupArgs].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  /// [transitionRouteGroupId] Required.
  GetTransitionRouteGroupArgs({
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

  factory GetTransitionRouteGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitionRouteGroupArgs(
      agentId: (map['agentId'] as String).input(),
      flowId: (map['flowId'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      transitionRouteGroupId: (map['transitionRouteGroupId'] as String).input(),
    );
  }
}

