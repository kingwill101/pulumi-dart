// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The config for email alert.
class GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse {
  /// The email addresses to send the alert.
  final pulumi.Input<List<String>> userEmails;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse].
  /// [userEmails] The email addresses to send the alert.
  GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse({
    required this.userEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'userEmails': userEmails};
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse(
      userEmails: pulumi.Input.fromValue(
        (map['userEmails'] as List).cast<String>(),
      ),
    );
  }
}
