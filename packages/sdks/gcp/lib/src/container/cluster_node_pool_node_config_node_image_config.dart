// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigNodeImageConfig {
  /// The Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  final pulumi.Input<String>? image;
  /// The GCP project storing the Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  final pulumi.Input<String>? imageProject;

  /// Creates a new [ClusterNodePoolNodeConfigNodeImageConfig].
  /// [image] The Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  /// [imageProject] The GCP project storing the Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  const ClusterNodePoolNodeConfigNodeImageConfig({
    this.image,
    this.imageProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?image,
      'imageProject': ?imageProject,
    };
  }

  factory ClusterNodePoolNodeConfigNodeImageConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigNodeImageConfig(
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageProject: (() { final guardedValue = map['imageProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
