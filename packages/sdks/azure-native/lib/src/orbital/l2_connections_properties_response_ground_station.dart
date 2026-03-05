// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to an Microsoft.Orbital/groundStations resource to route traffic for.
class L2ConnectionsPropertiesResponseGroundStation {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [L2ConnectionsPropertiesResponseGroundStation].
  /// [id] Resource ID.
  L2ConnectionsPropertiesResponseGroundStation({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory L2ConnectionsPropertiesResponseGroundStation.fromMap(Map<String, dynamic> map) {
    return L2ConnectionsPropertiesResponseGroundStation(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

