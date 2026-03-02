// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route Filter Rule Resource.
class RouteFilterRuleResponse {
  /// The access type of the rule.
  final pulumi.Input<String> access;
  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  final pulumi.Input<List<String>> communities;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the route filter rule resource.
  final pulumi.Input<String> provisioningState;
  /// The rule type of the rule.
  final pulumi.Input<String> routeFilterRuleType;

  /// Creates a new [RouteFilterRuleResponse].
  /// [access] The access type of the rule.
  /// [communities] The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the route filter rule resource.
  /// [routeFilterRuleType] The rule type of the rule.
  RouteFilterRuleResponse({
    required this.access,
    required this.communities,
    required this.etag,
    this.id,
    this.location,
    this.name,
    required this.provisioningState,
    required this.routeFilterRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'communities': communities,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': provisioningState,
      'routeFilterRuleType': routeFilterRuleType,
    };
  }

  factory RouteFilterRuleResponse.fromMap(Map<String, dynamic> map) {
    return RouteFilterRuleResponse(
      access: (map['access'] as String).input(),
      communities: ((map['communities'] as List).cast<String>()).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      routeFilterRuleType: (map['routeFilterRuleType'] as String).input(),
    );
  }
}

