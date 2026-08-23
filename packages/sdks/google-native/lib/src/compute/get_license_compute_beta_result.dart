// ignore_for_file: unused_element, unnecessary_cast

import 'license_resource_requirements_response_compute_beta.dart';

/// Result data returned by getLicense.
class GetLicenseComputeBetaResult {
  /// Deprecated. This field no longer reflects whether a license charges a usage fee.
  final bool chargesUseFee;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String description;
  /// Type of resource. Always compute#license for licenses.
  final String kind;
  /// The unique code used to attach this license to images, snapshots, and disks.
  final String licenseCode;
  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  final String name;
  final LicenseResourceRequirementsResponseComputeBeta resourceRequirements;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  final bool transferable;

  /// Creates a new [GetLicenseComputeBetaResult].
  /// [chargesUseFee] Deprecated. This field no longer reflects whether a license charges a usage fee.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [kind] Type of resource. Always compute#license for licenses.
  /// [licenseCode] The unique code used to attach this license to images, snapshots, and disks.
  /// [name] Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  /// [resourceRequirements] Required.
  /// [selfLink] Server-defined URL for the resource.
  /// [transferable] If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  const GetLicenseComputeBetaResult({
    required this.chargesUseFee,
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.licenseCode,
    required this.name,
    required this.resourceRequirements,
    required this.selfLink,
    required this.transferable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chargesUseFee': chargesUseFee,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'kind': kind,
      'licenseCode': licenseCode,
      'name': name,
      'resourceRequirements': resourceRequirements.toMap(),
      'selfLink': selfLink,
      'transferable': transferable,
    };
  }

  factory GetLicenseComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetLicenseComputeBetaResult(
      chargesUseFee: map['chargesUseFee'] as bool,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      licenseCode: map['licenseCode'] as String,
      name: map['name'] as String,
      resourceRequirements: LicenseResourceRequirementsResponseComputeBeta.fromMap((map['resourceRequirements']! as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      transferable: map['transferable'] as bool,
    );
  }
}
