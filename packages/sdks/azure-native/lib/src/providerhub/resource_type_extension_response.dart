// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceTypeExtensionResponse {
  /// The endpoint uri.
  final pulumi.Input<String>? endpointUri;
  /// The extension categories.
  final pulumi.Input<List<String>>? extensionCategories;
  /// The timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ResourceTypeExtensionResponse].
  /// [endpointUri] The endpoint uri.
  /// [extensionCategories] The extension categories.
  /// [timeout] The timeout.
  const ResourceTypeExtensionResponse({
    this.endpointUri,
    this.extensionCategories,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUri': ?endpointUri,
      'extensionCategories': ?extensionCategories,
      'timeout': ?timeout,
    };
  }

  factory ResourceTypeExtensionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeExtensionResponse(
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionCategories: (() { final guardedValue = map['extensionCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
