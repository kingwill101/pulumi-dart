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
      endpointRegion: (() {
        final guardedValue = map['endpointRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interface: (() {
        final guardedValue = map['interface'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: (() {
        final guardedValue = map['serviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceType: (() {
        final guardedValue = map['serviceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
