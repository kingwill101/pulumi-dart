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
    pulumi.Output<String>? endpointRegion,
    pulumi.Output<String>? interface,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceType,
  }) :
      endpointRegion = pulumi.Input.asOptionalInput<String>(endpointRegion),
      interface = pulumi.Input.asOptionalInput<String>(interface),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceType = pulumi.Input.asOptionalInput<String>(serviceType);

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
      endpointRegion: map['endpointRegion'] == null ? null : pulumi.Output.create<String>(map['endpointRegion'] as String),
      interface: map['interface'] == null ? null : pulumi.Output.create<String>(map['interface'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceType: map['serviceType'] == null ? null : pulumi.Output.create<String>(map['serviceType'] as String),
    );
  }
}

