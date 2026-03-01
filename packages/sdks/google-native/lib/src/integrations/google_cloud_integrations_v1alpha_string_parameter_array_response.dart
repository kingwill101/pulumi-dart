// ignore_for_file: unused_element, unnecessary_cast


/// This message only contains a field of string array.
class GoogleCloudIntegrationsV1alphaStringParameterArrayResponse {
  /// String array.
  final List<String> stringValues;

  /// Creates a new [GoogleCloudIntegrationsV1alphaStringParameterArrayResponse].
  /// [stringValues] String array.
  GoogleCloudIntegrationsV1alphaStringParameterArrayResponse({
    required this.stringValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringValues': stringValues,
    };
  }

  factory GoogleCloudIntegrationsV1alphaStringParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaStringParameterArrayResponse(
      stringValues: (map['stringValues'] as List).cast<String>(),
    );
  }
}

