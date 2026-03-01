// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_hub.dart';
import 'security_gateway_proxy_protocol_config.dart';
import 'security_gateway_service_discovery.dart';

/// Input properties used for looking up and filtering SecurityGateway resources.
class SecurityGatewayState {
  /// Output only. Timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// Service account used for operations that involve resources in consumer projects.
  final pulumi.Input<String>? delegatingServiceAccount;
  /// Optional. An arbitrary user-provided name for the SecurityGateway.
  /// Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Output only. IP addresses that will be used for establishing
  /// connection to the endpoints.
  final pulumi.Input<List<String>>? externalIps;
  /// Optional. Map of Hubs that represents regional data path deployment with GCP region
  /// as a key.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayHub>>? hubs;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`.
  ///
  /// > **Warning:** `location` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? location;
  /// Identifier. Name of the resource.
  final pulumi.Input<String>? name;
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
  final pulumi.Input<String>? securityGatewayId;
  /// Settings related to the Service Discovery.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayServiceDiscovery>? serviceDiscovery;
  /// Output only. The operational state of the SecurityGateway.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// UPDATING
  /// DELETING
  /// RUNNING
  /// DOWN
  /// ERROR
  final pulumi.Input<String>? state;
  /// Output only. Timestamp when the resource was last modified.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SecurityGatewayState].
  /// [createTime] Output only. Timestamp when the resource was created.
  /// [delegatingServiceAccount] Service account used for operations that involve resources in consumer projects.
  /// [displayName] Optional. An arbitrary user-provided name for the SecurityGateway.
  /// [externalIps] Output only. IP addresses that will be used for establishing
  /// [hubs] Optional. Map of Hubs that represents regional data path deployment with GCP region
  /// [location] (Optional, Deprecated)
  /// [name] Identifier. Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyProtocolConfig] Shared proxy configuration for all apps.
  /// [securityGatewayId] Optional. User-settable SecurityGateway resource ID.
  /// [serviceDiscovery] Settings related to the Service Discovery.
  /// [state] Output only. The operational state of the SecurityGateway.
  /// [updateTime] Output only. Timestamp when the resource was last modified.
  SecurityGatewayState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? delegatingServiceAccount,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? externalIps,
    pulumi.Output<List<SecurityGatewayHub>>? hubs,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<SecurityGatewayProxyProtocolConfig>? proxyProtocolConfig,
    pulumi.Output<String>? securityGatewayId,
    pulumi.Output<SecurityGatewayServiceDiscovery>? serviceDiscovery,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      delegatingServiceAccount = pulumi.Input.asOptionalInput<String>(delegatingServiceAccount),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      externalIps = pulumi.Input.asOptionalInput<List<String>>(externalIps),
      hubs = pulumi.Input.asOptionalInput<List<SecurityGatewayHub>>(hubs),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyProtocolConfig = pulumi.Input.asOptionalInput<SecurityGatewayProxyProtocolConfig>(proxyProtocolConfig),
      securityGatewayId = pulumi.Input.asOptionalInput<String>(securityGatewayId),
      serviceDiscovery = pulumi.Input.asOptionalInput<SecurityGatewayServiceDiscovery>(serviceDiscovery),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'delegatingServiceAccount': ?delegatingServiceAccount,
      'displayName': ?displayName,
      'externalIps': ?externalIps,
      'hubs': ?pulumi.Input.mapOptionalInputValue<List<SecurityGatewayHub>, List<Map<String, dynamic>>>(hubs, (value) => pulumi.Input.encodeList<SecurityGatewayHub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'proxyProtocolConfig': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayProxyProtocolConfig, Map<String, dynamic>>(proxyProtocolConfig, (value) => value.toMap()),
      'securityGatewayId': ?securityGatewayId,
      'serviceDiscovery': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayServiceDiscovery, Map<String, dynamic>>(serviceDiscovery, (value) => value.toMap()),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory SecurityGatewayState.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      delegatingServiceAccount: map['delegatingServiceAccount'] == null ? null : pulumi.Output.create<String>(map['delegatingServiceAccount'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      externalIps: map['externalIps'] == null ? null : pulumi.Output.create<List<String>>((map['externalIps'] as List).cast<String>()),
      hubs: map['hubs'] == null ? null : pulumi.Output.create<List<SecurityGatewayHub>>(pulumi.Input.decodeList<SecurityGatewayHub>(map['hubs'], (value) => SecurityGatewayHub.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyProtocolConfig: map['proxyProtocolConfig'] == null ? null : pulumi.Output.create<SecurityGatewayProxyProtocolConfig>(SecurityGatewayProxyProtocolConfig.fromMap((map['proxyProtocolConfig'] as Map).cast<String, dynamic>())),
      securityGatewayId: map['securityGatewayId'] == null ? null : pulumi.Output.create<String>(map['securityGatewayId'] as String),
      serviceDiscovery: map['serviceDiscovery'] == null ? null : pulumi.Output.create<SecurityGatewayServiceDiscovery>(SecurityGatewayServiceDiscovery.fromMap((map['serviceDiscovery'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

