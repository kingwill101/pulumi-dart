// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_requirements_compute_v1.dart';

/// {@template pulumi_compute_v1_license_compute_v1_args_doc}
/// The set of arguments for License.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_license_compute_v1_args_doc}
class LicenseComputeV1Args {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;

  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<LicenseResourceRequirementsComputeV1>?
  resourceRequirements;

  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  final pulumi.Input<bool>? transferable;

  /// Creates a new [LicenseComputeV1Args].
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [name] Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [resourceRequirements] Optional.
  /// [transferable] If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  LicenseComputeV1Args({
    this.description,
    this.name,
    this.project,
    this.requestId,
    this.resourceRequirements,
    this.transferable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'resourceRequirements':
          ?pulumi.Input.mapOptionalInputValue<
            LicenseResourceRequirementsComputeV1,
            Map<String, dynamic>
          >(resourceRequirements, (value) => value.toMap()),
      'transferable': ?transferable,
    };
  }

  factory LicenseComputeV1Args.fromMap(Map<String, dynamic> map) {
    return LicenseComputeV1Args(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      resourceRequirements: (() {
        final guardedValue = map['resourceRequirements'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LicenseResourceRequirementsComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      transferable: (() {
        final guardedValue = map['transferable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
