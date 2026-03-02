// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceTypeExtension {
  /// The endpoint uri.
  final pulumi.Input<String>? endpointUri;
  /// The extension categories.
  final pulumi.Input<List<String>>? extensionCategories;
  /// The timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ResourceTypeExtension].
  /// [endpointUri] The endpoint uri.
  /// [extensionCategories] The extension categories.
  /// [timeout] The timeout.
  ResourceTypeExtension({
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

  factory ResourceTypeExtension.fromMap(Map<String, dynamic> map) {
    return ResourceTypeExtension(
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      extensionCategories: map['extensionCategories'] == null ? null : ((map['extensionCategories']! as List).cast<String>()).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

