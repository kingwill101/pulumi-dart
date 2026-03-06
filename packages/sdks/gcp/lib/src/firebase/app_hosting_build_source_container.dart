// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingBuildSourceContainer {
  /// A URI representing a container for the backend to use.
  final pulumi.Input<String> image;

  /// Creates a new [AppHostingBuildSourceContainer].
  /// [image] A URI representing a container for the backend to use.
  const AppHostingBuildSourceContainer({
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
    };
  }

  factory AppHostingBuildSourceContainer.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildSourceContainer(
      image: pulumi.Input.fromValue(map['image'] as String),
    );
  }
}

