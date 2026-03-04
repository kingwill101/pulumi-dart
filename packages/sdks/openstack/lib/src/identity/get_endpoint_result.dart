// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// See Argument Reference above.
  final String? endpointRegion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// See Argument Reference above.
  final String? interface;

  /// See Argument Reference above.
  final String? name;

  /// See Argument Reference above.
  final String region;

  /// See Argument Reference above.
  final String? serviceId;

  /// See Argument Reference above.
  final String? serviceName;

  /// See Argument Reference above.
  final String? serviceType;

  /// The endpoint URL.
  final String url;

  /// Creates a new [GetEndpointResult].
  /// [endpointRegion] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interface] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [serviceId] See Argument Reference above.
  /// [serviceName] See Argument Reference above.
  /// [serviceType] See Argument Reference above.
  /// [url] The endpoint URL.
  GetEndpointResult({
    this.endpointRegion,
    required this.id,
    this.interface,
    this.name,
    required this.region,
    this.serviceId,
    this.serviceName,
    this.serviceType,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointRegion': ?endpointRegion,
      'id': id,
      'interface': ?interface,
      'name': ?name,
      'region': region,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
      'url': url,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      endpointRegion: (() {
        final guardedValue = map['endpointRegion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      interface: (() {
        final guardedValue = map['interface'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      serviceId: (() {
        final guardedValue = map['serviceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      serviceType: (() {
        final guardedValue = map['serviceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      url: map['url'] as String,
    );
  }
}
