// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_healthcare_source_response.dart';

/// AnnotationSource holds the source information of the annotation.
class AnnotationSourceResponse {
  /// Cloud Healthcare API resource.
  final pulumi.Input<CloudHealthcareSourceResponse> cloudHealthcareSource;

  /// Creates a new [AnnotationSourceResponse].
  /// [cloudHealthcareSource] Cloud Healthcare API resource.
  const AnnotationSourceResponse({
    required this.cloudHealthcareSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHealthcareSource': pulumi.Input.mapInputValue<CloudHealthcareSourceResponse, Map<String, dynamic>>(cloudHealthcareSource, (value) => value.toMap()),
    };
  }

  factory AnnotationSourceResponse.fromMap(Map<String, dynamic> map) {
    return AnnotationSourceResponse(
      cloudHealthcareSource: pulumi.Input.fromValue(CloudHealthcareSourceResponse.fromMap((map['cloudHealthcareSource']! as Map).cast<String, dynamic>())),
    );
  }
}

