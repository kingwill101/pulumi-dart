import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_compute_v1_args.dart';
import 'license_resource_requirements_response_compute_v1.dart';

/// Create a License resource in the specified project. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
class LicenseComputeV1 extends pulumi.CustomResource {
  /// Deprecated. This field no longer reflects whether a license charges a usage fee.
  late final pulumi.Output<bool> chargesUseFee;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final pulumi.Output<String> description;
  /// Type of resource. Always compute#license for licenses.
  late final pulumi.Output<String> kind;
  /// The unique code used to attach this license to images, snapshots, and disks.
  late final pulumi.Output<String> licenseCode;
  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<LicenseResourceRequirementsResponseComputeV1> resourceRequirements;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  late final pulumi.Output<bool> transferable;

  /// Creates a new [LicenseComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicenseComputeV1]. {@macro pulumi_compute_v1_license_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicenseComputeV1(
    String name, {
    LicenseComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:License',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    chargesUseFee = registerOutput<bool>('chargesUseFee');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    licenseCode = registerOutput<String>('licenseCode');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    resourceRequirements = registerOutput<LicenseResourceRequirementsResponseComputeV1>('resourceRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LicenseResourceRequirementsResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    transferable = registerOutput<bool>('transferable');
  }
}
