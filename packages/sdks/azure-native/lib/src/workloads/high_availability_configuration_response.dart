// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the high availability configuration.
class HighAvailabilityConfigurationResponse {
  /// The high availability type.
  final pulumi.Input<String> highAvailabilityType;

  /// Creates a new [HighAvailabilityConfigurationResponse].
  /// [highAvailabilityType] The high availability type.
  HighAvailabilityConfigurationResponse({
    required this.highAvailabilityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highAvailabilityType': highAvailabilityType,
    };
  }

  factory HighAvailabilityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityConfigurationResponse(
      highAvailabilityType: pulumi.Input.fromValue(map['highAvailabilityType'] as String),
    );
  }
}

