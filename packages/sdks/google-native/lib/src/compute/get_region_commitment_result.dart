// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_resource_status_response.dart';
import 'license_resource_commitment_response.dart';
import 'reservation_response.dart';
import 'resource_commitment_response.dart';

/// Result data returned by getRegionCommitment.
class GetRegionCommitmentResult {
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
  /// Specifies the already existing reservations to attach to the Commitment. This field is optional, and it can be a full or partial URL. For example, the following are valid URLs to an reservation: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /reservations/reservation - projects/project/zones/zone/reservations/reservation
  final List<String>? existingReservations;
  /// Type of the resource. Always compute#commitment for commitments.
  final String? kind;
  /// The license specification required as part of a license commitment.
  final LicenseResourceCommitmentResponse? licenseResource;
  /// List of source commitments to be merged into a new commitment.
  final List<String>? mergeSourceCommitments;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final String? plan;
  /// URL of the region where this commitment may be used.
  final String? region;
  /// List of create-on-create reseravtions for this commitment.
  final List<ReservationResponse>? reservations;
  /// Status information for Commitment resource.
  final CommitmentResourceStatusResponse? resourceStatus;
  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final List<ResourceCommitmentResponse>? resources;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
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

  /// Creates a new [GetRegionCommitmentResult].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [endTimestamp] Commitment end time in RFC3339 text format.
  /// [existingReservations] Specifies the already existing reservations to attach to the Commitment. This field is optional, and it can be a full or partial URL. For example, the following are valid URLs to an reservation: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /reservations/reservation - projects/project/zones/zone/reservations/reservation
  /// [kind] Type of the resource. Always compute#commitment for commitments.
  /// [licenseResource] The license specification required as part of a license commitment.
  /// [mergeSourceCommitments] List of source commitments to be merged into a new commitment.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [plan] The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// [region] URL of the region where this commitment may be used.
  /// [reservations] List of create-on-create reseravtions for this commitment.
  /// [resourceStatus] Status information for Commitment resource.
  /// [resources] A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [splitSourceCommitment] Source commitment to be split into a new commitment.
  /// [startTimestamp] Commitment start time in RFC3339 text format.
  /// [status] Status of the commitment with regards to eventual expiration (each commitment has an end date defined). One of the following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
  /// [statusMessage] An optional, human-readable explanation of the status.
  /// [type] The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  const GetRegionCommitmentResult({
    this.autoRenew,
    this.category,
    this.creationTimestamp,
    this.description,
    this.endTimestamp,
    this.existingReservations,
    this.kind,
    this.licenseResource,
    this.mergeSourceCommitments,
    this.name,
    this.plan,
    this.region,
    this.reservations,
    this.resourceStatus,
    this.resources,
    this.selfLink,
    this.selfLinkWithId,
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
      'existingReservations': ?existingReservations,
      'kind': ?kind,
      'licenseResource': ?licenseResource?.toMap(),
      'mergeSourceCommitments': ?mergeSourceCommitments,
      'name': ?name,
      'plan': ?plan,
      'region': ?region,
      'reservations': ?(() { final guardedValue = reservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ReservationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceStatus': ?resourceStatus?.toMap(),
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceCommitmentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'splitSourceCommitment': ?splitSourceCommitment,
      'startTimestamp': ?startTimestamp,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'type': ?type,
    };
  }

  factory GetRegionCommitmentResult.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentResult(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTimestamp: (() { final guardedValue = map['endTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      existingReservations: (() { final guardedValue = map['existingReservations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseResource: (() { final guardedValue = map['licenseResource']; if (guardedValue == null) return null; return LicenseResourceCommitmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mergeSourceCommitments: (() { final guardedValue = map['mergeSourceCommitments']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservations: (() { final guardedValue = map['reservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReservationResponse>(guardedValue, (value) => ReservationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceStatus: (() { final guardedValue = map['resourceStatus']; if (guardedValue == null) return null; return CommitmentResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceCommitmentResponse>(guardedValue, (value) => ResourceCommitmentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      splitSourceCommitment: (() { final guardedValue = map['splitSourceCommitment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTimestamp: (() { final guardedValue = map['startTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
