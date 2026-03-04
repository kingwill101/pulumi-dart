// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerDestinationCloudRunService {
  /// Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final pulumi.Input<String>? path;

  /// Required. The region the Cloud Run service is deployed in.
  final pulumi.Input<String>? region;

  /// Required. The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed.
  final pulumi.Input<String> service;

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
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
