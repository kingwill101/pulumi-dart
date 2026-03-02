// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_transition_route.dart';

/// {@template pulumi_dialogflow_v3beta1_transition_route_group_dialogflow_v3beta1_args_doc}
/// The set of arguments for TransitionRouteGroup.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_transition_route_group_dialogflow_v3beta1_args_doc}
class TransitionRouteGroupDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String> flowId;
  /// The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Transition routes associated with the TransitionRouteGroup.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1TransitionRoute>>? transitionRoutes;

  /// Creates a new [TransitionRouteGroupDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [displayName] The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  /// [flowId] Required.
  /// [languageCode] The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [project] Optional.
  /// [transitionRoutes] Transition routes associated with the TransitionRouteGroup.
  TransitionRouteGroupDialogflowV3beta1Args({
    required this.agentId,
    required this.displayName,
    required this.flowId,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'displayName': displayName,
      'flowId': flowId,
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'transitionRoutes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1TransitionRoute>, List<Map<String, dynamic>>>(transitionRoutes, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1TransitionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TransitionRouteGroupDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return TransitionRouteGroupDialogflowV3beta1Args(
      agentId: (map['agentId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      flowId: (map['flowId'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      transitionRoutes: map['transitionRoutes'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1TransitionRoute>(map['transitionRoutes']!, (value) => GoogleCloudDialogflowCxV3beta1TransitionRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

