import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_target_tcp_proxy_compute_v1_args.dart';

/// Creates a TargetTcpProxy resource in the specified project and region using the data included in the request.
class RegionTargetTcpProxyComputeV1 extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Type of the resource. Always compute#targetTcpProxy for target TCP proxies.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  late final pulumi.Output<bool> proxyBind;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  late final pulumi.Output<String> proxyHeader;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// URL to the BackendService resource.
  late final pulumi.Output<String> service;

  /// Creates a new [RegionTargetTcpProxyComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionTargetTcpProxyComputeV1]. {@macro pulumi_compute_v1_region_target_tcp_proxy_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionTargetTcpProxyComputeV1(
    String name, {
    RegionTargetTcpProxyComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/v1:RegionTargetTcpProxy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyBind = registerOutput<bool>('proxyBind');
    proxyHeader = registerOutput<String>('proxyHeader');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    service = registerOutput<String>('service');
  }
}
