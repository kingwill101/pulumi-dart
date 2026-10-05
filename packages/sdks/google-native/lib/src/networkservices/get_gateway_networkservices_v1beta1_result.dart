// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGateway.
class GetGatewayNetworkservicesV1beta1Result {
  /// Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no address is provided, an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  final List<String>? addresses;
  /// Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection. This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  final List<String>? certificateUrls;
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String? description;
  /// Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final String? gatewaySecurityPolicy;
  /// Optional. Set of label tags associated with the Gateway resource.
  final Map<String, String>? labels;
  /// Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.
  final String? name;
  /// Optional. The relative resource name identifying the VPC network that is using this configuration. For example: `projects/*/global/networks/network-1`. Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final String? network;
  /// One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  final List<int>? ports;
  /// Optional. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  final String? scope;
  /// Server-defined URL of this resource
  final String? selfLink;
  /// Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  final String? serverTlsPolicy;
  /// Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/network-1` Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY".
  final String? subnetwork;
  /// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
  final String? type;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetGatewayNetworkservicesV1beta1Result].
  /// [addresses] Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no address is provided, an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  /// [certificateUrls] Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection. This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gatewaySecurityPolicy] Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  /// [labels] Optional. Set of label tags associated with the Gateway resource.
  /// [name] Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.
  /// [network] Optional. The relative resource name identifying the VPC network that is using this configuration. For example: `projects/*/global/networks/network-1`. Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  /// [ports] One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  /// [scope] Optional. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  /// [selfLink] Server-defined URL of this resource
  /// [serverTlsPolicy] Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  /// [subnetwork] Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/network-1` Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY".
  /// [type] Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
  /// [updateTime] The timestamp when the resource was updated.
  const GetGatewayNetworkservicesV1beta1Result({
    this.addresses,
    this.certificateUrls,
    this.createTime,
    this.description,
    this.gatewaySecurityPolicy,
    this.labels,
    this.name,
    this.network,
    this.ports,
    this.scope,
    this.selfLink,
    this.serverTlsPolicy,
    this.subnetwork,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'certificateUrls': ?certificateUrls,
      'createTime': ?createTime,
      'description': ?description,
      'gatewaySecurityPolicy': ?gatewaySecurityPolicy,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'ports': ?ports,
      'scope': ?scope,
      'selfLink': ?selfLink,
      'serverTlsPolicy': ?serverTlsPolicy,
      'subnetwork': ?subnetwork,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetGatewayNetworkservicesV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetGatewayNetworkservicesV1beta1Result(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      certificateUrls: (() { final guardedValue = map['certificateUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewaySecurityPolicy: (() { final guardedValue = map['gatewaySecurityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverTlsPolicy: (() { final guardedValue = map['serverTlsPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
