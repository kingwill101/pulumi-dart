// ignore_for_file: unused_element, unnecessary_cast


class GetHubGcmCredential {
  /// The API Key associated with the Google Cloud Messaging service.
  final String apiKey;

  /// Creates a new [GetHubGcmCredential].
  /// [apiKey] The API Key associated with the Google Cloud Messaging service.
  GetHubGcmCredential({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory GetHubGcmCredential.fromMap(Map<String, dynamic> map) {
    return GetHubGcmCredential(
      apiKey: map['apiKey'] as String,
    );
  }
}

