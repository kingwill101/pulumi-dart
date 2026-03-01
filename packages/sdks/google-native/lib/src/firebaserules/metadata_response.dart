// ignore_for_file: unused_element, unnecessary_cast


/// Metadata for a Ruleset.
class MetadataResponse {
  /// Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  final List<String> services;

  /// Creates a new [MetadataResponse].
  /// [services] Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  MetadataResponse({
    required this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'services': services,
    };
  }

  factory MetadataResponse.fromMap(Map<String, dynamic> map) {
    return MetadataResponse(
      services: (map['services'] as List).cast<String>(),
    );
  }
}

