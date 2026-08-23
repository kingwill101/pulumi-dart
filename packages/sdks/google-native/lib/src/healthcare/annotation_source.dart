// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_healthcare_source.dart';

/// AnnotationSource holds the source information of the annotation.
class AnnotationSource {
  /// Cloud Healthcare API resource.
  final pulumi.Input<CloudHealthcareSource>? cloudHealthcareSource;

  /// Creates a new [AnnotationSource].
  /// [cloudHealthcareSource] Cloud Healthcare API resource.
  const AnnotationSource({
    this.cloudHealthcareSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHealthcareSource': ?pulumi.Input.mapOptionalInputValue<CloudHealthcareSource, Map<String, dynamic>>(cloudHealthcareSource, (value) => value.toMap()),
    };
  }

  factory AnnotationSource.fromMap(Map<String, dynamic> map) {
    return AnnotationSource(
      cloudHealthcareSource: (() { final guardedValue = map['cloudHealthcareSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudHealthcareSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
