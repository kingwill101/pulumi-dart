// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';
import 'queuing_policy.dart';

/// {@template pulumi_compute_alpha_instance_group_manager_resize_request_args_doc}
/// The set of arguments for InstanceGroupManagerResizeRequest.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_instance_group_manager_resize_request_args_doc}
class InstanceGroupManagerResizeRequestArgs {
  /// The count of instances to create as part of this resize request.
  final pulumi.Input<int>? count;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> instanceGroupManager;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// When set, defines queing parameters for the requested deferred capacity. When unset, the request starts provisioning immediately, or fails if immediate provisioning is not possible.
  final pulumi.Input<QueuingPolicy>? queuingPolicy;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  final pulumi.Input<Duration>? requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int>? resizeBy;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerResizeRequestArgs].
  /// [count] The count of instances to create as part of this resize request.
  /// [description] An optional description of this resource.
  /// [instanceGroupManager] Required.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] Optional.
  /// [queuingPolicy] When set, defines queing parameters for the requested deferred capacity. When unset, the request starts provisioning immediately, or fails if immediate provisioning is not possible.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  /// [zone] Optional.
  InstanceGroupManagerResizeRequestArgs({
    pulumi.Output<int>? count,
    pulumi.Output<String>? description,
    required pulumi.Output<String> instanceGroupManager,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<QueuingPolicy>? queuingPolicy,
    pulumi.Output<String>? requestId,
    pulumi.Output<Duration>? requestedRunDuration,
    pulumi.Output<int>? resizeBy,
    pulumi.Output<String>? zone,
  }) :
      count = pulumi.Input.asOptionalInput<int>(count),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceGroupManager = pulumi.Input.asInput<String>(instanceGroupManager),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      queuingPolicy = pulumi.Input.asOptionalInput<QueuingPolicy>(queuingPolicy),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      requestedRunDuration = pulumi.Input.asOptionalInput<Duration>(requestedRunDuration),
      resizeBy = pulumi.Input.asOptionalInput<int>(resizeBy),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'description': ?description,
      'instanceGroupManager': instanceGroupManager,
      'name': ?name,
      'project': ?project,
      'queuingPolicy': ?pulumi.Input.mapOptionalInputValue<QueuingPolicy, Map<String, dynamic>>(queuingPolicy, (value) => value.toMap()),
      'requestId': ?requestId,
      'requestedRunDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(requestedRunDuration, (value) => value.toMap()),
      'resizeBy': ?resizeBy,
      'zone': ?zone,
    };
  }

  factory InstanceGroupManagerResizeRequestArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestArgs(
      count: map['count'] == null ? null : pulumi.Output.create<int>(map['count'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceGroupManager: pulumi.Output.create<String>(map['instanceGroupManager'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      queuingPolicy: map['queuingPolicy'] == null ? null : pulumi.Output.create<QueuingPolicy>(QueuingPolicy.fromMap((map['queuingPolicy'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      requestedRunDuration: map['requestedRunDuration'] == null ? null : pulumi.Output.create<Duration>(Duration.fromMap((map['requestedRunDuration'] as Map).cast<String, dynamic>())),
      resizeBy: map['resizeBy'] == null ? null : pulumi.Output.create<int>(map['resizeBy'] as int),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

