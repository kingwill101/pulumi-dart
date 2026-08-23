// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_destination_config_destination.dart';

class ConnectionDestinationConfig {
  /// The destinations for the key.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionDestinationConfigDestination>>? destinations;
  /// The key is the destination identifier that is supported by the Connector.
  final pulumi.Input<String> key;

  /// Creates a new [ConnectionDestinationConfig].
  /// [destinations] The destinations for the key.
  /// [key] The key is the destination identifier that is supported by the Connector.
  const ConnectionDestinationConfig({
    this.destinations,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<ConnectionDestinationConfigDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ConnectionDestinationConfigDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': key,
    };
  }

  factory ConnectionDestinationConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionDestinationConfig(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionDestinationConfigDestination>(guardedValue, (value) => ConnectionDestinationConfigDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
