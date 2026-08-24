// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamLiveInputRecording {
  /// Lists the origins allowed to display videos created with this input. Enter allowed origin domains in an array and use `*` for wildcard subdomains. An empty array allows videos to be viewed on any origin.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Disables reporting the number of live viewers when this property is set to `true`.
  final pulumi.Input<bool> hideLiveViewerCount;
  /// Specifies the recording behavior for the live input. Set this value to `off` to prevent a recording. Set the value to `automatic` to begin a recording and transition to on-demand after Stream Live stops receiving input.
  /// Available values: "off", "automatic".
  final pulumi.Input<String> mode;
  /// Indicates if a video using the live input has the `requireSignedURLs` property set. Also enforces access controls on any video recording of the livestream with the live input.
  final pulumi.Input<bool> requireSignedUrls;
  /// Determines the amount of time a live input configured in `automatic` mode should wait before a recording transitions from live to on-demand. `0` is recommended for most use cases and indicates the platform default should be used.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GetStreamLiveInputRecording].
  /// [allowedOrigins] Lists the origins allowed to display videos created with this input. Enter allowed origin domains in an array and use `*` for wildcard subdomains. An empty array allows videos to be viewed on any origin.
  /// [hideLiveViewerCount] Disables reporting the number of live viewers when this property is set to `true`.
  /// [mode] Specifies the recording behavior for the live input. Set this value to `off` to prevent a recording. Set the value to `automatic` to begin a recording and transition to on-demand after Stream Live stops receiving input.
  /// [requireSignedUrls] Indicates if a video using the live input has the `requireSignedURLs` property set. Also enforces access controls on any video recording of the livestream with the live input.
  /// [timeoutSeconds] Determines the amount of time a live input configured in `automatic` mode should wait before a recording transitions from live to on-demand. `0` is recommended for most use cases and indicates the platform default should be used.
  const GetStreamLiveInputRecording({
    required this.allowedOrigins,
    required this.hideLiveViewerCount,
    required this.mode,
    required this.requireSignedUrls,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'hideLiveViewerCount': hideLiveViewerCount,
      'mode': mode,
      'requireSignedUrls': requireSignedUrls,
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetStreamLiveInputRecording.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputRecording(
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      hideLiveViewerCount: pulumi.Input.fromValue(map['hideLiveViewerCount'] as bool),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      requireSignedUrls: pulumi.Input.fromValue(map['requireSignedUrls'] as bool),
      timeoutSeconds: pulumi.Input.fromValue((map['timeoutSeconds'] as num).toInt()),
    );
  }
}
