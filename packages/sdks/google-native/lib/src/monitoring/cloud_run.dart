// ignore_for_file: unused_element, unnecessary_cast


/// Cloud Run service. Learn more at https://cloud.google.com/run.
class CloudRun {
  /// The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String? location;
  /// The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String? serviceName;

  /// Creates a new [CloudRun].
  /// [location] The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  /// [serviceName] The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  CloudRun({
    this.location,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'serviceName': ?serviceName,
    };
  }

  factory CloudRun.fromMap(Map<String, dynamic> map) {
    return CloudRun(
      location: map['location'] == null ? null : map['location'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

