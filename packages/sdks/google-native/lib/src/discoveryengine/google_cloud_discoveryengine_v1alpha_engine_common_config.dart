// ignore_for_file: unused_element, unnecessary_cast


/// Common configurations for an Engine.
class GoogleCloudDiscoveryengineV1alphaEngineCommonConfig {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  final String? companyName;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineCommonConfig].
  /// [companyName] The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  GoogleCloudDiscoveryengineV1alphaEngineCommonConfig({
    this.companyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': ?companyName,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineCommonConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineCommonConfig(
      companyName: map['companyName'] == null ? null : map['companyName'] as String,
    );
  }
}

