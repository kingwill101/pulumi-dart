// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to an Microsoft.Orbital/groundStations resource to route traffic for.
class L2ConnectionsPropertiesGroundStation {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [L2ConnectionsPropertiesGroundStation].
  /// [id] Resource ID.
  L2ConnectionsPropertiesGroundStation({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory L2ConnectionsPropertiesGroundStation.fromMap(
    Map<String, dynamic> map,
  ) {
    return L2ConnectionsPropertiesGroundStation(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
