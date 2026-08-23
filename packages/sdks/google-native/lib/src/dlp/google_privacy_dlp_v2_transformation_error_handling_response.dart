// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// How to handle transformation errors during de-identification. A transformation error occurs when the requested transformation is incompatible with the data. For example, trying to de-identify an IP address using a `DateShift` transformation would result in a transformation error, since date info cannot be extracted from an IP address. Information about any incompatible transformations, and how they were handled, is returned in the response as part of the `TransformationOverviews`.
class GooglePrivacyDlpV2TransformationErrorHandlingResponse {
  /// Ignore errors
  final pulumi.Input<Map<String, dynamic>> leaveUntransformed;
  /// Throw an error
  final pulumi.Input<Map<String, dynamic>> throwError;

  /// Creates a new [GooglePrivacyDlpV2TransformationErrorHandlingResponse].
  /// [leaveUntransformed] Ignore errors
  /// [throwError] Throw an error
  const GooglePrivacyDlpV2TransformationErrorHandlingResponse({
    required this.leaveUntransformed,
    required this.throwError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leaveUntransformed': leaveUntransformed,
      'throwError': throwError,
    };
  }

  factory GooglePrivacyDlpV2TransformationErrorHandlingResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TransformationErrorHandlingResponse(
      leaveUntransformed: pulumi.Input.fromValue((map['leaveUntransformed']! as Map).cast<String, dynamic>()),
      throwError: pulumi.Input.fromValue((map['throwError']! as Map).cast<String, dynamic>()),
    );
  }
}
