// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'latency_criteria_response.dart';

/// An SLI measuring performance on a well-known service type. Performance will be computed on the basis of pre-defined metrics. The type of the service_resource determines the metrics to use and the service_resource.labels and metric_labels are used to construct a monitoring filter to filter that metric down to just the data relevant to this service.
class BasicSliResponse {
  /// Good service is defined to be the count of requests made to this service that return successfully.
  final pulumi.Input<Map<String, dynamic>> availability;
  /// Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.
  final pulumi.Input<LatencyCriteriaResponse> latency;
  /// OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don't support breaking down by location, setting this field will result in an error.
  final pulumi.Input<List<String>> location;
  /// OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service's methods. For service types that don't support breaking down by method, setting this field will result in an error.
  final pulumi.Input<List<String>> method;
  /// OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don't support breaking down by version, setting this field will result in an error.
  final pulumi.Input<List<String>> version;

  /// Creates a new [BasicSliResponse].
  /// [availability] Good service is defined to be the count of requests made to this service that return successfully.
  /// [latency] Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.
  /// [location] OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don't support breaking down by location, setting this field will result in an error.
  /// [method] OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service's methods. For service types that don't support breaking down by method, setting this field will result in an error.
  /// [version] OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don't support breaking down by version, setting this field will result in an error.
  BasicSliResponse({
    required this.availability,
    required this.latency,
    required this.location,
    required this.method,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': availability,
      'latency': pulumi.Input.mapInputValue<LatencyCriteriaResponse, Map<String, dynamic>>(latency, (value) => value.toMap()),
      'location': location,
      'method': method,
      'version': version,
    };
  }

  factory BasicSliResponse.fromMap(Map<String, dynamic> map) {
    return BasicSliResponse(
      availability: ((map['availability'] as Map).cast<String, dynamic>()).input(),
      latency: (LatencyCriteriaResponse.fromMap((map['latency'] as Map).cast<String, dynamic>())).input(),
      location: ((map['location'] as List).cast<String>()).input(),
      method: ((map['method'] as List).cast<String>()).input(),
      version: ((map['version'] as List).cast<String>()).input(),
    );
  }
}

