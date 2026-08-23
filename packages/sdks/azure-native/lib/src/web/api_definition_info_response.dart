// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the formal API definition for the app.
class ApiDefinitionInfoResponse {
  /// The URL of the API definition.
  final pulumi.Input<String>? url;

  /// Creates a new [ApiDefinitionInfoResponse].
  /// [url] The URL of the API definition.
  const ApiDefinitionInfoResponse({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory ApiDefinitionInfoResponse.fromMap(Map<String, dynamic> map) {
    return ApiDefinitionInfoResponse(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
