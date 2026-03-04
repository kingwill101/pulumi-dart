// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_beta.dart';

/// {@template pulumi_compute_beta_instance_group_manager_resize_request_compute_beta_args_doc}
/// The set of arguments for InstanceGroupManagerResizeRequest.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_instance_group_manager_resize_request_compute_beta_args_doc}
class InstanceGroupManagerResizeRequestComputeBetaArgs {
  /// The count of instances to create as part of this resize request.
  final pulumi.Input<int>? count;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> instanceGroupManager;

  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  final pulumi.Input<DurationComputeBeta>? requestedRunDuration;

  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int>? resizeBy;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerResizeRequestComputeBetaArgs].
  /// [count] The count of instances to create as part of this resize request.
  /// [description] An optional description of this resource.
  /// [instanceGroupManager] Required.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  /// [zone] Optional.
  InstanceGroupManagerResizeRequestComputeBetaArgs({
    this.count,
    this.description,
    required this.instanceGroupManager,
    this.name,
    this.project,
    this.requestId,
    this.requestedRunDuration,
    this.resizeBy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'description': ?description,
      'instanceGroupManager': instanceGroupManager,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'requestedRunDuration':
          ?pulumi.Input.mapOptionalInputValue<
            DurationComputeBeta,
            Map<String, dynamic>
          >(requestedRunDuration, (value) => value.toMap()),
      'resizeBy': ?resizeBy,
      'zone': ?zone,
    };
  }

  factory InstanceGroupManagerResizeRequestComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerResizeRequestComputeBetaArgs(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceGroupManager: pulumi.Input.fromValue(
        map['instanceGroupManager'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestedRunDuration: (() {
        final guardedValue = map['requestedRunDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DurationComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resizeBy: (() {
        final guardedValue = map['resizeBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
