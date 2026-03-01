// ignore_for_file: unused_element, unnecessary_cast


class TriggerDestinationCloudRunService {
  /// Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final String? path;
  /// Required. The region the Cloud Run service is deployed in.
  final String? region;
  /// Required. The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed.
  final String service;

  /// Creates a new [TriggerDestinationCloudRunService].
  /// [path] Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  /// [region] Required. The region the Cloud Run service is deployed in.
  /// [service] Required. The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed.
  TriggerDestinationCloudRunService({
    this.path,
    this.region,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'region': ?region,
      'service': service,
    };
  }

  factory TriggerDestinationCloudRunService.fromMap(Map<String, dynamic> map) {
    return TriggerDestinationCloudRunService(
      path: map['path'] == null ? null : map['path'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      service: map['service'] as String,
    );
  }
}

