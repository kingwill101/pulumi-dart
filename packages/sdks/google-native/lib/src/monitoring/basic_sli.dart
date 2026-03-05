// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'latency_criteria.dart';

/// An SLI measuring performance on a well-known service type. Performance will be computed on the basis of pre-defined metrics. The type of the service_resource determines the metrics to use and the service_resource.labels and metric_labels are used to construct a monitoring filter to filter that metric down to just the data relevant to this service.
class BasicSli {
  /// Good service is defined to be the count of requests made to this service that return successfully.
  final pulumi.Input<Map<String, dynamic>>? availability;
  /// Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.
  final pulumi.Input<LatencyCriteria>? latency;
  /// OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don't support breaking down by location, setting this field will result in an error.
  final pulumi.Input<List<String>>? location;
  /// OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service's methods. For service types that don't support breaking down by method, setting this field will result in an error.
  final pulumi.Input<List<String>>? method;
  /// OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don't support breaking down by version, setting this field will result in an error.
  final pulumi.Input<List<String>>? version;

  /// Creates a new [BasicSli].
  /// [availability] Good service is defined to be the count of requests made to this service that return successfully.
  /// [latency] Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.
  /// [location] OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don't support breaking down by location, setting this field will result in an error.
  /// [method] OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service's methods. For service types that don't support breaking down by method, setting this field will result in an error.
  /// [version] OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don't support breaking down by version, setting this field will result in an error.
  BasicSli({
    this.availability,
    this.latency,
    this.location,
    this.method,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?availability,
      'latency': ?pulumi.Input.mapOptionalInputValue<LatencyCriteria, Map<String, dynamic>>(latency, (value) => value.toMap()),
      'location': ?location,
      'method': ?method,
      'version': ?version,
    };
  }

  factory BasicSli.fromMap(Map<String, dynamic> map) {
    return BasicSli(
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      latency: (() { final guardedValue = map['latency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LatencyCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

