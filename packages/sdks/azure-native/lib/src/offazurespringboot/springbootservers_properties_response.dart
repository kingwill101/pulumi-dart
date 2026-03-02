// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response.dart';

/// The springbootservers resource definition.
class SpringbootserversPropertiesResponse {
  /// The list of errors.
  final pulumi.Input<List<ErrorResponse>>? errors;
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

  /// Creates a new [SpringbootserversPropertiesResponse].
  /// [errors] The list of errors.
  /// [fqdnAndIpAddressList] The alternative FQDN or IP addresses to discover for this server
  /// [labels] Resource labels
  /// [machineArmId] The machine Id from ARM
  /// [port] Target server port for remote login
  /// [provisioningState] The resource provisioning state.
  /// [server] Server is the target server name or ip address to discover of SpringBootServer.
  /// [springBootApps] The total number of spring boot apps been discovered
  /// [totalApps] The total number of apps been discovered
  SpringbootserversPropertiesResponse({
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
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory SpringbootserversPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SpringbootserversPropertiesResponse(
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<ErrorResponse>(map['errors'], (value) => ErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fqdnAndIpAddressList: map['fqdnAndIpAddressList'] == null ? null : ((map['fqdnAndIpAddressList'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      machineArmId: map['machineArmId'] == null ? null : (map['machineArmId'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      server: (map['server'] as String).input(),
      springBootApps: map['springBootApps'] == null ? null : (map['springBootApps'] as int).input(),
      totalApps: map['totalApps'] == null ? null : (map['totalApps'] as int).input(),
    );
  }
}

