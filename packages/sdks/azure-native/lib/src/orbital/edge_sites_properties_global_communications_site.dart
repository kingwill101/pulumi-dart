// ignore_for_file: unused_element, unnecessary_cast


/// A reference to global communications site.
class EdgeSitesPropertiesGlobalCommunicationsSite {
  /// Resource ID.
  final String id;

  /// Creates a new [EdgeSitesPropertiesGlobalCommunicationsSite].
  /// [id] Resource ID.
  EdgeSitesPropertiesGlobalCommunicationsSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory EdgeSitesPropertiesGlobalCommunicationsSite.fromMap(Map<String, dynamic> map) {
    return EdgeSitesPropertiesGlobalCommunicationsSite(
      id: map['id'] as String,
    );
  }
}

