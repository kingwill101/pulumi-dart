// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config for image bounding poly (and bounding box) human labeling task.
class GoogleCloudDatalabelingV1beta1BoundingPolyConfig {
  /// Annotation spec set resource name.
  final pulumi.Input<String> annotationSpecSet;
  /// Optional. Instruction message showed on contributors UI.
  final pulumi.Input<String>? instructionMessage;

  /// Creates a new [GoogleCloudDatalabelingV1beta1BoundingPolyConfig].
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [instructionMessage] Optional. Instruction message showed on contributors UI.
  GoogleCloudDatalabelingV1beta1BoundingPolyConfig({
    required this.annotationSpecSet,
    this.instructionMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSpecSet': annotationSpecSet,
      'instructionMessage': ?instructionMessage,
    };
  }

  factory GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1BoundingPolyConfig(
      annotationSpecSet: pulumi.Input.fromValue(map['annotationSpecSet'] as String),
      instructionMessage: (() { final guardedValue = map['instructionMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

