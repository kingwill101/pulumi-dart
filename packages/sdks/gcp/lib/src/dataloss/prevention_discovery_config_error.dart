// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_error_details.dart';

class PreventionDiscoveryConfigError {
  /// A list of messages that carry the error details.
  final PreventionDiscoveryConfigErrorDetails? details;
  /// The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  final String? timestamp;

  /// Creates a new [PreventionDiscoveryConfigError].
  /// [details] A list of messages that carry the error details.
  /// [timestamp] The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  PreventionDiscoveryConfigError({
    this.details,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details == null ? null : details!.toMap(),
      'timestamp': ?timestamp,
    };
  }

  factory PreventionDiscoveryConfigError.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigError(
      details: map['details'] == null ? null : PreventionDiscoveryConfigErrorDetails.fromMap((map['details'] as Map).cast<String, dynamic>()),
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}

