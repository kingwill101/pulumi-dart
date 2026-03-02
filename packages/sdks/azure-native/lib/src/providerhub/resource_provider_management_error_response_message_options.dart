// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for error response messages.
class ResourceProviderManagementErrorResponseMessageOptions {
  /// Type of server failure response message.
  final pulumi.Input<String>? serverFailureResponseMessageType;

  /// Creates a new [ResourceProviderManagementErrorResponseMessageOptions].
  /// [serverFailureResponseMessageType] Type of server failure response message.
  ResourceProviderManagementErrorResponseMessageOptions({
    this.serverFailureResponseMessageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverFailureResponseMessageType': ?serverFailureResponseMessageType,
    };
  }

  factory ResourceProviderManagementErrorResponseMessageOptions.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManagementErrorResponseMessageOptions(
      serverFailureResponseMessageType: map['serverFailureResponseMessageType'] == null ? null : (map['serverFailureResponseMessageType'] as String).input(),
    );
  }
}

