// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionTargetTcpProxy.
class GetRegionTargetTcpProxyResult {
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Type of the resource. Always compute#targetTcpProxy for target TCP proxies.
  final String? kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final bool? proxyBind;
  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final String? proxyHeader;
  /// URL of the region where the regional TCP proxy resides. This field is not applicable to global TCP proxy.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// URL to the BackendService resource.
  final String? service;

  /// Creates a new [GetRegionTargetTcpProxyResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#targetTcpProxy for target TCP proxies.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [proxyBind] This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [region] URL of the region where the regional TCP proxy resides. This field is not applicable to global TCP proxy.
  /// [selfLink] Server-defined URL for the resource.
  /// [service] URL to the BackendService resource.
  const GetRegionTargetTcpProxyResult({
    this.creationTimestamp,
    this.description,
    this.kind,
    this.name,
    this.proxyBind,
    this.proxyHeader,
    this.region,
    this.selfLink,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'kind': ?kind,
      'name': ?name,
      'proxyBind': ?proxyBind,
      'proxyHeader': ?proxyHeader,
      'region': ?region,
      'selfLink': ?selfLink,
      'service': ?service,
    };
  }

  factory GetRegionTargetTcpProxyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetTcpProxyResult(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyBind: (() { final guardedValue = map['proxyBind']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      proxyHeader: (() { final guardedValue = map['proxyHeader']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
