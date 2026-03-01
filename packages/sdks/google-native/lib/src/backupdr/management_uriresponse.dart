// ignore_for_file: unused_element, unnecessary_cast


/// ManagementURI for the Management Server resource.
class ManagementURIResponse {
  /// The ManagementServer AGM/RD API URL.
  final String api;
  /// The ManagementServer AGM/RD WebUI URL.
  final String webUi;

  /// Creates a new [ManagementURIResponse].
  /// [api] The ManagementServer AGM/RD API URL.
  /// [webUi] The ManagementServer AGM/RD WebUI URL.
  ManagementURIResponse({
    required this.api,
    required this.webUi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': api,
      'webUi': webUi,
    };
  }

  factory ManagementURIResponse.fromMap(Map<String, dynamic> map) {
    return ManagementURIResponse(
      api: map['api'] as String,
      webUi: map['webUi'] as String,
    );
  }
}

