// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a window of time using two timestamps: `earliest` and `latest`.
class UpcomingMaintenanceTimeWindowResponse {
  final pulumi.Input<String> earliest;
  final pulumi.Input<String> latest;

  /// Creates a new [UpcomingMaintenanceTimeWindowResponse].
  /// [earliest] Required.
  /// [latest] Required.
  const UpcomingMaintenanceTimeWindowResponse({
    required this.earliest,
    required this.latest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliest': earliest,
      'latest': latest,
    };
  }

  factory UpcomingMaintenanceTimeWindowResponse.fromMap(Map<String, dynamic> map) {
    return UpcomingMaintenanceTimeWindowResponse(
      earliest: pulumi.Input.fromValue(map['earliest'] as String),
      latest: pulumi.Input.fromValue(map['latest'] as String),
    );
  }
}

