// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_hub.dart';
import 'get_security_gateway_proxy_protocol_config.dart';
import 'get_security_gateway_service_discovery.dart';

/// Result data returned by getSecurityGateway.
class GetSecurityGatewayResult {
  final String? createTime;
  final String? delegatingServiceAccount;
  final String? deletionPolicy;
  final String? displayName;
  final List<String>? externalIps;
  final List<GetSecurityGatewayHub>? hubs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final List<Map<String, dynamic>>? loggings;
  final String? name;
  final String? project;
  final List<GetSecurityGatewayProxyProtocolConfig>? proxyProtocolConfigs;
  final String? securityGatewayId;
  final List<GetSecurityGatewayServiceDiscovery>? serviceDiscoveries;
  final String? state;
  final String? updateTime;

  /// Creates a new [GetSecurityGatewayResult].
  /// [createTime] Optional.
  /// [delegatingServiceAccount] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [externalIps] Optional.
  /// [hubs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [loggings] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [proxyProtocolConfigs] Optional.
  /// [securityGatewayId] Optional.
  /// [serviceDiscoveries] Optional.
  /// [state] Optional.
  /// [updateTime] Optional.
  const GetSecurityGatewayResult({
    this.createTime,
    this.delegatingServiceAccount,
    this.deletionPolicy,
    this.displayName,
    this.externalIps,
    this.hubs,
    this.id,
    this.location,
    this.loggings,
    this.name,
    this.project,
    this.proxyProtocolConfigs,
    this.securityGatewayId,
    this.serviceDiscoveries,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'delegatingServiceAccount': ?delegatingServiceAccount,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'externalIps': ?externalIps,
      'hubs': ?(() { final guardedValue = hubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGatewayHub, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'loggings': ?loggings,
      'name': ?name,
      'project': ?project,
      'proxyProtocolConfigs': ?(() { final guardedValue = proxyProtocolConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGatewayProxyProtocolConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityGatewayId': ?securityGatewayId,
      'serviceDiscoveries': ?(() { final guardedValue = serviceDiscoveries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGatewayServiceDiscovery, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetSecurityGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      delegatingServiceAccount: (() { final guardedValue = map['delegatingServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalIps: (() { final guardedValue = map['externalIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGatewayHub>(guardedValue, (value) => GetSecurityGatewayHub.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggings: (() { final guardedValue = map['loggings']; if (guardedValue == null) return null; return (guardedValue as List).cast<Map<String, dynamic>>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyProtocolConfigs: (() { final guardedValue = map['proxyProtocolConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGatewayProxyProtocolConfig>(guardedValue, (value) => GetSecurityGatewayProxyProtocolConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityGatewayId: (() { final guardedValue = map['securityGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceDiscoveries: (() { final guardedValue = map['serviceDiscoveries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGatewayServiceDiscovery>(guardedValue, (value) => GetSecurityGatewayServiceDiscovery.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
