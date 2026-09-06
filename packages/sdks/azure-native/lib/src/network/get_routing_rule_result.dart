// ignore_for_file: unused_element, unnecessary_cast

import 'routing_rule_next_hop_response.dart';
import 'routing_rule_route_destination_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoutingRule.
class GetRoutingRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description for this rule.
  final String? description;
  /// Indicates the destination for this particular rule.
  final RoutingRuleRouteDestinationResponse? destination;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Indicates the next hop for this particular rule.
  final RoutingRuleNextHopResponse? nextHop;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Unique identifier for this resource.
  final String? resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

  /// Creates a new [GetRoutingRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description for this rule.
  /// [destination] Indicates the destination for this particular rule.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [nextHop] Indicates the next hop for this particular rule.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetRoutingRuleResult({
    this.azureApiVersion,
    this.description,
    this.destination,
    this.etag,
    this.id,
    this.name,
    this.nextHop,
    this.provisioningState,
    this.resourceGuid,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'destination': ?destination?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'nextHop': ?nextHop?.toMap(),
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetRoutingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRoutingRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return RoutingRuleRouteDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextHop: (() { final guardedValue = map['nextHop']; if (guardedValue == null) return null; return RoutingRuleNextHopResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
