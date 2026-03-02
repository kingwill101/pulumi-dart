// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination.dart';

/// Define the Connectors target endpoint.
class DestinationConfig {
  /// The destinations for the key.
  final pulumi.Input<List<Destination>>? destinations;
  /// The key is the destination identifier that is supported by the Connector.
  final pulumi.Input<String>? key;

  /// Creates a new [DestinationConfig].
  /// [destinations] The destinations for the key.
  /// [key] The key is the destination identifier that is supported by the Connector.
  DestinationConfig({
    this.destinations,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<Destination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<Destination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
    };
  }

  factory DestinationConfig.fromMap(Map<String, dynamic> map) {
    return DestinationConfig(
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<Destination>(map['destinations'], (value) => Destination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
    );
  }
}

