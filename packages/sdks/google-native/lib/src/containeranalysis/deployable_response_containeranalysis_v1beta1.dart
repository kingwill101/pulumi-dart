// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An artifact that can be deployed in some runtime.
class DeployableResponseContaineranalysisV1beta1 {
  /// Resource URI for the artifact being deployed.
  final pulumi.Input<List<String>> resourceUri;

  /// Creates a new [DeployableResponseContaineranalysisV1beta1].
  /// [resourceUri] Resource URI for the artifact being deployed.
  const DeployableResponseContaineranalysisV1beta1({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory DeployableResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DeployableResponseContaineranalysisV1beta1(
      resourceUri: pulumi.Input.fromValue((map['resourceUri'] as List).cast<String>()),
    );
  }
}
