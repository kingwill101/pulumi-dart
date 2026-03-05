// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionDeploymentContainer {
  /// URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest.
  /// Examples: "gcr.io/my-project/image:tag" or "gcr.io/my-project/image@digest"
  final pulumi.Input<String> image;

  /// Creates a new [FlexibleAppVersionDeploymentContainer].
  /// [image] URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest.
  FlexibleAppVersionDeploymentContainer({
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
    };
  }

  factory FlexibleAppVersionDeploymentContainer.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentContainer(
      image: pulumi.Input.fromValue(map['image'] as String),
    );
  }
}

