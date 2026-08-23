// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThirdPartyExtensionResponse {
  /// Name of third party extension.
  final pulumi.Input<String>? name;

  /// Creates a new [ThirdPartyExtensionResponse].
  /// [name] Name of third party extension.
  const ThirdPartyExtensionResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ThirdPartyExtensionResponse.fromMap(Map<String, dynamic> map) {
    return ThirdPartyExtensionResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
