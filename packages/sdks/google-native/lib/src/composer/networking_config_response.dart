// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfigResponse {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final pulumi.Input<String> connectionType;

  /// Creates a new [NetworkingConfigResponse].
  /// [connectionType] Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  const NetworkingConfigResponse({
    required this.connectionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
    };
  }

  factory NetworkingConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkingConfigResponse(
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
    );
  }
}

