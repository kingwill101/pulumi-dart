// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An artifact that can be deployed in some runtime.
class DeploymentNoteResponse {
  /// Resource URI for the artifact being deployed.
  final pulumi.Input<List<String>> resourceUri;

  /// Creates a new [DeploymentNoteResponse].
  /// [resourceUri] Resource URI for the artifact being deployed.
  const DeploymentNoteResponse({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory DeploymentNoteResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentNoteResponse(
      resourceUri: pulumi.Input.fromValue((map['resourceUri'] as List).cast<String>()),
    );
  }
}
