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
    required pulumi.Output<String> applicationGatewayName,
    pulumi.Output<SubResource>? backendAddressPool,
    pulumi.Output<SubResource>? backendHttpSettings,
    pulumi.Output<String>? expand,
    pulumi.Output<String>? host,
    pulumi.Output<ApplicationGatewayProbeHealthResponseMatch>? match,
    pulumi.Output<String>? path,
    pulumi.Output<bool>? pickHostNameFromBackendHttpSettings,
    pulumi.Output<String>? protocol,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? timeout,
  }) :
      applicationGatewayName = pulumi.Input.asInput<String>(applicationGatewayName),
      backendAddressPool = pulumi.Input.asOptionalInput<SubResource>(backendAddressPool),
      backendHttpSettings = pulumi.Input.asOptionalInput<SubResource>(backendHttpSettings),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      host = pulumi.Input.asOptionalInput<String>(host),
      match = pulumi.Input.asOptionalInput<ApplicationGatewayProbeHealthResponseMatch>(match),
      path = pulumi.Input.asOptionalInput<String>(path),
      pickHostNameFromBackendHttpSettings = pulumi.Input.asOptionalInput<bool>(pickHostNameFromBackendHttpSettings),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

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
      applicationGatewayName: pulumi.Output.create<String>(map['applicationGatewayName'] as String),
      backendAddressPool: map['backendAddressPool'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>())),
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      match: map['match'] == null ? null : pulumi.Output.create<ApplicationGatewayProbeHealthResponseMatch>(ApplicationGatewayProbeHealthResponseMatch.fromMap((map['match'] as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      pickHostNameFromBackendHttpSettings: map['pickHostNameFromBackendHttpSettings'] == null ? null : pulumi.Output.create<bool>(map['pickHostNameFromBackendHttpSettings'] as bool),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
    );
  }
}

