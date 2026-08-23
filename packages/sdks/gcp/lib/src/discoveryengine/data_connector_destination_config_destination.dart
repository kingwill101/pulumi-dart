// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataConnectorDestinationConfigDestination {
  /// The host of the destination, for example
  /// `https://example.atlassian.net`.
  final pulumi.Input<String>? host;
  /// Target port number accepted by the destination.
  final pulumi.Input<int>? port;

  /// Creates a new [DataConnectorDestinationConfigDestination].
  /// [host] The host of the destination, for example
  /// [port] Target port number accepted by the destination.
  const DataConnectorDestinationConfigDestination({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
    };
  }

  factory DataConnectorDestinationConfigDestination.fromMap(Map<String, dynamic> map) {
    return DataConnectorDestinationConfigDestination(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
