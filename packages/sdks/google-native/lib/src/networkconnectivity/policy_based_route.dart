import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';
import 'interconnect_attachment_response.dart';
import 'policy_based_route_args.dart';
import 'virtual_machine_response.dart';

/// Creates a new policy-based route in a given project and location.
/// Auto-naming is currently not supported for this resource.
class PolicyBasedRoute extends pulumi.CustomResource {
  /// Time when the policy-based route was created.
  late final pulumi.Output<String> createTime;
  /// Optional. An optional description of this resource. Provide this field when you create the resource.
  late final pulumi.Output<String> description;
  /// The filter to match L4 traffic.
  late final pulumi.Output<FilterResponse> filter;
  /// Optional. The interconnect attachments that this policy-based route applies to.
  late final pulumi.Output<InterconnectAttachmentResponse> interconnectAttachment;
  /// Type of this resource. Always networkconnectivity#policyBasedRoute for policy-based Route resources.
  late final pulumi.Output<String> kind;
  /// User-defined labels.
  late final pulumi.Output<Map<String, String>> labels;
  /// Immutable. A unique name of the resource in the form of `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  late final pulumi.Output<String> name;
  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  late final pulumi.Output<String> network;
  /// Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. For this version, only nextHopIlbIp is supported.
  late final pulumi.Output<String> nextHopIlbIp;
  /// Optional. Other routes that will be referenced to determine the next hop of the packet.
  late final pulumi.Output<String> nextHopOtherRoutes;
  /// Required. Unique id for the policy-based route to create.
  late final pulumi.Output<String> policyBasedRouteId;
  /// Optional. The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  late final pulumi.Output<int> priority;
  late final pulumi.Output<String> project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined fully-qualified URL for this resource.
  late final pulumi.Output<String> selfLink;
  /// Time when the policy-based route was updated.
  late final pulumi.Output<String> updateTime;
  /// Optional. VM instances to which this policy-based route applies to.
  late final pulumi.Output<VirtualMachineResponse> virtualMachine;
  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  late final pulumi.Output<List<Map<String, dynamic>>> warnings;

  /// Creates a new [PolicyBasedRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyBasedRoute]. {@macro pulumi_networkconnectivity_v1_policy_based_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyBasedRoute(
    String name, {
    PolicyBasedRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:PolicyBasedRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    filter = registerOutput<FilterResponse>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interconnectAttachment = registerOutput<InterconnectAttachmentResponse>('interconnectAttachment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterconnectAttachmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    nextHopIlbIp = registerOutput<String>('nextHopIlbIp');
    nextHopOtherRoutes = registerOutput<String>('nextHopOtherRoutes');
    policyBasedRouteId = registerOutput<String>('policyBasedRouteId');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
    virtualMachine = registerOutput<VirtualMachineResponse>('virtualMachine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warnings = registerOutput<List<Map<String, dynamic>>>('warnings');
  }
}
