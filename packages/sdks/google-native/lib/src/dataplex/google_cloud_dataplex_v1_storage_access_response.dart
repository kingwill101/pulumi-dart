// ignore_for_file: unused_element, unnecessary_cast


/// Describes the access mechanism of the data within its storage location.
class GoogleCloudDataplexV1StorageAccessResponse {
  /// Describes the read access mechanism of the data. Not user settable.
  final String read;

  /// Creates a new [GoogleCloudDataplexV1StorageAccessResponse].
  /// [read] Describes the read access mechanism of the data. Not user settable.
  GoogleCloudDataplexV1StorageAccessResponse({
    required this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
    };
  }

  factory GoogleCloudDataplexV1StorageAccessResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageAccessResponse(
      read: map['read'] as String,
    );
  }
}

