// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for error response messages.
class ResourceProviderManagementErrorResponseMessageOptionsResponse {
  /// Type of server failure response message.
  final pulumi.Input<String>? serverFailureResponseMessageType;

  /// Creates a new [ResourceProviderManagementErrorResponseMessageOptionsResponse].
  /// [serverFailureResponseMessageType] Type of server failure response message.
  const ResourceProviderManagementErrorResponseMessageOptionsResponse({
    this.serverFailureResponseMessageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverFailureResponseMessageType': ?serverFailureResponseMessageType,
    };
  }

  factory ResourceProviderManagementErrorResponseMessageOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManagementErrorResponseMessageOptionsResponse(
      serverFailureResponseMessageType: (() { final guardedValue = map['serverFailureResponseMessageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
