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
  /// &gt; **Warning:** `location` is deprecated and will be removed in a future major release.
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
    this.createTime,
    this.delegatingServiceAccount,
    this.displayName,
    this.externalIps,
    this.hubs,
    this.location,
    this.name,
    this.project,
    this.proxyProtocolConfig,
    this.securityGatewayId,
    this.serviceDiscovery,
    this.state,
    this.updateTime,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delegatingServiceAccount: (() { final guardedValue = map['delegatingServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalIps: (() { final guardedValue = map['externalIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGatewayHub>(guardedValue, (value) => SecurityGatewayHub.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyProtocolConfig: (() { final guardedValue = map['proxyProtocolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayProxyProtocolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGatewayId: (() { final guardedValue = map['securityGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDiscovery: (() { final guardedValue = map['serviceDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayServiceDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

