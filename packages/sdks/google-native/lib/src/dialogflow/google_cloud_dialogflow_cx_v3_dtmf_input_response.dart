// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the input for dtmf event.
class GoogleCloudDialogflowCxV3DtmfInputResponse {
  /// The dtmf digits.
  final pulumi.Input<String> digits;
  /// The finish digit (if any).
  final pulumi.Input<String> finishDigit;

  /// Creates a new [GoogleCloudDialogflowCxV3DtmfInputResponse].
  /// [digits] The dtmf digits.
  /// [finishDigit] The finish digit (if any).
  const GoogleCloudDialogflowCxV3DtmfInputResponse({
    required this.digits,
    required this.finishDigit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digits': digits,
      'finishDigit': finishDigit,
    };
  }

  factory GoogleCloudDialogflowCxV3DtmfInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3DtmfInputResponse(
      digits: pulumi.Input.fromValue(map['digits'] as String),
      finishDigit: pulumi.Input.fromValue(map['finishDigit'] as String),
    );
  }
}
