// ignore_for_file: unused_element, unnecessary_cast

import 'routing_rule_next_hop_response.dart';
import 'routing_rule_route_destination_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoutingRule.
class GetRoutingRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description for this rule.
  final String? description;
  /// Indicates the destination for this particular rule.
  final RoutingRuleRouteDestinationResponse destination;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Indicates the next hop for this particular rule.
  final RoutingRuleNextHopResponse nextHop;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

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
    required this.azureApiVersion,
    this.description,
    required this.destination,
    required this.etag,
    required this.id,
    required this.name,
    required this.nextHop,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'destination': destination.toMap(),
      'etag': etag,
      'id': id,
      'name': name,
      'nextHop': nextHop.toMap(),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRoutingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRoutingRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: RoutingRuleRouteDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nextHop: RoutingRuleNextHopResponse.fromMap((map['nextHop']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

