// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObservatoryScheduledTestTestDesktopReportError {
  /// The error code of the Lighthouse result.
  /// Available values: "NOT*REACHABLE", "DNS*FAILURE", "NOT*HTML", "LIGHTHOUSE*TIMEOUT", "UNKNOWN".
  final pulumi.Input<String?>? code;
  /// Detailed error message.
  final pulumi.Input<String?>? detail;
  /// The final URL displayed to the user.
  final pulumi.Input<String?>? finalDisplayedUrl;

  /// Creates a new [ObservatoryScheduledTestTestDesktopReportError].
  /// [code] The error code of the Lighthouse result.
  /// [detail] Detailed error message.
  /// [finalDisplayedUrl] The final URL displayed to the user.
  const ObservatoryScheduledTestTestDesktopReportError({
    this.code,
    this.detail,
    this.finalDisplayedUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'detail': ?detail,
      'finalDisplayedUrl': ?finalDisplayedUrl,
    };
  }

  factory ObservatoryScheduledTestTestDesktopReportError.fromMap(Map<String, dynamic> map) {
    return ObservatoryScheduledTestTestDesktopReportError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detail: (() { final guardedValue = map['detail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalDisplayedUrl: (() { final guardedValue = map['finalDisplayedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
