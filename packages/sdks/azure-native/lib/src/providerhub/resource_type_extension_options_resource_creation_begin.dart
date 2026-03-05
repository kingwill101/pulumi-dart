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
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

