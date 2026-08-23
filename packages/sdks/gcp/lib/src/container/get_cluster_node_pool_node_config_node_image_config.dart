// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigNodeImageConfig {
  /// The Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  final pulumi.Input<String> image;
  /// The GCP project storing the Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  final pulumi.Input<String> imageProject;

  /// Creates a new [GetClusterNodePoolNodeConfigNodeImageConfig].
  /// [image] The Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  /// [imageProject] The GCP project storing the Operating System image for the node pool. This is a private feature, please contact your Google account team for allowlisting this feature.
  const GetClusterNodePoolNodeConfigNodeImageConfig({
    required this.image,
    required this.imageProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'imageProject': imageProject,
    };
  }

  factory GetClusterNodePoolNodeConfigNodeImageConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigNodeImageConfig(
      image: pulumi.Input.fromValue(map['image'] as String),
      imageProject: pulumi.Input.fromValue(map['imageProject'] as String),
    );
  }
}
