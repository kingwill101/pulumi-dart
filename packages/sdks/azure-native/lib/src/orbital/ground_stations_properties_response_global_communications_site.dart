// ignore_for_file: unused_element, unnecessary_cast


/// A reference to global communications site.
class GroundStationsPropertiesResponseGlobalCommunicationsSite {
  /// Resource ID.
  final String id;

  /// Creates a new [GroundStationsPropertiesResponseGlobalCommunicationsSite].
  /// [id] Resource ID.
  GroundStationsPropertiesResponseGlobalCommunicationsSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GroundStationsPropertiesResponseGlobalCommunicationsSite.fromMap(Map<String, dynamic> map) {
    return GroundStationsPropertiesResponseGlobalCommunicationsSite(
      id: map['id'] as String,
    );
  }
}

