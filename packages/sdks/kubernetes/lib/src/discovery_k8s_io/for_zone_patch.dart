// ignore_for_file: unused_element, unnecessary_cast


/// ForZone provides information about which zones should consume this endpoint.
class ForZonePatch {
  /// name represents the name of the zone.
  final String? name;

  /// Creates a new [ForZonePatch].
  /// [name] name represents the name of the zone.
  ForZonePatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ForZonePatch.fromMap(Map<String, dynamic> map) {
    return ForZonePatch(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

