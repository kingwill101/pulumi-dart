// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateContainerBuildInfo {
  /// Entry point of the function when the image is a Cloud Run function.
  final pulumi.Input<String> functionTarget;
  /// Source code location of the image.
  final pulumi.Input<String> sourceLocation;

  /// Creates a new [GetServiceTemplateContainerBuildInfo].
  /// [functionTarget] Entry point of the function when the image is a Cloud Run function.
  /// [sourceLocation] Source code location of the image.
  const GetServiceTemplateContainerBuildInfo({
    required this.functionTarget,
    required this.sourceLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionTarget': functionTarget,
      'sourceLocation': sourceLocation,
    };
  }

  factory GetServiceTemplateContainerBuildInfo.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerBuildInfo(
      functionTarget: pulumi.Input.fromValue(map['functionTarget'] as String),
      sourceLocation: pulumi.Input.fromValue(map['sourceLocation'] as String),
    );
  }
}

