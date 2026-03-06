// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource creation begin.
class ResourceTypeExtensionOptionsResourceCreationBeginResponse {
  /// The request.
  final pulumi.Input<List<String>>? request;
  /// The response.
  final pulumi.Input<List<String>>? response;

  /// Creates a new [ResourceTypeExtensionOptionsResourceCreationBeginResponse].
  /// [request] The request.
  /// [response] The response.
  const ResourceTypeExtensionOptionsResourceCreationBeginResponse({
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request': ?request,
      'response': ?response,
    };
  }

  factory ResourceTypeExtensionOptionsResourceCreationBeginResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeExtensionOptionsResourceCreationBeginResponse(
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

