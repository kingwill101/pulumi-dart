// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_capture_description_destination.dart';

class EventHubCaptureDescription {
  /// A `destination` block as defined below.
  final pulumi.Input<EventHubCaptureDescriptionDestination> destination;

  /// Specifies if the Capture Description is Enabled.
  final pulumi.Input<bool> enabled;

  /// Specifies the Encoding used for the Capture Description. Possible values are `Avro` and `AvroDeflate`.
  final pulumi.Input<String> encoding;

  /// Specifies the time interval in seconds at which the capture will happen. Values can be between `60` and `900` seconds. Defaults to `300` seconds.
  final pulumi.Input<int>? intervalInSeconds;

  /// Specifies the amount of data built up in your EventHub before a Capture Operation occurs. Value should be between `10485760` and `524288000` bytes. Defaults to `314572800` bytes.
  final pulumi.Input<int>? sizeLimitInBytes;

  /// Specifies if empty files should not be emitted if no events occur during the Capture time window. Defaults to `false`.
  final pulumi.Input<bool>? skipEmptyArchives;

  /// Creates a new [EventHubCaptureDescription].
  /// [destination] A `destination` block as defined below.
  /// [enabled] Specifies if the Capture Description is Enabled.
  /// [encoding] Specifies the Encoding used for the Capture Description. Possible values are `Avro` and `AvroDeflate`.
  /// [intervalInSeconds] Specifies the time interval in seconds at which the capture will happen. Values can be between `60` and `900` seconds. Defaults to `300` seconds.
  /// [sizeLimitInBytes] Specifies the amount of data built up in your EventHub before a Capture Operation occurs. Value should be between `10485760` and `524288000` bytes. Defaults to `314572800` bytes.
  /// [skipEmptyArchives] Specifies if empty files should not be emitted if no events occur during the Capture time window. Defaults to `false`.
  EventHubCaptureDescription({
    required this.destination,
    required this.enabled,
    required this.encoding,
    this.intervalInSeconds,
    this.sizeLimitInBytes,
    this.skipEmptyArchives,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination':
          pulumi.Input.mapInputValue<
            EventHubCaptureDescriptionDestination,
            Map<String, dynamic>
          >(destination, (value) => value.toMap()),
      'enabled': enabled,
      'encoding': encoding,
      'intervalInSeconds': ?intervalInSeconds,
      'sizeLimitInBytes': ?sizeLimitInBytes,
      'skipEmptyArchives': ?skipEmptyArchives,
    };
  }

  factory EventHubCaptureDescription.fromMap(Map<String, dynamic> map) {
    return EventHubCaptureDescription(
      destination: pulumi.Input.fromValue(
        EventHubCaptureDescriptionDestination.fromMap(
          (map['destination']! as Map).cast<String, dynamic>(),
        ),
      ),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      intervalInSeconds: (() {
        final guardedValue = map['intervalInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sizeLimitInBytes: (() {
        final guardedValue = map['sizeLimitInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      skipEmptyArchives: (() {
        final guardedValue = map['skipEmptyArchives'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
