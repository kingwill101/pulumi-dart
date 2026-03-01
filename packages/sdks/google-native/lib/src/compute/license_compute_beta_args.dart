// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_requirements_compute_beta.dart';

/// {@template pulumi_compute_beta_license_compute_beta_args_doc}
/// The set of arguments for License.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_license_compute_beta_args_doc}
class LicenseComputeBetaArgs {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;
  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<LicenseResourceRequirementsComputeBeta>? resourceRequirements;
  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  final pulumi.Input<bool>? transferable;

  /// Creates a new [LicenseComputeBetaArgs].
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [name] Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [resourceRequirements] Optional.
  /// [transferable] If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  LicenseComputeBetaArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<LicenseResourceRequirementsComputeBeta>? resourceRequirements,
    pulumi.Output<bool>? transferable,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      resourceRequirements = pulumi.Input.asOptionalInput<LicenseResourceRequirementsComputeBeta>(resourceRequirements),
      transferable = pulumi.Input.asOptionalInput<bool>(transferable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'resourceRequirements': ?pulumi.Input.mapOptionalInputValue<LicenseResourceRequirementsComputeBeta, Map<String, dynamic>>(resourceRequirements, (value) => value.toMap()),
      'transferable': ?transferable,
    };
  }

  factory LicenseComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return LicenseComputeBetaArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      resourceRequirements: map['resourceRequirements'] == null ? null : pulumi.Output.create<LicenseResourceRequirementsComputeBeta>(LicenseResourceRequirementsComputeBeta.fromMap((map['resourceRequirements'] as Map).cast<String, dynamic>())),
      transferable: map['transferable'] == null ? null : pulumi.Output.create<bool>(map['transferable'] as bool),
    );
  }
}

