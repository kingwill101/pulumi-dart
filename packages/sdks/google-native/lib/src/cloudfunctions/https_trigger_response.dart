// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes HttpsTrigger, could be used to connect web hooks to function.
class HttpsTriggerResponse {
  /// The security level for the function.
  final pulumi.Input<String> securityLevel;

  /// The deployed url for the function.
  final pulumi.Input<String> url;

  /// Creates a new [HttpsTriggerResponse].
  /// [securityLevel] The security level for the function.
  /// [url] The deployed url for the function.
  HttpsTriggerResponse({required this.securityLevel, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'securityLevel': securityLevel, 'url': url};
  }

  factory HttpsTriggerResponse.fromMap(Map<String, dynamic> map) {
    return HttpsTriggerResponse(
      securityLevel: pulumi.Input.fromValue(map['securityLevel'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
