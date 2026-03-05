// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_transition_route_response.dart';

/// Result data returned by getTransitionRouteGroup.
class GetTransitionRouteGroupResult {
  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final String displayName;
  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  final String name;
  /// Transition routes associated with the TransitionRouteGroup.
  final List<GoogleCloudDialogflowCxV3TransitionRouteResponse> transitionRoutes;

  /// Creates a new [GetTransitionRouteGroupResult].
  /// [displayName] The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  /// [name] The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  /// [transitionRoutes] Transition routes associated with the TransitionRouteGroup.
  GetTransitionRouteGroupResult({
    required this.displayName,
    required this.name,
    required this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'name': name,
      'transitionRoutes': pulumi.Input.encodeList<GoogleCloudDialogflowCxV3TransitionRouteResponse, Map<String, dynamic>>(transitionRoutes, (value) => value.toMap()),
    };
  }

  factory GetTransitionRouteGroupResult.fromMap(Map<String, dynamic> map) {
    return GetTransitionRouteGroupResult(
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      transitionRoutes: pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRouteResponse>(map['transitionRoutes']!, (value) => GoogleCloudDialogflowCxV3TransitionRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

