// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The config for email alert.
class GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig {
  /// The email addresses to send the alert.
  final pulumi.Input<List<String>>? userEmails;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig].
  /// [userEmails] The email addresses to send the alert.
  GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig({
    this.userEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'userEmails': ?userEmails};
  }

  factory GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig(
      userEmails: (() {
        final guardedValue = map['userEmails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
