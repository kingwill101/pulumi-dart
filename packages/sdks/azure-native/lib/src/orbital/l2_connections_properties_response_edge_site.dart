// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
class L2ConnectionsPropertiesResponseEdgeSite {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [L2ConnectionsPropertiesResponseEdgeSite].
  /// [id] Resource ID.
  const L2ConnectionsPropertiesResponseEdgeSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory L2ConnectionsPropertiesResponseEdgeSite.fromMap(Map<String, dynamic> map) {
    return L2ConnectionsPropertiesResponseEdgeSite(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
