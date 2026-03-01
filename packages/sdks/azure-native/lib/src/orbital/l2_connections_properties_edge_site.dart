// ignore_for_file: unused_element, unnecessary_cast


/// A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
class L2ConnectionsPropertiesEdgeSite {
  /// Resource ID.
  final String id;

  /// Creates a new [L2ConnectionsPropertiesEdgeSite].
  /// [id] Resource ID.
  L2ConnectionsPropertiesEdgeSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory L2ConnectionsPropertiesEdgeSite.fromMap(Map<String, dynamic> map) {
    return L2ConnectionsPropertiesEdgeSite(
      id: map['id'] as String,
    );
  }
}

