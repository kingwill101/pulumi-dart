// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_vm_network_endpoint_access_config.dart';

class V2VmNetworkEndpoint {
  /// (Output)
  /// The access config for the TPU worker.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmNetworkEndpointAccessConfig>>? accessConfigs;
  /// (Output)
  /// The internal IP address of this network endpoint.
  final pulumi.Input<String>? ipAddress;
  /// (Output)
  /// The port of this network endpoint.
  final pulumi.Input<int>? port;

  /// Creates a new [V2VmNetworkEndpoint].
  /// [accessConfigs] (Output)
  /// [ipAddress] (Output)
  /// [port] (Output)
  V2VmNetworkEndpoint({
    this.accessConfigs,
    this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<V2VmNetworkEndpointAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<V2VmNetworkEndpointAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ?ipAddress,
      'port': ?port,
    };
  }

  factory V2VmNetworkEndpoint.fromMap(Map<String, dynamic> map) {
    return V2VmNetworkEndpoint(
      accessConfigs: (() { final guardedValue = map['accessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2VmNetworkEndpointAccessConfig>(guardedValue, (value) => V2VmNetworkEndpointAccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

