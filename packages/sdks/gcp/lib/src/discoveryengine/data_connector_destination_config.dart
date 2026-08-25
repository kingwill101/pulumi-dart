// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_destination_config_destination.dart';

class DataConnectorDestinationConfig {
  /// The list of destinations for this configuration.
  /// Structure is documented below.
  final pulumi.Input<List<DataConnectorDestinationConfigDestination>?>? destinations;
  /// The key of the destination configuration, for example `url`.
  final pulumi.Input<String?>? key;
  /// Additional parameters for this destination config in structured json format.
  final pulumi.Input<String?>? params;

  /// Creates a new [DataConnectorDestinationConfig].
  /// [destinations] The list of destinations for this configuration.
  /// [key] The key of the destination configuration, for example `url`.
  /// [params] Additional parameters for this destination config in structured json format.
  const DataConnectorDestinationConfig({
    this.destinations,
    this.key,
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<DataConnectorDestinationConfigDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<DataConnectorDestinationConfigDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
      'params': ?params,
    };
  }

  factory DataConnectorDestinationConfig.fromMap(Map<String, dynamic> map) {
    return DataConnectorDestinationConfig(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataConnectorDestinationConfigDestination>(guardedValue, (value) => DataConnectorDestinationConfigDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
