// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetHttpProxy.
class GetTargetHttpProxyComputeV1Result {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a TargetHttpProxy. An up-to-date fingerprint must be provided in order to patch/update the TargetHttpProxy; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the TargetHttpProxy.
  final String fingerprint;
  /// Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  final int httpKeepAliveTimeoutSec;
  /// Type of resource. Always compute#targetHttpProxy for target HTTP proxies.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final bool proxyBind;
  /// URL of the region where the regional Target HTTP Proxy resides. This field is not applicable to global Target HTTP Proxies.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// URL to the UrlMap resource that defines the mapping from URL to the BackendService.
  final String urlMap;

  /// Creates a new [GetTargetHttpProxyComputeV1Result].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a TargetHttpProxy. An up-to-date fingerprint must be provided in order to patch/update the TargetHttpProxy; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the TargetHttpProxy.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  /// [kind] Type of resource. Always compute#targetHttpProxy for target HTTP proxies.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [proxyBind] This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  /// [region] URL of the region where the regional Target HTTP Proxy resides. This field is not applicable to global Target HTTP Proxies.
  /// [selfLink] Server-defined URL for the resource.
  /// [urlMap] URL to the UrlMap resource that defines the mapping from URL to the BackendService.
  GetTargetHttpProxyComputeV1Result({
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.httpKeepAliveTimeoutSec,
    required this.kind,
    required this.name,
    required this.proxyBind,
    required this.region,
    required this.selfLink,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'fingerprint': fingerprint,
      'httpKeepAliveTimeoutSec': httpKeepAliveTimeoutSec,
      'kind': kind,
      'name': name,
      'proxyBind': proxyBind,
      'region': region,
      'selfLink': selfLink,
      'urlMap': urlMap,
    };
  }

  factory GetTargetHttpProxyComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyComputeV1Result(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] as int,
      kind: map['kind'] as String,
      name: map['name'] as String,
      proxyBind: map['proxyBind'] as bool,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}

