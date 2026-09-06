// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource creation begin.
class ResourceTypeExtensionOptionsResourceCreationBegin {
  /// The request.
  final pulumi.Input<List<dynamic>?>? request;
  /// The response.
  final pulumi.Input<List<dynamic>?>? response;

  /// Creates a new [ResourceTypeExtensionOptionsResourceCreationBegin].
  /// [request] The request.
  /// [response] The response.
  const ResourceTypeExtensionOptionsResourceCreationBegin({
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
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
