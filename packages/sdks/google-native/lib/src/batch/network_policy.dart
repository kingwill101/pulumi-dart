// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface.dart';

/// NetworkPolicy describes VM instance network configurations.
class NetworkPolicy {
  /// Network configurations.
  final pulumi.Input<List<NetworkInterface>>? networkInterfaces;

  /// Creates a new [NetworkPolicy].
  /// [networkInterfaces] Network configurations.
  const NetworkPolicy({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkPolicy.fromMap(Map<String, dynamic> map) {
    return NetworkPolicy(
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterface>(guardedValue, (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
