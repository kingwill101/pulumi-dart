// ignore_for_file: unused_element, unnecessary_cast


class ThirdPartyExtensionResponse {
  /// Name of third party extension.
  final String? name;

  /// Creates a new [ThirdPartyExtensionResponse].
  /// [name] Name of third party extension.
  ThirdPartyExtensionResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ThirdPartyExtensionResponse.fromMap(Map<String, dynamic> map) {
    return ThirdPartyExtensionResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

