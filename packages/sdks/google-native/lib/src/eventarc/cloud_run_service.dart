// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Cloud Run service destination.
class CloudRunService {
  /// Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final pulumi.Input<String>? path;
  /// The region the Cloud Run service is deployed in.
  final pulumi.Input<String> region;
  /// The name of the Cloud run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed.
  final pulumi.Input<String> service;

  /// Creates a new [CloudRunService].
  /// [path] Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  /// [region] The region the Cloud Run service is deployed in.
  /// [service] The name of the Cloud run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project of the trigger object can be addressed.
  CloudRunService({
    this.path,
    required this.region,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'region': region,
      'service': service,
    };
  }

  factory CloudRunService.fromMap(Map<String, dynamic> map) {
    return CloudRunService(
      path: map['path'] == null ? null : (map['path']! as String).input(),
      region: (map['region'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

