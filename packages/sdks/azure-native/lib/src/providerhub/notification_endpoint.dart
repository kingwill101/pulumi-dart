// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationEndpoint {
  /// The locations.
  final pulumi.Input<List<String>>? locations;
  /// The notification destination.
  final pulumi.Input<String>? notificationDestination;

  /// Creates a new [NotificationEndpoint].
  /// [locations] The locations.
  /// [notificationDestination] The notification destination.
  const NotificationEndpoint({
    this.locations,
    this.notificationDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'notificationDestination': ?notificationDestination,
    };
  }

  factory NotificationEndpoint.fromMap(Map<String, dynamic> map) {
    return NotificationEndpoint(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notificationDestination: (() { final guardedValue = map['notificationDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

