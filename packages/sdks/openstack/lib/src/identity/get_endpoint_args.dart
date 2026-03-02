// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_endpoint_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_identity_get_endpoint_get_endpoint_args_doc}
class GetEndpointArgs {
  /// The region the endpoint is assigned to. The
  /// `region` and `endpoint_region` can be different.
  final pulumi.Input<String>? endpointRegion;
  /// The endpoint interface. Valid values are `public`,
  /// `internal`, and `admin`. Default value is `public`
  final pulumi.Input<String>? interface;
  /// The name of the endpoint.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The service id this endpoint belongs to.
  final pulumi.Input<String>? serviceId;
  /// The service name of the endpoint.
  final pulumi.Input<String>? serviceName;
  /// The service type of the endpoint.
  final pulumi.Input<String>? serviceType;

  /// Creates a new [GetEndpointArgs].
  /// [endpointRegion] The region the endpoint is assigned to. The
  /// [interface] The endpoint interface. Valid values are `public`,
  /// [name] The name of the endpoint.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [serviceId] The service id this endpoint belongs to.
  /// [serviceName] The service name of the endpoint.
  /// [serviceType] The service type of the endpoint.
  GetEndpointArgs({
    this.endpointRegion,
    this.interface,
    this.name,
    this.region,
    this.serviceId,
    this.serviceName,
    this.serviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointRegion': ?endpointRegion,
      'interface': ?interface,
      'name': ?name,
      'region': ?region,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
    };
  }

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointRegion: map['endpointRegion'] == null ? null : (map['endpointRegion']! as String).input(),
      interface: map['interface'] == null ? null : (map['interface']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId']! as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName']! as String).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType']! as String).input(),
    );
  }
}

