// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionNetworkEndpointGroupAppEngine {
  /// Optional serving service.
  /// The service name must be 1-63 characters long, and comply with RFC1035.
  /// Example value: "default", "my-service".
  final pulumi.Input<String>? service;
  /// A template to parse service and version fields from a request URL.
  /// URL mask allows for routing to multiple App Engine services without
  /// having to create multiple Network Endpoint Groups and backend services.
  /// For example, the request URLs "foo1-dot-appname.appspot.com/v1" and
  /// "foo1-dot-appname.appspot.com/v2" can be backed by the same Serverless NEG with
  /// URL mask "-dot-appname.appspot.com/". The URL mask will parse
  /// them to { service = "foo1", version = "v1" } and { service = "foo1", version = "v2" } respectively.
  final pulumi.Input<String>? urlMask;
  /// Optional serving version.
  /// The version must be 1-63 characters long, and comply with RFC1035.
  /// Example value: "v1", "v2".
  final pulumi.Input<String>? version;

  /// Creates a new [RegionNetworkEndpointGroupAppEngine].
  /// [service] Optional serving service.
  /// [urlMask] A template to parse service and version fields from a request URL.
  /// [version] Optional serving version.
  RegionNetworkEndpointGroupAppEngine({
    this.service,
    this.urlMask,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
      'urlMask': ?urlMask,
      'version': ?version,
    };
  }

  factory RegionNetworkEndpointGroupAppEngine.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupAppEngine(
      service: map['service'] == null ? null : (map['service'] as String).input(),
      urlMask: map['urlMask'] == null ? null : (map['urlMask'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

