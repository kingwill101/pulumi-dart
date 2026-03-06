// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_status_response.dart';

/// The status of a reload attempt.
class GoogleCloudDialogflowV2DocumentReloadStatusResponse {
  /// The status of a reload attempt or the initial load.
  final pulumi.Input<GoogleRpcStatusResponse> status;
  /// The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  final pulumi.Input<String> time;

  /// Creates a new [GoogleCloudDialogflowV2DocumentReloadStatusResponse].
  /// [status] The status of a reload attempt or the initial load.
  /// [time] The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  const GoogleCloudDialogflowV2DocumentReloadStatusResponse({
    required this.status,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': pulumi.Input.mapInputValue<GoogleRpcStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'time': time,
    };
  }

  factory GoogleCloudDialogflowV2DocumentReloadStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2DocumentReloadStatusResponse(
      status: pulumi.Input.fromValue(GoogleRpcStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

