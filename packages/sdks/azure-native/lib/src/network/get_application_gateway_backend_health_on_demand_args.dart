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

  /// Relative path of probe. Valid path starts from '/'. Probe is sent to &lt;Protocol&gt;://&lt;host&gt;:&lt;port&gt;&lt;path&gt;.
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
  /// [path] Relative path of probe. Valid path starts from '/'. Probe is sent to &lt;Protocol&gt;://&lt;host&gt;:&lt;port&gt;&lt;path&gt;.
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
      'backendAddressPool':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(backendAddressPool, (value) => value.toMap()),
      'backendHttpSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(backendHttpSettings, (value) => value.toMap()),
      'expand': ?expand,
      'host': ?host,
      'match':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationGatewayProbeHealthResponseMatch,
            Map<String, dynamic>
          >(match, (value) => value.toMap()),
      'path': ?path,
      'pickHostNameFromBackendHttpSettings':
          ?pickHostNameFromBackendHttpSettings,
      'protocol': ?protocol,
      'resourceGroupName': resourceGroupName,
      'timeout': ?timeout,
    };
  }

  factory GetApplicationGatewayBackendHealthOnDemandArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationGatewayBackendHealthOnDemandArgs(
      applicationGatewayName: pulumi.Input.fromValue(
        map['applicationGatewayName'] as String,
      ),
      backendAddressPool: (() {
        final guardedValue = map['backendAddressPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      backendHttpSettings: (() {
        final guardedValue = map['backendHttpSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      match: (() {
        final guardedValue = map['match'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationGatewayProbeHealthResponseMatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pickHostNameFromBackendHttpSettings: (() {
        final guardedValue = map['pickHostNameFromBackendHttpSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
