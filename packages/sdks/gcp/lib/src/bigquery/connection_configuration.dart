// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_configuration_asset.dart';
import 'connection_configuration_authentication.dart';
import 'connection_configuration_endpoint.dart';
import 'connection_configuration_network.dart';

class ConnectionConfiguration {
  /// Asset configuration for the connector.
  /// Structure is documented below.
  final pulumi.Input<ConnectionConfigurationAsset> asset;
  /// Authentication configuration for the connector.
  /// Structure is documented below.
  final pulumi.Input<ConnectionConfigurationAuthentication?>? authentication;
  /// The ID of the connector. Possible values include `google-alloydb`, `google-cloudsql-mysql`,
  /// `google-cloudsql-postgres`, and other connector IDs supported by the BigQuery Connector framework.
  final pulumi.Input<String> connectorId;
  /// Endpoint configuration for the connector.
  /// Structure is documented below.
  final pulumi.Input<ConnectionConfigurationEndpoint?>? endpoint;
  /// Network configuration for the connector.
  /// Structure is documented below.
  final pulumi.Input<ConnectionConfigurationNetwork?>? network;

  /// Creates a new [ConnectionConfiguration].
  /// [asset] Asset configuration for the connector.
  /// [authentication] Authentication configuration for the connector.
  /// [connectorId] The ID of the connector. Possible values include `google-alloydb`, `google-cloudsql-mysql`,
  /// [endpoint] Endpoint configuration for the connector.
  /// [network] Network configuration for the connector.
  const ConnectionConfiguration({
    required this.asset,
    this.authentication,
    required this.connectorId,
    this.endpoint,
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': pulumi.Input.mapInputValue<ConnectionConfigurationAsset, Map<String, dynamic>>(asset, (value) => value.toMap()),
      'authentication': ?pulumi.Input.mapOptionalInputValue<ConnectionConfigurationAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'connectorId': connectorId,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<ConnectionConfigurationEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<ConnectionConfigurationNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
    };
  }

  factory ConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectionConfiguration(
      asset: pulumi.Input.fromValue(ConnectionConfigurationAsset.fromMap((map['asset']! as Map).cast<String, dynamic>())),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionConfigurationAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectorId: pulumi.Input.fromValue(map['connectorId'] as String),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionConfigurationEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionConfigurationNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
