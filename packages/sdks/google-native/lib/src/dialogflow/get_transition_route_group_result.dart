// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_transition_route_response.dart';

/// Result data returned by getTransitionRouteGroup.
class GetTransitionRouteGroupResult {
  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final String? displayName;
  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  final String? name;
  /// Transition routes associated with the TransitionRouteGroup.
  final List<GoogleCloudDialogflowCxV3TransitionRouteResponse>? transitionRoutes;

  /// Creates a new [GetTransitionRouteGroupResult].
  /// [displayName] The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  /// [name] The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  /// [transitionRoutes] Transition routes associated with the TransitionRouteGroup.
  const GetTransitionRouteGroupResult({
    this.displayName,
    this.name,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'transitionRoutes': ?(() { final guardedValue = transitionRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3TransitionRouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTransitionRouteGroupResult.fromMap(Map<String, dynamic> map) {
    return GetTransitionRouteGroupResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitionRoutes: (() { final guardedValue = map['transitionRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRouteResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3TransitionRouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
