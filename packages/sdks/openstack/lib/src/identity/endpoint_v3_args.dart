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
    required pulumi.Output<String> endpointRegion,
    pulumi.Output<String>? interface,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> serviceId,
    required pulumi.Output<String> url,
  }) :
      endpointRegion = pulumi.Input.asInput<String>(endpointRegion),
      interface = pulumi.Input.asOptionalInput<String>(interface),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      url = pulumi.Input.asInput<String>(url);

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
      endpointRegion: pulumi.Output.create<String>(map['endpointRegion'] as String),
      interface: map['interface'] == null ? null : pulumi.Output.create<String>(map['interface'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
      url: pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

