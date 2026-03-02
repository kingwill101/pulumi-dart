// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthScopeServiceCatalogEndpoint {
  /// The ID of the endpoint.
  final pulumi.Input<String> id;
  /// The interface of the endpoint.
  final pulumi.Input<String> interface;
  /// The region in which to obtain the V3 Identity client.
  /// A Identity client is needed to retrieve tokens IDs. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String> region;
  /// The region ID of the endpoint.
  final pulumi.Input<String> regionId;
  /// The URL of the endpoint.
  final pulumi.Input<String> url;

  /// Creates a new [GetAuthScopeServiceCatalogEndpoint].
  /// [id] The ID of the endpoint.
  /// [interface] The interface of the endpoint.
  /// [region] The region in which to obtain the V3 Identity client.
  /// [regionId] The region ID of the endpoint.
  /// [url] The URL of the endpoint.
  GetAuthScopeServiceCatalogEndpoint({
    required this.id,
    required this.interface,
    required this.region,
    required this.regionId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'interface': interface,
      'region': region,
      'regionId': regionId,
      'url': url,
    };
  }

  factory GetAuthScopeServiceCatalogEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAuthScopeServiceCatalogEndpoint(
      id: (map['id'] as String).input(),
      interface: (map['interface'] as String).input(),
      region: (map['region'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

