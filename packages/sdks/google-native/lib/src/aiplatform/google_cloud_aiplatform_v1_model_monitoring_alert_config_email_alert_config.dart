// ignore_for_file: unused_element, unnecessary_cast


/// The config for email alert.
class GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig {
  /// The email addresses to send the alert.
  final List<String>? userEmails;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig].
  /// [userEmails] The email addresses to send the alert.
  GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig({
    this.userEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userEmails': ?userEmails,
    };
  }

  factory GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig(
      userEmails: map['userEmails'] == null ? null : (map['userEmails'] as List).cast<String>(),
    );
  }
}

