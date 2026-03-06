// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_export_response.dart';
import 'google_privacy_dlp_v2_pub_sub_notification_response.dart';

/// A task to execute when a data profile has been generated.
class GooglePrivacyDlpV2DataProfileActionResponse {
  /// Export data profiles into a provided location.
  final pulumi.Input<GooglePrivacyDlpV2ExportResponse> exportData;
  /// Publish a message into the Pub/Sub topic.
  final pulumi.Input<GooglePrivacyDlpV2PubSubNotificationResponse> pubSubNotification;

  /// Creates a new [GooglePrivacyDlpV2DataProfileActionResponse].
  /// [exportData] Export data profiles into a provided location.
  /// [pubSubNotification] Publish a message into the Pub/Sub topic.
  const GooglePrivacyDlpV2DataProfileActionResponse({
    required this.exportData,
    required this.pubSubNotification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportData': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ExportResponse, Map<String, dynamic>>(exportData, (value) => value.toMap()),
      'pubSubNotification': pulumi.Input.mapInputValue<GooglePrivacyDlpV2PubSubNotificationResponse, Map<String, dynamic>>(pubSubNotification, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DataProfileActionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfileActionResponse(
      exportData: pulumi.Input.fromValue(GooglePrivacyDlpV2ExportResponse.fromMap((map['exportData']! as Map).cast<String, dynamic>())),
      pubSubNotification: pulumi.Input.fromValue(GooglePrivacyDlpV2PubSubNotificationResponse.fromMap((map['pubSubNotification']! as Map).cast<String, dynamic>())),
    );
  }
}

