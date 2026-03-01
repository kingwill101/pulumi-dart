// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateContainerBuildInfo {
  /// Entry point of the function when the image is a Cloud Run function.
  final String functionTarget;
  /// Source code location of the image.
  final String sourceLocation;

  /// Creates a new [GetServiceTemplateContainerBuildInfo].
  /// [functionTarget] Entry point of the function when the image is a Cloud Run function.
  /// [sourceLocation] Source code location of the image.
  GetServiceTemplateContainerBuildInfo({
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
      functionTarget: map['functionTarget'] as String,
      sourceLocation: map['sourceLocation'] as String,
    );
  }
}

