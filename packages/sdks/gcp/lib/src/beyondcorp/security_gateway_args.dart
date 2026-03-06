// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_hub.dart';
import 'security_gateway_proxy_protocol_config.dart';
import 'security_gateway_service_discovery.dart';

/// {@template pulumi_beyondcorp_security_gateway_security_gateway_args_doc}
/// The set of arguments for SecurityGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_security_gateway_security_gateway_args_doc}
class SecurityGatewayArgs {
  /// Optional. An arbitrary user-provided name for the SecurityGateway.
  /// Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Map of Hubs that represents regional data path deployment with GCP region
  /// as a key.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayHub>>? hubs;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`.
  ///
  /// &gt; **Warning:** `location` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Shared proxy configuration for all apps.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayProxyProtocolConfig>? proxyProtocolConfig;
  /// Optional. User-settable SecurityGateway resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  final pulumi.Input<String> securityGatewayId;
  /// Settings related to the Service Discovery.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayServiceDiscovery>? serviceDiscovery;

  /// Creates a new [SecurityGatewayArgs].
  /// [displayName] Optional. An arbitrary user-provided name for the SecurityGateway.
  /// [hubs] Optional. Map of Hubs that represents regional data path deployment with GCP region
  /// [location] (Optional, Deprecated)
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyProtocolConfig] Shared proxy configuration for all apps.
  /// [securityGatewayId] Optional. User-settable SecurityGateway resource ID.
  /// [serviceDiscovery] Settings related to the Service Discovery.
  const SecurityGatewayArgs({
    this.displayName,
    this.hubs,
    this.location,
    this.project,
    this.proxyProtocolConfig,
    required this.securityGatewayId,
    this.serviceDiscovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'hubs': ?pulumi.Input.mapOptionalInputValue<List<SecurityGatewayHub>, List<Map<String, dynamic>>>(hubs, (value) => pulumi.Input.encodeList<SecurityGatewayHub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'project': ?project,
      'proxyProtocolConfig': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayProxyProtocolConfig, Map<String, dynamic>>(proxyProtocolConfig, (value) => value.toMap()),
      'securityGatewayId': securityGatewayId,
      'serviceDiscovery': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayServiceDiscovery, Map<String, dynamic>>(serviceDiscovery, (value) => value.toMap()),
    };
  }

  factory SecurityGatewayArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGatewayHub>(guardedValue, (value) => SecurityGatewayHub.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyProtocolConfig: (() { final guardedValue = map['proxyProtocolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayProxyProtocolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGatewayId: pulumi.Input.fromValue(map['securityGatewayId'] as String),
      serviceDiscovery: (() { final guardedValue = map['serviceDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayServiceDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

