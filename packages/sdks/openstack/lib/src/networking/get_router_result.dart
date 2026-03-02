// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_external_fixed_ip.dart';
import 'get_router_route.dart';

/// Result data returned by getRouter.
class GetRouterResult {
  final bool? adminStateUp;
  /// The set of string tags applied on the router.
  final List<String> allTags;
  /// The availability zone that is used to make router resources highly available.
  final List<String> availabilityZoneHints;
  final String? description;
  final bool? distributed;
  /// The value that points out if the Source NAT is enabled on the router.
  final bool enableSnat;
  /// The external fixed IPs of the router.
  final List<GetRouterExternalFixedIp> externalFixedIps;
  /// The network UUID of an external gateway for the router.
  final String externalNetworkId;
  /// The QoS policy UUID applied on the external gateway for the router.
  final String externalQosPolicyId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;
  final String? region;
  final String? routerId;
  /// The list of static routes set on the router.
  final List<GetRouterRoute> routes;
  final String? status;
  final List<String>? tags;
  final String? tenantId;

  /// Creates a new [GetRouterResult].
  /// [adminStateUp] Optional.
  /// [allTags] The set of string tags applied on the router.
  /// [availabilityZoneHints] The availability zone that is used to make router resources highly available.
  /// [description] Optional.
  /// [distributed] Optional.
  /// [enableSnat] The value that points out if the Source NAT is enabled on the router.
  /// [externalFixedIps] The external fixed IPs of the router.
  /// [externalNetworkId] The network UUID of an external gateway for the router.
  /// [externalQosPolicyId] The QoS policy UUID applied on the external gateway for the router.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [routerId] Optional.
  /// [routes] The list of static routes set on the router.
  /// [status] Optional.
  /// [tags] Optional.
  /// [tenantId] Optional.
  GetRouterResult({
    this.adminStateUp,
    required this.allTags,
    required this.availabilityZoneHints,
    this.description,
    this.distributed,
    required this.enableSnat,
    required this.externalFixedIps,
    required this.externalNetworkId,
    required this.externalQosPolicyId,
    required this.id,
    this.name,
    this.region,
    this.routerId,
    required this.routes,
    this.status,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allTags': allTags,
      'availabilityZoneHints': availabilityZoneHints,
      'description': ?description,
      'distributed': ?distributed,
      'enableSnat': enableSnat,
      'externalFixedIps': pulumi.Input.encodeList<GetRouterExternalFixedIp, Map<String, dynamic>>(externalFixedIps, (value) => value.toMap()),
      'externalNetworkId': externalNetworkId,
      'externalQosPolicyId': externalQosPolicyId,
      'id': id,
      'name': ?name,
      'region': ?region,
      'routerId': ?routerId,
      'routes': pulumi.Input.encodeList<GetRouterRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetRouterResult.fromMap(Map<String, dynamic> map) {
    return GetRouterResult(
      adminStateUp: map['adminStateUp'] == null ? null : map['adminStateUp']! as bool,
      allTags: (map['allTags'] as List).cast<String>(),
      availabilityZoneHints: (map['availabilityZoneHints'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description']! as String,
      distributed: map['distributed'] == null ? null : map['distributed']! as bool,
      enableSnat: map['enableSnat'] as bool,
      externalFixedIps: pulumi.Input.decodeList<GetRouterExternalFixedIp>(map['externalFixedIps'], (value) => GetRouterExternalFixedIp.fromMap((value as Map).cast<String, dynamic>())),
      externalNetworkId: map['externalNetworkId'] as String,
      externalQosPolicyId: map['externalQosPolicyId'] as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name']! as String,
      region: map['region'] == null ? null : map['region']! as String,
      routerId: map['routerId'] == null ? null : map['routerId']! as String,
      routes: pulumi.Input.decodeList<GetRouterRoute>(map['routes'], (value) => GetRouterRoute.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId']! as String,
    );
  }
}

