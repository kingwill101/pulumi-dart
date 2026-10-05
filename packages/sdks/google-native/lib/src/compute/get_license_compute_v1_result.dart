// ignore_for_file: unused_element, unnecessary_cast

import 'license_resource_requirements_response_compute_v1.dart';

/// Result data returned by getLicense.
class GetLicenseComputeV1Result {
  /// Deprecated. This field no longer reflects whether a license charges a usage fee.
  final bool? chargesUseFee;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String? description;
  /// Type of resource. Always compute#license for licenses.
  final String? kind;
  /// The unique code used to attach this license to images, snapshots, and disks.
  final String? licenseCode;
  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  final String? name;
  final LicenseResourceRequirementsResponseComputeV1? resourceRequirements;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  final bool? transferable;

  /// Creates a new [GetLicenseComputeV1Result].
  /// [chargesUseFee] Deprecated. This field no longer reflects whether a license charges a usage fee.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [kind] Type of resource. Always compute#license for licenses.
  /// [licenseCode] The unique code used to attach this license to images, snapshots, and disks.
  /// [name] Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  /// [resourceRequirements] Optional.
  /// [selfLink] Server-defined URL for the resource.
  /// [transferable] If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  const GetLicenseComputeV1Result({
    this.chargesUseFee,
    this.creationTimestamp,
    this.description,
    this.kind,
    this.licenseCode,
    this.name,
    this.resourceRequirements,
    this.selfLink,
    this.transferable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chargesUseFee': ?chargesUseFee,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'kind': ?kind,
      'licenseCode': ?licenseCode,
      'name': ?name,
      'resourceRequirements': ?resourceRequirements?.toMap(),
      'selfLink': ?selfLink,
      'transferable': ?transferable,
    };
  }

  factory GetLicenseComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetLicenseComputeV1Result(
      chargesUseFee: (() { final guardedValue = map['chargesUseFee']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseCode: (() { final guardedValue = map['licenseCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceRequirements: (() { final guardedValue = map['resourceRequirements']; if (guardedValue == null) return null; return LicenseResourceRequirementsResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transferable: (() { final guardedValue = map['transferable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
