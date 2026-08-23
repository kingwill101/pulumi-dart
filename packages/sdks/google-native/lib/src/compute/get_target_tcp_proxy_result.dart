// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetTcpProxy.
class GetTargetTcpProxyResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Type of the resource. Always compute#targetTcpProxy for target TCP proxies.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final bool proxyBind;
  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final String proxyHeader;
  /// URL of the region where the regional TCP proxy resides. This field is not applicable to global TCP proxy.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// URL to the BackendService resource.
  final String service;

  /// Creates a new [GetTargetTcpProxyResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#targetTcpProxy for target TCP proxies.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [proxyBind] This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [region] URL of the region where the regional TCP proxy resides. This field is not applicable to global TCP proxy.
  /// [selfLink] Server-defined URL for the resource.
  /// [service] URL to the BackendService resource.
  const GetTargetTcpProxyResult({
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.name,
    required this.proxyBind,
    required this.proxyHeader,
    required this.region,
    required this.selfLink,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'kind': kind,
      'name': name,
      'proxyBind': proxyBind,
      'proxyHeader': proxyHeader,
      'region': region,
      'selfLink': selfLink,
      'service': service,
    };
  }

  factory GetTargetTcpProxyResult.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      proxyBind: map['proxyBind'] as bool,
      proxyHeader: map['proxyHeader'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      service: map['service'] as String,
    );
  }
}
