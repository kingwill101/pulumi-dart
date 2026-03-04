// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Scheduler Trigger configuration
class GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse {
  /// The cron tab of cloud scheduler trigger.
  final pulumi.Input<String> cronTab;

  /// Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations
  final pulumi.Input<String> errorMessage;

  /// The location where associated cloud scheduler job will be created
  final pulumi.Input<String> location;

  /// Service account used by Cloud Scheduler to trigger the integration at scheduled time
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse].
  /// [cronTab] The cron tab of cloud scheduler trigger.
  /// [errorMessage] Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations
  /// [location] The location where associated cloud scheduler job will be created
  /// [serviceAccountEmail] Service account used by Cloud Scheduler to trigger the integration at scheduled time
  GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse({
    required this.cronTab,
    required this.errorMessage,
    required this.location,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronTab': cronTab,
      'errorMessage': errorMessage,
      'location': location,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse(
      cronTab: pulumi.Input.fromValue(map['cronTab'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(
        map['serviceAccountEmail'] as String,
      ),
    );
  }
}
