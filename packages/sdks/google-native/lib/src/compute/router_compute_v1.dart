import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_peer_response_compute_v1.dart';
import 'router_bgp_response_compute_v1.dart';
import 'router_compute_v1_args.dart';
import 'router_interface_response_compute_v1.dart';
import 'router_md5_authentication_key_response_compute_v1.dart';
import 'router_nat_response_compute_v1.dart';

/// Creates a Router resource in the specified project and region using the data included in the request.
class RouterComputeV1 extends pulumi.CustomResource {
  /// BGP information specific to this router.
  late final pulumi.Output<RouterBgpResponseComputeV1> bgp;
  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  late final pulumi.Output<List<RouterBgpPeerResponseComputeV1>> bgpPeers;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  late final pulumi.Output<bool> encryptedInterconnectRouter;
  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  late final pulumi.Output<List<RouterInterfaceResponseComputeV1>> interfaces;
  /// Type of resource. Always compute#router for routers.
  late final pulumi.Output<String> kind;
  /// Keys used for MD5 authentication.
  late final pulumi.Output<List<RouterMd5AuthenticationKeyResponseComputeV1>> md5AuthenticationKeys;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// A list of NAT services created in this router.
  late final pulumi.Output<List<RouterNatResponseComputeV1>> nats;
  /// URI of the network to which this router belongs.
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RouterComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterComputeV1]. {@macro pulumi_compute_v1_router_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterComputeV1(
    String name, {
    RouterComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:Router',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['project', 'region']).merge(options),
        ) {
    bgp = registerOutput<RouterBgpResponseComputeV1>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterBgpResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpPeers = registerOutput<List<RouterBgpPeerResponseComputeV1>>('bgpPeers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterBgpPeerResponseComputeV1>(guardedValue, (value) => RouterBgpPeerResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    encryptedInterconnectRouter = registerOutput<bool>('encryptedInterconnectRouter');
    interfaces = registerOutput<List<RouterInterfaceResponseComputeV1>>('interfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterInterfaceResponseComputeV1>(guardedValue, (value) => RouterInterfaceResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    md5AuthenticationKeys = registerOutput<List<RouterMd5AuthenticationKeyResponseComputeV1>>('md5AuthenticationKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterMd5AuthenticationKeyResponseComputeV1>(guardedValue, (value) => RouterMd5AuthenticationKeyResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    nats = registerOutput<List<RouterNatResponseComputeV1>>('nats', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterNatResponseComputeV1>(guardedValue, (value) => RouterNatResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Creates a typed reference to an existing [RouterComputeV1] resource.
  RouterComputeV1.reference(String urn)
    : super(
        'google-native:compute/v1:Router',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bgp = registerOutput<RouterBgpResponseComputeV1>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterBgpResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpPeers = registerOutput<List<RouterBgpPeerResponseComputeV1>>('bgpPeers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterBgpPeerResponseComputeV1>(guardedValue, (value) => RouterBgpPeerResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    encryptedInterconnectRouter = registerOutput<bool>('encryptedInterconnectRouter');
    interfaces = registerOutput<List<RouterInterfaceResponseComputeV1>>('interfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterInterfaceResponseComputeV1>(guardedValue, (value) => RouterInterfaceResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    md5AuthenticationKeys = registerOutput<List<RouterMd5AuthenticationKeyResponseComputeV1>>('md5AuthenticationKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterMd5AuthenticationKeyResponseComputeV1>(guardedValue, (value) => RouterMd5AuthenticationKeyResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    nats = registerOutput<List<RouterNatResponseComputeV1>>('nats', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterNatResponseComputeV1>(guardedValue, (value) => RouterNatResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); });
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
  }
}
