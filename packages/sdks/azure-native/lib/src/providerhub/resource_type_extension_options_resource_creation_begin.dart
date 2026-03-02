// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource creation begin.
class ResourceTypeExtensionOptionsResourceCreationBegin {
  /// The request.
  final pulumi.Input<List<String>>? request;
  /// The response.
  final pulumi.Input<List<String>>? response;

  /// Creates a new [ResourceTypeExtensionOptionsResourceCreationBegin].
  /// [request] The request.
  /// [response] The response.
  ResourceTypeExtensionOptionsResourceCreationBegin({
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request': ?request,
      'response': ?response,
    };
  }

  factory ResourceTypeExtensionOptionsResourceCreationBegin.fromMap(Map<String, dynamic> map) {
    return ResourceTypeExtensionOptionsResourceCreationBegin(
      request: map['request'] == null ? null : ((map['request'] as List).cast<String>()).input(),
      response: map['response'] == null ? null : ((map['response'] as List).cast<String>()).input(),
    );
  }
}

