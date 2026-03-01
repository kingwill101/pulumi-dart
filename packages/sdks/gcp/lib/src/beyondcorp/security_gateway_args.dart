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
  /// > **Warning:** `location` is deprecated and will be removed in a future major release.
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
  SecurityGatewayArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<List<SecurityGatewayHub>>? hubs,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<SecurityGatewayProxyProtocolConfig>? proxyProtocolConfig,
    required pulumi.Output<String> securityGatewayId,
    pulumi.Output<SecurityGatewayServiceDiscovery>? serviceDiscovery,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      hubs = pulumi.Input.asOptionalInput<List<SecurityGatewayHub>>(hubs),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyProtocolConfig = pulumi.Input.asOptionalInput<SecurityGatewayProxyProtocolConfig>(proxyProtocolConfig),
      securityGatewayId = pulumi.Input.asInput<String>(securityGatewayId),
      serviceDiscovery = pulumi.Input.asOptionalInput<SecurityGatewayServiceDiscovery>(serviceDiscovery);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      hubs: map['hubs'] == null ? null : pulumi.Output.create<List<SecurityGatewayHub>>(pulumi.Input.decodeList<SecurityGatewayHub>(map['hubs'], (value) => SecurityGatewayHub.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyProtocolConfig: map['proxyProtocolConfig'] == null ? null : pulumi.Output.create<SecurityGatewayProxyProtocolConfig>(SecurityGatewayProxyProtocolConfig.fromMap((map['proxyProtocolConfig'] as Map).cast<String, dynamic>())),
      securityGatewayId: pulumi.Output.create<String>(map['securityGatewayId'] as String),
      serviceDiscovery: map['serviceDiscovery'] == null ? null : pulumi.Output.create<SecurityGatewayServiceDiscovery>(SecurityGatewayServiceDiscovery.fromMap((map['serviceDiscovery'] as Map).cast<String, dynamic>())),
    );
  }
}

