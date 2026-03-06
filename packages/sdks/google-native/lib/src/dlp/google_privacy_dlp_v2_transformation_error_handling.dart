// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// How to handle transformation errors during de-identification. A transformation error occurs when the requested transformation is incompatible with the data. For example, trying to de-identify an IP address using a `DateShift` transformation would result in a transformation error, since date info cannot be extracted from an IP address. Information about any incompatible transformations, and how they were handled, is returned in the response as part of the `TransformationOverviews`.
class GooglePrivacyDlpV2TransformationErrorHandling {
  /// Ignore errors
  final pulumi.Input<Map<String, dynamic>>? leaveUntransformed;
  /// Throw an error
  final pulumi.Input<Map<String, dynamic>>? throwError;

  /// Creates a new [GooglePrivacyDlpV2TransformationErrorHandling].
  /// [leaveUntransformed] Ignore errors
  /// [throwError] Throw an error
  const GooglePrivacyDlpV2TransformationErrorHandling({
    this.leaveUntransformed,
    this.throwError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leaveUntransformed': ?leaveUntransformed,
      'throwError': ?throwError,
    };
  }

  factory GooglePrivacyDlpV2TransformationErrorHandling.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TransformationErrorHandling(
      leaveUntransformed: (() { final guardedValue = map['leaveUntransformed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      throwError: (() { final guardedValue = map['throwError']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

