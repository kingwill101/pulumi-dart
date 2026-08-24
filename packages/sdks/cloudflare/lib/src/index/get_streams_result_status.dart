// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamsResultStatus {
  /// Specifies why the video failed to encode. This field is empty if the video is not in an `error` state. Preferred for programmatic use.
  final pulumi.Input<String> errorReasonCode;
  /// Specifies why the video failed to encode using a human readable error message in English. This field is empty if the video is not in an `error` state.
  final pulumi.Input<String> errorReasonText;
  /// Indicates the size of the entire upload in bytes. The value must be a non-negative integer.
  final pulumi.Input<String> pctComplete;
  /// Specifies the processing status for all quality levels for a video.
  /// Available values: "pendingupload", "downloading", "queued", "inprogress", "ready", "error", "live-inprogress".
  final pulumi.Input<String> state;

  /// Creates a new [GetStreamsResultStatus].
  /// [errorReasonCode] Specifies why the video failed to encode. This field is empty if the video is not in an `error` state. Preferred for programmatic use.
  /// [errorReasonText] Specifies why the video failed to encode using a human readable error message in English. This field is empty if the video is not in an `error` state.
  /// [pctComplete] Indicates the size of the entire upload in bytes. The value must be a non-negative integer.
  /// [state] Specifies the processing status for all quality levels for a video.
  const GetStreamsResultStatus({
    required this.errorReasonCode,
    required this.errorReasonText,
    required this.pctComplete,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorReasonCode': errorReasonCode,
      'errorReasonText': errorReasonText,
      'pctComplete': pctComplete,
      'state': state,
    };
  }

  factory GetStreamsResultStatus.fromMap(Map<String, dynamic> map) {
    return GetStreamsResultStatus(
      errorReasonCode: pulumi.Input.fromValue(map['errorReasonCode'] as String),
      errorReasonText: pulumi.Input.fromValue(map['errorReasonText'] as String),
      pctComplete: pulumi.Input.fromValue(map['pctComplete'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
