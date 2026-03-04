// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A TextAnnotation specifies a text range that includes sensitive information.
class SensitiveTextAnnotation {
  /// Maps from a resource slice. For example, FHIR resource field path to a set of sensitive text findings. For example, Appointment.Narrative text1 --&gt; {findings_1, findings_2, findings_3}
  final pulumi.Input<Map<String, String>>? details;

  /// Creates a new [SensitiveTextAnnotation].
  /// [details] Maps from a resource slice. For example, FHIR resource field path to a set of sensitive text findings. For example, Appointment.Narrative text1 --&gt; {findings_1, findings_2, findings_3}
  SensitiveTextAnnotation({this.details});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'details': ?details};
  }

  factory SensitiveTextAnnotation.fromMap(Map<String, dynamic> map) {
    return SensitiveTextAnnotation(
      details: (() {
        final guardedValue = map['details'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
