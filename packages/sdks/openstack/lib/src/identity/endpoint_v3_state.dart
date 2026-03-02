// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointV3 resources.
class EndpointV3State {
  /// The endpoint region. The `region` and
  /// `endpoint_region` can be different.
  final pulumi.Input<String>? endpointRegion;
  /// The endpoint interface. Valid values are `public`,
  /// `internal` and `admin`. Default value is `public`
  final pulumi.Input<String>? interface;
  /// The endpoint name.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The endpoint service ID.
  final pulumi.Input<String>? serviceId;
  /// The service name of the endpoint.
  final pulumi.Input<String>? serviceName;
  /// The service type of the endpoint.
  final pulumi.Input<String>? serviceType;
  /// The endpoint url.
  final pulumi.Input<String>? url;

  /// Creates a new [EndpointV3State].
  /// [endpointRegion] The endpoint region. The `region` and
  /// [interface] The endpoint interface. Valid values are `public`,
  /// [name] The endpoint name.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [serviceId] The endpoint service ID.
  /// [serviceName] The service name of the endpoint.
  /// [serviceType] The service type of the endpoint.
  /// [url] The endpoint url.
  EndpointV3State({
    this.endpointRegion,
    this.interface,
    this.name,
    this.region,
    this.serviceId,
    this.serviceName,
    this.serviceType,
    this.url,
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
      'url': ?url,
    };
  }

  factory EndpointV3State.fromMap(Map<String, dynamic> map) {
    return EndpointV3State(
      endpointRegion: map['endpointRegion'] == null ? null : (map['endpointRegion'] as String).input(),
      interface: map['interface'] == null ? null : (map['interface'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

