// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_transition_route_response.dart';

/// Result data returned by getTransitionRouteGroup.
class GetTransitionRouteGroupDialogflowV3beta1Result {
  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final String? displayName;
  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final String? name;
  /// Transition routes associated with the TransitionRouteGroup.
  final List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>? transitionRoutes;

  /// Creates a new [GetTransitionRouteGroupDialogflowV3beta1Result].
  /// [displayName] The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  /// [name] The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] Transition routes associated with the TransitionRouteGroup.
  const GetTransitionRouteGroupDialogflowV3beta1Result({
    this.displayName,
    this.name,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'transitionRoutes': ?(() { final guardedValue = transitionRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTransitionRouteGroupDialogflowV3beta1Result.fromMap(Map<String, dynamic> map) {
    return GetTransitionRouteGroupDialogflowV3beta1Result(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitionRoutes: (() { final guardedValue = map['transitionRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1TransitionRouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
