// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_dynamic_routing_deployment.dart';
import 'get_ai_gateway_dynamic_routing_element.dart';
import 'get_ai_gateway_dynamic_routing_version.dart';

/// Result data returned by getAiGatewayDynamicRouting.
class GetAiGatewayDynamicRoutingResult {
  final String? accountId;
  final String? createdAt;
  final GetAiGatewayDynamicRoutingDeployment? deployment;
  final List<GetAiGatewayDynamicRoutingElement>? elements;
  final String? gatewayId;
  /// The ID of this resource.
  final String? id;
  final String? modifiedAt;
  final String? name;
  final GetAiGatewayDynamicRoutingVersion? version;

  /// Creates a new [GetAiGatewayDynamicRoutingResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [deployment] Optional.
  /// [elements] Optional.
  /// [gatewayId] Optional.
  /// [id] The ID of this resource.
  /// [modifiedAt] Optional.
  /// [name] Optional.
  /// [version] Optional.
  const GetAiGatewayDynamicRoutingResult({
    this.accountId,
    this.createdAt,
    this.deployment,
    this.elements,
    this.gatewayId,
    this.id,
    this.modifiedAt,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'deployment': ?deployment?.toMap(),
      'elements': ?(() { final guardedValue = elements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiGatewayDynamicRoutingElement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayId': ?gatewayId,
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'version': ?version?.toMap(),
    };
  }

  factory GetAiGatewayDynamicRoutingResult.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return GetAiGatewayDynamicRoutingDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      elements: (() { final guardedValue = map['elements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiGatewayDynamicRoutingElement>(guardedValue, (value) => GetAiGatewayDynamicRoutingElement.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return GetAiGatewayDynamicRoutingVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
