// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// {@template pulumi_dialogflow_v3_transition_route_group_args_doc}
/// The set of arguments for TransitionRouteGroup.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_transition_route_group_args_doc}
class TransitionRouteGroupArgs {
  final pulumi.Input<String> agentId;

  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String> flowId;

  /// The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Transition routes associated with the TransitionRouteGroup.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>?
  transitionRoutes;

  /// Creates a new [TransitionRouteGroupArgs].
  /// [agentId] Required.
  /// [displayName] The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  /// [flowId] Required.
  /// [languageCode] The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  /// [project] Optional.
  /// [transitionRoutes] Transition routes associated with the TransitionRouteGroup.
  TransitionRouteGroupArgs({
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
      'transitionRoutes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDialogflowCxV3TransitionRoute>,
            List<Map<String, dynamic>>
          >(
            transitionRoutes,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowCxV3TransitionRoute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TransitionRouteGroupArgs.fromMap(Map<String, dynamic> map) {
    return TransitionRouteGroupArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      flowId: pulumi.Input.fromValue(map['flowId'] as String),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitionRoutes: (() {
        final guardedValue = map['transitionRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRoute>(
            guardedValue,
            (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
