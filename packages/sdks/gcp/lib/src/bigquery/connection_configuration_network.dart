// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_configuration_network_private_service_connect.dart';

class ConnectionConfigurationNetwork {
  /// Private Service Connect configuration for the connector.
  /// Structure is documented below.
  final pulumi.Input<ConnectionConfigurationNetworkPrivateServiceConnect?>? privateServiceConnect;

  /// Creates a new [ConnectionConfigurationNetwork].
  /// [privateServiceConnect] Private Service Connect configuration for the connector.
  const ConnectionConfigurationNetwork({
    this.privateServiceConnect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateServiceConnect': ?pulumi.Input.mapOptionalInputValue<ConnectionConfigurationNetworkPrivateServiceConnect, Map<String, dynamic>>(privateServiceConnect, (value) => value.toMap()),
    };
  }

  factory ConnectionConfigurationNetwork.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigurationNetwork(
      privateServiceConnect: (() { final guardedValue = map['privateServiceConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionConfigurationNetworkPrivateServiceConnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
