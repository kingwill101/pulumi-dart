// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_basic_sli_availability.dart';
import 'slo_basic_sli_latency.dart';

class SloBasicSli {
  /// Availability based SLI, dervied from count of requests made to this service that return successfully.
  /// Structure is documented below.
  final pulumi.Input<SloBasicSliAvailability>? availability;
  /// Parameters for a latency threshold SLI.
  /// Structure is documented below.
  final pulumi.Input<SloBasicSliLatency>? latency;
  /// An optional set of locations to which this SLI is relevant.
  /// Telemetry from other locations will not be used to calculate
  /// performance for this SLI. If omitted, this SLI applies to all
  /// locations in which the Service has activity. For service types
  /// that don't support breaking down by location, setting this
  /// field will result in an error.
  final pulumi.Input<List<String>>? locations;
  /// An optional set of RPCs to which this SLI is relevant.
  /// Telemetry from other methods will not be used to calculate
  /// performance for this SLI. If omitted, this SLI applies to all
  /// the Service's methods. For service types that don't support
  /// breaking down by method, setting this field will result in an
  /// error.
  final pulumi.Input<List<String>>? methods;
  /// The set of API versions to which this SLI is relevant.
  /// Telemetry from other API versions will not be used to
  /// calculate performance for this SLI. If omitted,
  /// this SLI applies to all API versions. For service types
  /// that don't support breaking down by version, setting this
  /// field will result in an error.
  final pulumi.Input<List<String>>? versions;

  /// Creates a new [SloBasicSli].
  /// [availability] Availability based SLI, dervied from count of requests made to this service that return successfully.
  /// [latency] Parameters for a latency threshold SLI.
  /// [locations] An optional set of locations to which this SLI is relevant.
  /// [methods] An optional set of RPCs to which this SLI is relevant.
  /// [versions] The set of API versions to which this SLI is relevant.
  SloBasicSli({
    this.availability,
    this.latency,
    this.locations,
    this.methods,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?pulumi.Input.mapOptionalInputValue<SloBasicSliAvailability, Map<String, dynamic>>(availability, (value) => value.toMap()),
      'latency': ?pulumi.Input.mapOptionalInputValue<SloBasicSliLatency, Map<String, dynamic>>(latency, (value) => value.toMap()),
      'locations': ?locations,
      'methods': ?methods,
      'versions': ?versions,
    };
  }

  factory SloBasicSli.fromMap(Map<String, dynamic> map) {
    return SloBasicSli(
      availability: map['availability'] == null ? null : (SloBasicSliAvailability.fromMap((map['availability']! as Map).cast<String, dynamic>())).input(),
      latency: map['latency'] == null ? null : (SloBasicSliLatency.fromMap((map['latency']! as Map).cast<String, dynamic>())).input(),
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      methods: map['methods'] == null ? null : ((map['methods']! as List).cast<String>()).input(),
      versions: map['versions'] == null ? null : ((map['versions']! as List).cast<String>()).input(),
    );
  }
}

