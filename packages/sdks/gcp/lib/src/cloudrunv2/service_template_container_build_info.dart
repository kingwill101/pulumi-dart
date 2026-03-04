// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerBuildInfo {
  /// Entry point of the function when the image is a Cloud Run function.
  final pulumi.Input<String>? functionTarget;

  /// Source code location of the image.
  final pulumi.Input<String>? sourceLocation;

  /// Creates a new [ServiceTemplateContainerBuildInfo].
  /// [functionTarget] Entry point of the function when the image is a Cloud Run function.
  /// [sourceLocation] Source code location of the image.
  ServiceTemplateContainerBuildInfo({this.functionTarget, this.sourceLocation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionTarget': ?functionTarget,
      'sourceLocation': ?sourceLocation,
    };
  }

  factory ServiceTemplateContainerBuildInfo.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerBuildInfo(
      functionTarget: (() {
        final guardedValue = map['functionTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceLocation: (() {
        final guardedValue = map['sourceLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
