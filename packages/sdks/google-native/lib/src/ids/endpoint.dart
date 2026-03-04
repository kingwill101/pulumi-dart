import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';

/// Creates a new Endpoint in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Endpoint extends pulumi.CustomResource {
  /// The create time timestamp.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the endpoint
  late final pulumi.Output<String> description;

  /// The fully qualified URL of the endpoint's ILB Forwarding Rule.
  late final pulumi.Output<String> endpointForwardingRule;

  /// Required. The endpoint identifier. This will be part of the endpoint's resource name. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  late final pulumi.Output<String> endpointId;

  /// The IP address of the IDS Endpoint's ILB.
  late final pulumi.Output<String> endpointIp;

  /// The labels of the endpoint.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The name of the endpoint.
  late final pulumi.Output<String> name;

  /// The fully qualified URL of the network to which the IDS Endpoint is attached.
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Lowest threat severity that this endpoint will alert on.
  late final pulumi.Output<String> severity;

  /// Current state of the endpoint.
  late final pulumi.Output<String> state;

  /// List of threat IDs to be excepted from generating alerts.
  late final pulumi.Output<List<String>> threatExceptions;

  /// Whether the endpoint should report traffic logs in addition to threat logs.
  late final pulumi.Output<bool> trafficLogs;

  /// The update time timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_ids_v1_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:ids/v1:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    endpointForwardingRule = registerOutput<String>('endpointForwardingRule');
    endpointId = registerOutput<String>('endpointId');
    endpointIp = registerOutput<String>('endpointIp');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    severity = registerOutput<String>('severity');
    state = registerOutput<String>('state');
    threatExceptions = registerOutput<List<String>>('threatExceptions');
    trafficLogs = registerOutput<bool>('trafficLogs');
    updateTime = registerOutput<String>('updateTime');
  }
}
