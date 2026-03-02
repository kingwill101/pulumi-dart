// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_probe_health_response_match.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_get_application_gateway_backend_health_on_demand_args_doc}
/// Arguments for getApplicationGatewayBackendHealthOnDemand.
/// {@endtemplate}
/// {@macro pulumi_network_get_application_gateway_backend_health_on_demand_args_doc}
class GetApplicationGatewayBackendHealthOnDemandArgs {
  /// The name of the application gateway.
  final pulumi.Input<String> applicationGatewayName;
  /// Reference to backend pool of application gateway to which probe request will be sent.
  final pulumi.Input<SubResource>? backendAddressPool;
  /// Reference to backend http setting of application gateway to be used for test probe.
  final pulumi.Input<SubResource>? backendHttpSettings;
  /// Expands BackendAddressPool and BackendHttpSettings referenced in backend health.
  final pulumi.Input<String>? expand;
  /// Host name to send the probe to.
  final pulumi.Input<String>? host;
  /// Criterion for classifying a healthy probe response.
  final pulumi.Input<ApplicationGatewayProbeHealthResponseMatch>? match;
  /// Relative path of probe. Valid path starts from '/'. Probe is sent to <Protocol>://<host>:<port><path>.
  final pulumi.Input<String>? path;
  /// Whether the host header should be picked from the backend http settings. Default value is false.
  final pulumi.Input<bool>? pickHostNameFromBackendHttpSettings;
  /// The protocol used for the probe.
  final pulumi.Input<String>? protocol;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds.
  final pulumi.Input<int>? timeout;

  /// Creates a new [GetApplicationGatewayBackendHealthOnDemandArgs].
  /// [applicationGatewayName] The name of the application gateway.
  /// [backendAddressPool] Reference to backend pool of application gateway to which probe request will be sent.
  /// [backendHttpSettings] Reference to backend http setting of application gateway to be used for test probe.
  /// [expand] Expands BackendAddressPool and BackendHttpSettings referenced in backend health.
  /// [host] Host name to send the probe to.
  /// [match] Criterion for classifying a healthy probe response.
  /// [path] Relative path of probe. Valid path starts from '/'. Probe is sent to <Protocol>://<host>:<port><path>.
  /// [pickHostNameFromBackendHttpSettings] Whether the host header should be picked from the backend http settings. Default value is false.
  /// [protocol] The protocol used for the probe.
  /// [resourceGroupName] The name of the resource group.
  /// [timeout] The probe timeout in seconds. Probe marked as failed if valid response is not received with this timeout period. Acceptable values are from 1 second to 86400 seconds.
  GetApplicationGatewayBackendHealthOnDemandArgs({
    required this.applicationGatewayName,
    this.backendAddressPool,
    this.backendHttpSettings,
    this.expand,
    this.host,
    this.match,
    this.path,
    this.pickHostNameFromBackendHttpSettings,
    this.protocol,
    required this.resourceGroupName,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayName': applicationGatewayName,
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendHttpSettings': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendHttpSettings, (value) => value.toMap()),
      'expand': ?expand,
      'host': ?host,
      'match': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayProbeHealthResponseMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'path': ?path,
      'pickHostNameFromBackendHttpSettings': ?pickHostNameFromBackendHttpSettings,
      'protocol': ?protocol,
      'resourceGroupName': resourceGroupName,
      'timeout': ?timeout,
    };
  }

  factory GetApplicationGatewayBackendHealthOnDemandArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackendHealthOnDemandArgs(
      applicationGatewayName: (map['applicationGatewayName'] as String).input(),
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())).input(),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : (SubResource.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>())).input(),
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      match: map['match'] == null ? null : (ApplicationGatewayProbeHealthResponseMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      pickHostNameFromBackendHttpSettings: map['pickHostNameFromBackendHttpSettings'] == null ? null : (map['pickHostNameFromBackendHttpSettings'] as bool).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
    );
  }
}

