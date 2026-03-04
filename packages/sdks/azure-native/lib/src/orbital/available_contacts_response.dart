// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_contacts_response_spacecraft.dart';

/// Customer retrieves list of Available Contacts for a spacecraft resource. Later, one of the available contact can be selected to create a contact.
class AvailableContactsResponse {
  /// Azimuth of the antenna at the end of the contact in decimal degrees.
  final pulumi.Input<double> endAzimuthDegrees;

  /// Spacecraft elevation above the horizon at contact end.
  final pulumi.Input<double> endElevationDegrees;

  /// Name of Azure Ground Station.
  final pulumi.Input<String> groundStationName;

  /// Maximum elevation of the antenna during the contact in decimal degrees.
  final pulumi.Input<double> maximumElevationDegrees;

  /// Time to lost receiving a signal (ISO 8601 UTC standard).
  final pulumi.Input<String> rxEndTime;

  /// Earliest time to receive a signal (ISO 8601 UTC standard).
  final pulumi.Input<String> rxStartTime;

  /// The reference to the spacecraft resource.
  final pulumi.Input<AvailableContactsResponseSpacecraft>? spacecraft;

  /// Azimuth of the antenna at the start of the contact in decimal degrees.
  final pulumi.Input<double> startAzimuthDegrees;

  /// Spacecraft elevation above the horizon at contact start.
  final pulumi.Input<double> startElevationDegrees;

  /// Time at which antenna transmit will be disabled (ISO 8601 UTC standard).
  final pulumi.Input<String> txEndTime;

  /// Time at which antenna transmit will be enabled (ISO 8601 UTC standard).
  final pulumi.Input<String> txStartTime;

  /// Creates a new [AvailableContactsResponse].
  /// [endAzimuthDegrees] Azimuth of the antenna at the end of the contact in decimal degrees.
  /// [endElevationDegrees] Spacecraft elevation above the horizon at contact end.
  /// [groundStationName] Name of Azure Ground Station.
  /// [maximumElevationDegrees] Maximum elevation of the antenna during the contact in decimal degrees.
  /// [rxEndTime] Time to lost receiving a signal (ISO 8601 UTC standard).
  /// [rxStartTime] Earliest time to receive a signal (ISO 8601 UTC standard).
  /// [spacecraft] The reference to the spacecraft resource.
  /// [startAzimuthDegrees] Azimuth of the antenna at the start of the contact in decimal degrees.
  /// [startElevationDegrees] Spacecraft elevation above the horizon at contact start.
  /// [txEndTime] Time at which antenna transmit will be disabled (ISO 8601 UTC standard).
  /// [txStartTime] Time at which antenna transmit will be enabled (ISO 8601 UTC standard).
  AvailableContactsResponse({
    required this.endAzimuthDegrees,
    required this.endElevationDegrees,
    required this.groundStationName,
    required this.maximumElevationDegrees,
    required this.rxEndTime,
    required this.rxStartTime,
    this.spacecraft,
    required this.startAzimuthDegrees,
    required this.startElevationDegrees,
    required this.txEndTime,
    required this.txStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endAzimuthDegrees': endAzimuthDegrees,
      'endElevationDegrees': endElevationDegrees,
      'groundStationName': groundStationName,
      'maximumElevationDegrees': maximumElevationDegrees,
      'rxEndTime': rxEndTime,
      'rxStartTime': rxStartTime,
      'spacecraft':
          ?pulumi.Input.mapOptionalInputValue<
            AvailableContactsResponseSpacecraft,
            Map<String, dynamic>
          >(spacecraft, (value) => value.toMap()),
      'startAzimuthDegrees': startAzimuthDegrees,
      'startElevationDegrees': startElevationDegrees,
      'txEndTime': txEndTime,
      'txStartTime': txStartTime,
    };
  }

  factory AvailableContactsResponse.fromMap(Map<String, dynamic> map) {
    return AvailableContactsResponse(
      endAzimuthDegrees: pulumi.Input.fromValue(
        map['endAzimuthDegrees'] as double,
      ),
      endElevationDegrees: pulumi.Input.fromValue(
        map['endElevationDegrees'] as double,
      ),
      groundStationName: pulumi.Input.fromValue(
        map['groundStationName'] as String,
      ),
      maximumElevationDegrees: pulumi.Input.fromValue(
        map['maximumElevationDegrees'] as double,
      ),
      rxEndTime: pulumi.Input.fromValue(map['rxEndTime'] as String),
      rxStartTime: pulumi.Input.fromValue(map['rxStartTime'] as String),
      spacecraft: (() {
        final guardedValue = map['spacecraft'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AvailableContactsResponseSpacecraft.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      startAzimuthDegrees: pulumi.Input.fromValue(
        map['startAzimuthDegrees'] as double,
      ),
      startElevationDegrees: pulumi.Input.fromValue(
        map['startElevationDegrees'] as double,
      ),
      txEndTime: pulumi.Input.fromValue(map['txEndTime'] as String),
      txStartTime: pulumi.Input.fromValue(map['txStartTime'] as String),
    );
  }
}
