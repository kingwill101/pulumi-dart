// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bulk_insert_instance_resource.dart';
import 'queuing_policy.dart';

/// {@template pulumi_compute_alpha_zone_queued_resource_args_doc}
/// The set of arguments for ZoneQueuedResource.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_zone_queued_resource_args_doc}
class ZoneQueuedResourceArgs {
  /// Specification of VM instances to create.
  final pulumi.Input<BulkInsertInstanceResource>? bulkInsertInstanceResource;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Queuing parameters for the requested capacity.
  final pulumi.Input<QueuingPolicy>? queuingPolicy;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String>? zone;

  /// Creates a new [ZoneQueuedResourceArgs].
  /// [bulkInsertInstanceResource] Specification of VM instances to create.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [queuingPolicy] Queuing parameters for the requested capacity.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [zone] Optional.
  ZoneQueuedResourceArgs({
    this.bulkInsertInstanceResource,
    this.description,
    this.name,
    this.project,
    this.queuingPolicy,
    this.requestId,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bulkInsertInstanceResource': ?pulumi.Input.mapOptionalInputValue<BulkInsertInstanceResource, Map<String, dynamic>>(bulkInsertInstanceResource, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'queuingPolicy': ?pulumi.Input.mapOptionalInputValue<QueuingPolicy, Map<String, dynamic>>(queuingPolicy, (value) => value.toMap()),
      'requestId': ?requestId,
      'zone': ?zone,
    };
  }

  factory ZoneQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return ZoneQueuedResourceArgs(
      bulkInsertInstanceResource: map['bulkInsertInstanceResource'] == null ? null : (BulkInsertInstanceResource.fromMap((map['bulkInsertInstanceResource'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      queuingPolicy: map['queuingPolicy'] == null ? null : (QueuingPolicy.fromMap((map['queuingPolicy'] as Map).cast<String, dynamic>())).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

