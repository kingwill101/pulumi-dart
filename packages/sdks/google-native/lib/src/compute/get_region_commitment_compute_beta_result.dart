// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_commitment_response_compute_beta.dart';
import 'reservation_response_compute_beta.dart';
import 'resource_commitment_response_compute_beta.dart';

/// Result data returned by getRegionCommitment.
class GetRegionCommitmentComputeBetaResult {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final bool? autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final String? category;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Commitment end time in RFC3339 text format.
  final String? endTimestamp;
  /// Type of the resource. Always compute#commitment for commitments.
  final String? kind;
  /// The license specification required as part of a license commitment.
  final LicenseResourceCommitmentResponseComputeBeta? licenseResource;
  /// List of source commitments to be merged into a new commitment.
  final List<String>? mergeSourceCommitments;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final String? plan;
  /// URL of the region where this commitment may be used.
  final String? region;
  /// List of create-on-create reseravtions for this commitment.
  final List<ReservationResponseComputeBeta>? reservations;
  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final List<ResourceCommitmentResponseComputeBeta>? resources;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Source commitment to be split into a new commitment.
  final String? splitSourceCommitment;
  /// Commitment start time in RFC3339 text format.
  final String? startTimestamp;
  /// Status of the commitment with regards to eventual expiration (each commitment has an end date defined). One of the following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
  final String? status;
  /// An optional, human-readable explanation of the status.
  final String? statusMessage;
  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final String? type;

  /// Creates a new [GetRegionCommitmentComputeBetaResult].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [endTimestamp] Commitment end time in RFC3339 text format.
  /// [kind] Type of the resource. Always compute#commitment for commitments.
  /// [licenseResource] The license specification required as part of a license commitment.
  /// [mergeSourceCommitments] List of source commitments to be merged into a new commitment.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [plan] The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// [region] URL of the region where this commitment may be used.
  /// [reservations] List of create-on-create reseravtions for this commitment.
  /// [resources] A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  /// [selfLink] Server-defined URL for the resource.
  /// [splitSourceCommitment] Source commitment to be split into a new commitment.
  /// [startTimestamp] Commitment start time in RFC3339 text format.
  /// [status] Status of the commitment with regards to eventual expiration (each commitment has an end date defined). One of the following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
  /// [statusMessage] An optional, human-readable explanation of the status.
  /// [type] The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  const GetRegionCommitmentComputeBetaResult({
    this.autoRenew,
    this.category,
    this.creationTimestamp,
    this.description,
    this.endTimestamp,
    this.kind,
    this.licenseResource,
    this.mergeSourceCommitments,
    this.name,
    this.plan,
    this.region,
    this.reservations,
    this.resources,
    this.selfLink,
    this.splitSourceCommitment,
    this.startTimestamp,
    this.status,
    this.statusMessage,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'category': ?category,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'endTimestamp': ?endTimestamp,
      'kind': ?kind,
      'licenseResource': ?licenseResource?.toMap(),
      'mergeSourceCommitments': ?mergeSourceCommitments,
      'name': ?name,
      'plan': ?plan,
      'region': ?region,
      'reservations': ?(() { final guardedValue = reservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ReservationResponseComputeBeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceCommitmentResponseComputeBeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'splitSourceCommitment': ?splitSourceCommitment,
      'startTimestamp': ?startTimestamp,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'type': ?type,
    };
  }

  factory GetRegionCommitmentComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentComputeBetaResult(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTimestamp: (() { final guardedValue = map['endTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseResource: (() { final guardedValue = map['licenseResource']; if (guardedValue == null) return null; return LicenseResourceCommitmentResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mergeSourceCommitments: (() { final guardedValue = map['mergeSourceCommitments']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservations: (() { final guardedValue = map['reservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReservationResponseComputeBeta>(guardedValue, (value) => ReservationResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceCommitmentResponseComputeBeta>(guardedValue, (value) => ResourceCommitmentResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      splitSourceCommitment: (() { final guardedValue = map['splitSourceCommitment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTimestamp: (() { final guardedValue = map['startTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
