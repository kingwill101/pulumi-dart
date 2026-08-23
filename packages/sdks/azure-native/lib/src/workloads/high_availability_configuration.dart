// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the high availability configuration.
class HighAvailabilityConfiguration {
  /// The high availability type.
  final pulumi.Input<String> highAvailabilityType;

  /// Creates a new [HighAvailabilityConfiguration].
  /// [highAvailabilityType] The high availability type.
  const HighAvailabilityConfiguration({
    required this.highAvailabilityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highAvailabilityType': highAvailabilityType,
    };
  }

  factory HighAvailabilityConfiguration.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityConfiguration(
      highAvailabilityType: pulumi.Input.fromValue(map['highAvailabilityType'] as String),
    );
  }
}
