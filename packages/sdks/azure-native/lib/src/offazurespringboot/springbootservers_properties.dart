// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error.dart';

/// The springbootservers resource definition.
class SpringbootserversProperties {
  /// The list of errors.
  final pulumi.Input<List<Error>>? errors;
  /// The alternative FQDN or IP addresses to discover for this server
  final pulumi.Input<List<String>>? fqdnAndIpAddressList;
  /// Resource labels
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine Id from ARM
  final pulumi.Input<String>? machineArmId;
  /// Target server port for remote login
  final pulumi.Input<int>? port;
  /// The resource provisioning state.
  final pulumi.Input<String>? provisioningState;
  /// Server is the target server name or ip address to discover of SpringBootServer.
  final pulumi.Input<String> server;
  /// The total number of spring boot apps been discovered
  final pulumi.Input<int>? springBootApps;
  /// The total number of apps been discovered
  final pulumi.Input<int>? totalApps;

  /// Creates a new [SpringbootserversProperties].
  /// [errors] The list of errors.
  /// [fqdnAndIpAddressList] The alternative FQDN or IP addresses to discover for this server
  /// [labels] Resource labels
  /// [machineArmId] The machine Id from ARM
  /// [port] Target server port for remote login
  /// [provisioningState] The resource provisioning state.
  /// [server] Server is the target server name or ip address to discover of SpringBootServer.
  /// [springBootApps] The total number of spring boot apps been discovered
  /// [totalApps] The total number of apps been discovered
  SpringbootserversProperties({
    this.errors,
    this.fqdnAndIpAddressList,
    this.labels,
    this.machineArmId,
    this.port,
    this.provisioningState,
    required this.server,
    this.springBootApps,
    this.totalApps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<Error>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<Error, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fqdnAndIpAddressList': ?fqdnAndIpAddressList,
      'labels': ?labels,
      'machineArmId': ?machineArmId,
      'port': ?port,
      'provisioningState': ?provisioningState,
      'server': server,
      'springBootApps': ?springBootApps,
      'totalApps': ?totalApps,
    };
  }

  factory SpringbootserversProperties.fromMap(Map<String, dynamic> map) {
    return SpringbootserversProperties(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Error>(guardedValue, (value) => Error.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fqdnAndIpAddressList: (() { final guardedValue = map['fqdnAndIpAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineArmId: (() { final guardedValue = map['machineArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
      springBootApps: (() { final guardedValue = map['springBootApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalApps: (() { final guardedValue = map['totalApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

