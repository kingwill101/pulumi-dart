// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
class L2ConnectionsPropertiesEdgeSite {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [L2ConnectionsPropertiesEdgeSite].
  /// [id] Resource ID.
  const L2ConnectionsPropertiesEdgeSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory L2ConnectionsPropertiesEdgeSite.fromMap(Map<String, dynamic> map) {
    return L2ConnectionsPropertiesEdgeSite(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
