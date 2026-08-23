// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterBootstrapProfile {
  /// The source from which artifacts are pulled during bootstrap.
  final pulumi.Input<String> artifactSource;
  /// The ID of the Azure Container Registry used for caching artifacts during bootstrap.
  final pulumi.Input<String> containerRegistryId;

  /// Creates a new [GetKubernetesClusterBootstrapProfile].
  /// [artifactSource] The source from which artifacts are pulled during bootstrap.
  /// [containerRegistryId] The ID of the Azure Container Registry used for caching artifacts during bootstrap.
  const GetKubernetesClusterBootstrapProfile({
    required this.artifactSource,
    required this.containerRegistryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactSource': artifactSource,
      'containerRegistryId': containerRegistryId,
    };
  }

  factory GetKubernetesClusterBootstrapProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterBootstrapProfile(
      artifactSource: pulumi.Input.fromValue(map['artifactSource'] as String),
      containerRegistryId: pulumi.Input.fromValue(map['containerRegistryId'] as String),
    );
  }
}
