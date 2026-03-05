// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_error_details.dart';

class PreventionDiscoveryConfigError {
  /// A list of messages that carry the error details.
  final pulumi.Input<PreventionDiscoveryConfigErrorDetails>? details;
  /// The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  final pulumi.Input<String>? timestamp;

  /// Creates a new [PreventionDiscoveryConfigError].
  /// [details] A list of messages that carry the error details.
  /// [timestamp] The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  PreventionDiscoveryConfigError({
    this.details,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigErrorDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'timestamp': ?timestamp,
    };
  }

  factory PreventionDiscoveryConfigError.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigError(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigErrorDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

