// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the final state "abort" and associated resource.
class AbortInfoResponseNetworkmanagementV1beta1 {
  /// Causes that the analysis is aborted.
  final pulumi.Input<String> cause;
  /// List of project IDs that the user has specified in the request but does not have permission to access network configs. Analysis is aborted in this case with the PERMISSION_DENIED cause.
  final pulumi.Input<List<String>> projectsMissingPermission;
  /// URI of the resource that caused the abort.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [AbortInfoResponseNetworkmanagementV1beta1].
  /// [cause] Causes that the analysis is aborted.
  /// [projectsMissingPermission] List of project IDs that the user has specified in the request but does not have permission to access network configs. Analysis is aborted in this case with the PERMISSION_DENIED cause.
  /// [resourceUri] URI of the resource that caused the abort.
  AbortInfoResponseNetworkmanagementV1beta1({
    required this.cause,
    required this.projectsMissingPermission,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': cause,
      'projectsMissingPermission': projectsMissingPermission,
      'resourceUri': resourceUri,
    };
  }

  factory AbortInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return AbortInfoResponseNetworkmanagementV1beta1(
      cause: pulumi.Input.fromValue(map['cause'] as String),
      projectsMissingPermission: pulumi.Input.fromValue((map['projectsMissingPermission'] as List).cast<String>()),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

