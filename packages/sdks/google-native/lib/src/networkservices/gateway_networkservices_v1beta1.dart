import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_networkservices_v1beta1_args.dart';

/// Creates a new Gateway in a given project and location.
class GatewayNetworkservicesV1beta1 extends pulumi.CustomResource {
  /// Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no address is provided, an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  late final pulumi.Output<List<String>> addresses;

  /// Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection. This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  late final pulumi.Output<List<String>> certificateUrls;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;

  /// Required. Short name of the Gateway resource to be created.
  late final pulumi.Output<String> gatewayId;

  /// Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final pulumi.Output<String> gatewaySecurityPolicy;

  /// Optional. Set of label tags associated with the Gateway resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.
  late final pulumi.Output<String> name;

  /// Optional. The relative resource name identifying the VPC network that is using this configuration. For example: `projects/*/global/networks/network-1`. Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final pulumi.Output<String> network;

  /// One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  late final pulumi.Output<List<int>> ports;
  late final pulumi.Output<String> project;

  /// Optional. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  late final pulumi.Output<String> scope;

  /// Server-defined URL of this resource
  late final pulumi.Output<String> selfLink;

  /// Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  late final pulumi.Output<String> serverTlsPolicy;

  /// Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/network-1` Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY".
  late final pulumi.Output<String> subnetwork;

  /// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
  late final pulumi.Output<String> type;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GatewayNetworkservicesV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayNetworkservicesV1beta1]. {@macro pulumi_networkservices_v1beta1_gateway_networkservices_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayNetworkservicesV1beta1(
    String name, {
    GatewayNetworkservicesV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networkservices/v1beta1:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addresses = registerOutput<List<String>>('addresses');
    certificateUrls = registerOutput<List<String>>('certificateUrls');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    gatewayId = registerOutput<String>('gatewayId');
    gatewaySecurityPolicy = registerOutput<String>('gatewaySecurityPolicy');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    ports = registerOutput<List<int>>('ports');
    project = registerOutput<String>('project');
    scope = registerOutput<String>('scope');
    selfLink = registerOutput<String>('selfLink');
    serverTlsPolicy = registerOutput<String>('serverTlsPolicy');
    subnetwork = registerOutput<String>('subnetwork');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
