// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamStatus {
  /// Specifies why the video failed to encode. This field is empty if the video is not in an `error` state. Preferred for programmatic use.
  final pulumi.Input<String?>? errorReasonCode;
  /// Specifies why the video failed to encode using a human readable error message in English. This field is empty if the video is not in an `error` state.
  final pulumi.Input<String?>? errorReasonText;
  /// Indicates the size of the entire upload in bytes. The value must be a non-negative integer.
  final pulumi.Input<String?>? pctComplete;
  /// Specifies the processing status for all quality levels for a video.
  /// Available values: "pendingupload", "downloading", "queued", "inprogress", "ready", "error", "live-inprogress".
  final pulumi.Input<String?>? state;

  /// Creates a new [StreamStatus].
  /// [errorReasonCode] Specifies why the video failed to encode. This field is empty if the video is not in an `error` state. Preferred for programmatic use.
  /// [errorReasonText] Specifies why the video failed to encode using a human readable error message in English. This field is empty if the video is not in an `error` state.
  /// [pctComplete] Indicates the size of the entire upload in bytes. The value must be a non-negative integer.
  /// [state] Specifies the processing status for all quality levels for a video.
  const StreamStatus({
    this.errorReasonCode,
    this.errorReasonText,
    this.pctComplete,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorReasonCode': ?errorReasonCode,
      'errorReasonText': ?errorReasonText,
      'pctComplete': ?pctComplete,
      'state': ?state,
    };
  }

  factory StreamStatus.fromMap(Map<String, dynamic> map) {
    return StreamStatus(
      errorReasonCode: (() { final guardedValue = map['errorReasonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorReasonText: (() { final guardedValue = map['errorReasonText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pctComplete: (() { final guardedValue = map['pctComplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
