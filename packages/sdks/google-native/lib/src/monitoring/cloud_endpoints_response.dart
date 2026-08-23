// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Endpoints service. Learn more at https://cloud.google.com/endpoints.
class CloudEndpointsResponse {
  /// The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource (https://cloud.google.com/monitoring/api/resources#tag_api).
  final pulumi.Input<String> service;

  /// Creates a new [CloudEndpointsResponse].
  /// [service] The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource (https://cloud.google.com/monitoring/api/resources#tag_api).
  const CloudEndpointsResponse({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory CloudEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return CloudEndpointsResponse(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
