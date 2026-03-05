// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Run service. Learn more at https://cloud.google.com/run.
class CloudRunResponse {
  /// The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final pulumi.Input<String> location;
  /// The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final pulumi.Input<String> serviceName;

  /// Creates a new [CloudRunResponse].
  /// [location] The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  /// [serviceName] The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  CloudRunResponse({
    required this.location,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'serviceName': serviceName,
    };
  }

  factory CloudRunResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunResponse(
      location: pulumi.Input.fromValue(map['location'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

