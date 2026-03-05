// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the input for dtmf event.
class GoogleCloudDialogflowCxV3beta1DtmfInput {
  /// The dtmf digits.
  final pulumi.Input<String>? digits;
  /// The finish digit (if any).
  final pulumi.Input<String>? finishDigit;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1DtmfInput].
  /// [digits] The dtmf digits.
  /// [finishDigit] The finish digit (if any).
  GoogleCloudDialogflowCxV3beta1DtmfInput({
    this.digits,
    this.finishDigit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digits': ?digits,
      'finishDigit': ?finishDigit,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1DtmfInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1DtmfInput(
      digits: (() { final guardedValue = map['digits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishDigit: (() { final guardedValue = map['finishDigit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

