// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_export.dart';
import 'google_privacy_dlp_v2_pub_sub_notification.dart';

/// A task to execute when a data profile has been generated.
class GooglePrivacyDlpV2DataProfileAction {
  /// Export data profiles into a provided location.
  final pulumi.Input<GooglePrivacyDlpV2Export>? exportData;
  /// Publish a message into the Pub/Sub topic.
  final pulumi.Input<GooglePrivacyDlpV2PubSubNotification>? pubSubNotification;

  /// Creates a new [GooglePrivacyDlpV2DataProfileAction].
  /// [exportData] Export data profiles into a provided location.
  /// [pubSubNotification] Publish a message into the Pub/Sub topic.
  const GooglePrivacyDlpV2DataProfileAction({
    this.exportData,
    this.pubSubNotification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportData': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Export, Map<String, dynamic>>(exportData, (value) => value.toMap()),
      'pubSubNotification': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2PubSubNotification, Map<String, dynamic>>(pubSubNotification, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DataProfileAction.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfileAction(
      exportData: (() { final guardedValue = map['exportData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Export.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pubSubNotification: (() { final guardedValue = map['pubSubNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2PubSubNotification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

