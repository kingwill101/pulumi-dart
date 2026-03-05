// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_config_registration_destination_config_destination.dart';

class ConnectionEventingConfigRegistrationDestinationConfig {
  /// destinations for the connection
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionEventingConfigRegistrationDestinationConfigDestination>>? destinations;
  /// Key for the connection
  final pulumi.Input<String>? key;

  /// Creates a new [ConnectionEventingConfigRegistrationDestinationConfig].
  /// [destinations] destinations for the connection
  /// [key] Key for the connection
  ConnectionEventingConfigRegistrationDestinationConfig({
    this.destinations,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<ConnectionEventingConfigRegistrationDestinationConfigDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ConnectionEventingConfigRegistrationDestinationConfigDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
    };
  }

  factory ConnectionEventingConfigRegistrationDestinationConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigRegistrationDestinationConfig(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionEventingConfigRegistrationDestinationConfigDestination>(guardedValue, (value) => ConnectionEventingConfigRegistrationDestinationConfigDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

