// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Validation for inquired protectable items under a given container.
class InquiryValidation {
  /// Status for the Inquiry Validation.
  final pulumi.Input<String>? status;

  /// Creates a new [InquiryValidation].
  /// [status] Status for the Inquiry Validation.
  InquiryValidation({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory InquiryValidation.fromMap(Map<String, dynamic> map) {
    return InquiryValidation(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
