// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_status_response_dialogflow_v2beta1.dart';

/// The status of a reload attempt.
class GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse {
  /// The status of a reload attempt or the initial load.
  final pulumi.Input<GoogleRpcStatusResponseDialogflowV2beta1> status;
  /// The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  final pulumi.Input<String> time;

  /// Creates a new [GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse].
  /// [status] The status of a reload attempt or the initial load.
  /// [time] The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse({
    required this.status,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': pulumi.Input.mapInputValue<GoogleRpcStatusResponseDialogflowV2beta1, Map<String, dynamic>>(status, (value) => value.toMap()),
      'time': time,
    };
  }

  factory GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse(
      status: pulumi.Input.fromValue(GoogleRpcStatusResponseDialogflowV2beta1.fromMap((map['status']! as Map).cast<String, dynamic>())),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

