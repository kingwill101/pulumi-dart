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
  NotificationEndpoint({
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
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      notificationDestination: map['notificationDestination'] == null ? null : (map['notificationDestination'] as String).input(),
    );
  }
}

