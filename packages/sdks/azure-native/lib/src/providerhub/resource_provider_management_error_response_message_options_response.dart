// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for error response messages.
class ResourceProviderManagementErrorResponseMessageOptionsResponse {
  /// Type of server failure response message.
  final pulumi.Input<String>? serverFailureResponseMessageType;

  /// Creates a new [ResourceProviderManagementErrorResponseMessageOptionsResponse].
  /// [serverFailureResponseMessageType] Type of server failure response message.
  ResourceProviderManagementErrorResponseMessageOptionsResponse({
    this.serverFailureResponseMessageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverFailureResponseMessageType': ?serverFailureResponseMessageType,
    };
  }

  factory ResourceProviderManagementErrorResponseMessageOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManagementErrorResponseMessageOptionsResponse(
      serverFailureResponseMessageType: map['serverFailureResponseMessageType'] == null ? null : (map['serverFailureResponseMessageType']! as String).input(),
    );
  }
}

