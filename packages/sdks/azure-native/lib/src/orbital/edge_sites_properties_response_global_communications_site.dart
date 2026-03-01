// ignore_for_file: unused_element, unnecessary_cast


/// A reference to global communications site.
class EdgeSitesPropertiesResponseGlobalCommunicationsSite {
  /// Resource ID.
  final String id;

  /// Creates a new [EdgeSitesPropertiesResponseGlobalCommunicationsSite].
  /// [id] Resource ID.
  EdgeSitesPropertiesResponseGlobalCommunicationsSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory EdgeSitesPropertiesResponseGlobalCommunicationsSite.fromMap(Map<String, dynamic> map) {
    return EdgeSitesPropertiesResponseGlobalCommunicationsSite(
      id: map['id'] as String,
    );
  }
}

