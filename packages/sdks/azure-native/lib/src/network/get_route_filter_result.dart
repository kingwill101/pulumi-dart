// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_response.dart';
import 'route_filter_rule_response.dart';

/// Result data returned by getRouteFilter.
class GetRouteFilterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// A collection of references to express route circuit ipv6 peerings.
  final List<ExpressRouteCircuitPeeringResponse>? ipv6Peerings;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// A collection of references to express route circuit peerings.
  final List<ExpressRouteCircuitPeeringResponse>? peerings;
  /// The provisioning state of the route filter resource.
  final String? provisioningState;
  /// Collection of RouteFilterRules contained within a route filter.
  final List<RouteFilterRuleResponse>? rules;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetRouteFilterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipv6Peerings] A collection of references to express route circuit ipv6 peerings.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [peerings] A collection of references to express route circuit peerings.
  /// [provisioningState] The provisioning state of the route filter resource.
  /// [rules] Collection of RouteFilterRules contained within a route filter.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetRouteFilterResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.ipv6Peerings,
    this.location,
    this.name,
    this.peerings,
    this.provisioningState,
    this.rules,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'ipv6Peerings': ?(() { final guardedValue = ipv6Peerings; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressRouteCircuitPeeringResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'peerings': ?(() { final guardedValue = peerings; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressRouteCircuitPeeringResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouteFilterRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetRouteFilterResult.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Peerings: (() { final guardedValue = map['ipv6Peerings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(guardedValue, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerings: (() { final guardedValue = map['peerings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitPeeringResponse>(guardedValue, (value) => ExpressRouteCircuitPeeringResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteFilterRuleResponse>(guardedValue, (value) => RouteFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
