// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_endpoint_v3_endpoint_v3_args_doc}
/// The set of arguments for EndpointV3.
/// {@endtemplate}
/// {@macro pulumi_identity_endpoint_v3_endpoint_v3_args_doc}
class EndpointV3Args {
  /// The endpoint region. The `region` and
  /// `endpoint_region` can be different.
  final pulumi.Input<String> endpointRegion;

  /// The endpoint interface. Valid values are `public`,
  /// `internal` and `admin`. Default value is `public`
  final pulumi.Input<String>? interface;

  /// The endpoint name.
  final pulumi.Input<String>? name;

  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// The endpoint service ID.
  final pulumi.Input<String> serviceId;

  /// The endpoint url.
  final pulumi.Input<String> url;

  /// Creates a new [EndpointV3Args].
  /// [endpointRegion] The endpoint region. The `region` and
  /// [interface] The endpoint interface. Valid values are `public`,
  /// [name] The endpoint name.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [serviceId] The endpoint service ID.
  /// [url] The endpoint url.
  EndpointV3Args({
    required this.endpointRegion,
    this.interface,
    this.name,
    this.region,
    required this.serviceId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointRegion': endpointRegion,
      'interface': ?interface,
      'name': ?name,
      'region': ?region,
      'serviceId': serviceId,
      'url': url,
    };
  }

  factory EndpointV3Args.fromMap(Map<String, dynamic> map) {
    return EndpointV3Args(
      endpointRegion: pulumi.Input.fromValue(map['endpointRegion'] as String),
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
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
