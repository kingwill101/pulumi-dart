// ignore_for_file: unused_element, unnecessary_cast


/// A reference to global communications site.
class GroundStationsPropertiesGlobalCommunicationsSite {
  /// Resource ID.
  final String id;

  /// Creates a new [GroundStationsPropertiesGlobalCommunicationsSite].
  /// [id] Resource ID.
  GroundStationsPropertiesGlobalCommunicationsSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GroundStationsPropertiesGlobalCommunicationsSite.fromMap(Map<String, dynamic> map) {
    return GroundStationsPropertiesGlobalCommunicationsSite(
      id: map['id'] as String,
    );
  }
}

