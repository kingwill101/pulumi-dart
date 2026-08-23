// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_requested_run_duration.dart';

/// {@template pulumi_compute_region_resize_request_region_resize_request_args_doc}
/// The set of arguments for RegionResizeRequest.
/// {@endtemplate}
/// {@macro pulumi_compute_region_resize_request_region_resize_request_args_doc}
class RegionResizeRequestArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resize-request.
  final pulumi.Input<String>? description;
  /// The reference of the regional instance group manager this ResizeRequest is a part of.
  final pulumi.Input<String> instanceGroupManager;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// Structure is documented below.
  final pulumi.Input<RegionResizeRequestRequestedRunDuration>? requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int> resizeBy;

  /// Creates a new [RegionResizeRequestArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resize-request.
  /// [instanceGroupManager] The reference of the regional instance group manager this ResizeRequest is a part of.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  const RegionResizeRequestArgs({
    this.deletionPolicy,
    this.description,
    required this.instanceGroupManager,
    this.name,
    this.project,
    this.region,
    this.requestedRunDuration,
    required this.resizeBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'instanceGroupManager': instanceGroupManager,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'requestedRunDuration': ?pulumi.Input.mapOptionalInputValue<RegionResizeRequestRequestedRunDuration, Map<String, dynamic>>(requestedRunDuration, (value) => value.toMap()),
      'resizeBy': resizeBy,
    };
  }

  factory RegionResizeRequestArgs.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceGroupManager: pulumi.Input.fromValue(map['instanceGroupManager'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedRunDuration: (() { final guardedValue = map['requestedRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionResizeRequestRequestedRunDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resizeBy: pulumi.Input.fromValue(map['resizeBy'] as int),
    );
  }
}
