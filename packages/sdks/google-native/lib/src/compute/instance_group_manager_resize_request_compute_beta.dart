import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_beta.dart';
import 'instance_group_manager_resize_request_compute_beta_args.dart';
import 'instance_group_manager_resize_request_status_response_compute_beta.dart';

/// Creates a new resize request that starts provisioning VMs immediately or queues VM creation.
class InstanceGroupManagerResizeRequestComputeBeta extends pulumi.CustomResource {
  /// The count of instances to create as part of this resize request.
  late final pulumi.Output<int> count;
  /// The creation timestamp for this resize request in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> instanceGroupManager;
  /// The resource type, which is always compute#instanceGroupManagerResizeRequest for resize requests.
  late final pulumi.Output<String> kind;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  late final pulumi.Output<DurationResponseComputeBeta> requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  late final pulumi.Output<int> resizeBy;
  /// The URL for this resize request. The server defines this URL.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;
  /// [Output only] Current state of the request.
  late final pulumi.Output<String> state;
  /// [Output only] Status of the request.
  late final pulumi.Output<InstanceGroupManagerResizeRequestStatusResponseComputeBeta> status;
  late final pulumi.Output<String> zone;

  /// Creates a new [InstanceGroupManagerResizeRequestComputeBeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceGroupManagerResizeRequestComputeBeta]. {@macro pulumi_compute_beta_instance_group_manager_resize_request_compute_beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceGroupManagerResizeRequestComputeBeta(
    String name, {
    InstanceGroupManagerResizeRequestComputeBetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:InstanceGroupManagerResizeRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    count = registerOutput<int>('count');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    instanceGroupManager = registerOutput<String>('instanceGroupManager');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    requestedRunDuration = registerOutput<DurationResponseComputeBeta>('requestedRunDuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DurationResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resizeBy = registerOutput<int>('resizeBy');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    state = registerOutput<String>('state');
    status = registerOutput<InstanceGroupManagerResizeRequestStatusResponseComputeBeta>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerResizeRequestStatusResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zone = registerOutput<String>('zone');
  }
}
