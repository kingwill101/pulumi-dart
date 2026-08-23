// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_windows_based_sli_good_total_ratio_threshold_basic_sli_performance_availability.dart';
import 'slo_windows_based_sli_good_total_ratio_threshold_basic_sli_performance_latency.dart';

class SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance {
  /// Availability based SLI, dervied from count of requests made to this service that return successfully.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability>? availability;
  /// Parameters for a latency threshold SLI.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency>? latency;
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

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance].
  /// [availability] Availability based SLI, dervied from count of requests made to this service that return successfully.
  /// [latency] Parameters for a latency threshold SLI.
  /// [locations] An optional set of locations to which this SLI is relevant.
  /// [methods] An optional set of RPCs to which this SLI is relevant.
  /// [versions] The set of API versions to which this SLI is relevant.
  const SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance({
    this.availability,
    this.latency,
    this.locations,
    this.methods,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability, Map<String, dynamic>>(availability, (value) => value.toMap()),
      'latency': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency, Map<String, dynamic>>(latency, (value) => value.toMap()),
      'locations': ?locations,
      'methods': ?methods,
      'versions': ?versions,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance(
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      latency: (() { final guardedValue = map['latency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
