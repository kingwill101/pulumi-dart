// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagementURI for the Management Server resource.
class ManagementURIResponse {
  /// The ManagementServer AGM/RD API URL.
  final pulumi.Input<String> api;
  /// The ManagementServer AGM/RD WebUI URL.
  final pulumi.Input<String> webUi;

  /// Creates a new [ManagementURIResponse].
  /// [api] The ManagementServer AGM/RD API URL.
  /// [webUi] The ManagementServer AGM/RD WebUI URL.
  const ManagementURIResponse({
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
      api: pulumi.Input.fromValue(map['api'] as String),
      webUi: pulumi.Input.fromValue(map['webUi'] as String),
    );
  }
}

