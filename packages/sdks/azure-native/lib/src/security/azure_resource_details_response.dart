// ignore_for_file: unused_element, unnecessary_cast


/// Details of the Azure resource that was assessed
class AzureResourceDetailsResponse {
  /// Azure resource Id of the assessed resource
  final String id;
  /// The platform where the assessed resource resides
  /// Expected value is 'Azure'.
  final String source;

  /// Creates a new [AzureResourceDetailsResponse].
  /// [id] Azure resource Id of the assessed resource
  /// [source] The platform where the assessed resource resides
  AzureResourceDetailsResponse({
    required this.id,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'source': source,
    };
  }

  factory AzureResourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceDetailsResponse(
      id: map['id'] as String,
      source: map['source'] as String,
    );
  }
}

