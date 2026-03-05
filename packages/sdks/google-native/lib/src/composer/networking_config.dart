// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_config_connection_type.dart';

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfig {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final pulumi.Input<NetworkingConfigConnectionType>? connectionType;

  /// Creates a new [NetworkingConfig].
  /// [connectionType] Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  NetworkingConfig({
    this.connectionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?pulumi.Input.mapOptionalInputValue<NetworkingConfigConnectionType, String>(connectionType, (value) => value.wireValue),
    };
  }

  factory NetworkingConfig.fromMap(Map<String, dynamic> map) {
    return NetworkingConfig(
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkingConfigConnectionType.fromValue(guardedValue as String)); })(),
    );
  }
}

