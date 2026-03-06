// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A TextAnnotation specifies a text range that includes sensitive information.
class SensitiveTextAnnotationResponse {
  /// Maps from a resource slice. For example, FHIR resource field path to a set of sensitive text findings. For example, Appointment.Narrative text1 --&gt; {findings_1, findings_2, findings_3}
  final pulumi.Input<Map<String, String>> details;

  /// Creates a new [SensitiveTextAnnotationResponse].
  /// [details] Maps from a resource slice. For example, FHIR resource field path to a set of sensitive text findings. For example, Appointment.Narrative text1 --&gt; {findings_1, findings_2, findings_3}
  const SensitiveTextAnnotationResponse({
    required this.details,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
    };
  }

  factory SensitiveTextAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return SensitiveTextAnnotationResponse(
      details: pulumi.Input.fromValue((map['details'] as Map).cast<String, String>()),
    );
  }
}

