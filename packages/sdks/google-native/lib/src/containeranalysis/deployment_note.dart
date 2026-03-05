// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An artifact that can be deployed in some runtime.
class DeploymentNote {
  /// Resource URI for the artifact being deployed.
  final pulumi.Input<List<String>> resourceUri;

  /// Creates a new [DeploymentNote].
  /// [resourceUri] Resource URI for the artifact being deployed.
  DeploymentNote({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory DeploymentNote.fromMap(Map<String, dynamic> map) {
    return DeploymentNote(
      resourceUri: pulumi.Input.fromValue((map['resourceUri'] as List).cast<String>()),
    );
  }
}

