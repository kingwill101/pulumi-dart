// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_resource_status_response.dart';
import 'license_resource_commitment_response.dart';
import 'reservation_response.dart';
import 'resource_commitment_response.dart';

/// Result data returned by getRegionCommitment.
class GetRegionCommitmentResult {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final bool autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final String category;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Commitment end time in RFC3339 text format.
  final String endTimestamp;
  /// Specifies the already existing reservations to attach to the Commitment. This field is optional, and it can be a full or partial URL. For example, the following are valid URLs to an reservation: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /reservations/reservation - projects/project/zones/zone/reservations/reservation
  final List<String> existingReservations;
  /// Type of the resource. Always compute#commitment for commitments.
  final String kind;
  /// The license specification required as part of a license commitment.
  final LicenseResourceCommitmentResponse licenseResource;
  /// List of source commitments to be merged into a new commitment.
  final List<String> mergeSourceCommitments;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final String plan;
  /// URL of the region where this commitment may be used.
  final String region;
  /// List of create-on-create reseravtions for this commitment.
  final List<ReservationResponse> reservations;
  /// Status information for Commitment resource.
  final CommitmentResourceStatusResponse resourceStatus;
  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final List<ResourceCommitmentResponse> resources;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;
  /// Source commitment to be split into a new commitment.
  final String splitSourceCommitment;
  /// Commitment start time in RFC3339 text format.
  final String startTimestamp;
  /// Status of the commitment with regards to eventual expiration (each commitment has an end date defined). One of the following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
  final String status;
  /// An optional, human-readable explanation of the status.
  final String statusMessage;
  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final String type;

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
  GetRegionCommitmentResult({
    required this.autoRenew,
    required this.category,
    required this.creationTimestamp,
    required this.description,
    required this.endTimestamp,
    required this.existingReservations,
    required this.kind,
    required this.licenseResource,
    required this.mergeSourceCommitments,
    required this.name,
    required this.plan,
    required this.region,
    required this.reservations,
    required this.resourceStatus,
    required this.resources,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.splitSourceCommitment,
    required this.startTimestamp,
    required this.status,
    required this.statusMessage,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': autoRenew,
      'category': category,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'endTimestamp': endTimestamp,
      'existingReservations': existingReservations,
      'kind': kind,
      'licenseResource': licenseResource.toMap(),
      'mergeSourceCommitments': mergeSourceCommitments,
      'name': name,
      'plan': plan,
      'region': region,
      'reservations': pulumi.Input.encodeList<ReservationResponse, Map<String, dynamic>>(reservations, (value) => value.toMap()),
      'resourceStatus': resourceStatus.toMap(),
      'resources': pulumi.Input.encodeList<ResourceCommitmentResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'splitSourceCommitment': splitSourceCommitment,
      'startTimestamp': startTimestamp,
      'status': status,
      'statusMessage': statusMessage,
      'type': type,
    };
  }

  factory GetRegionCommitmentResult.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentResult(
      autoRenew: map['autoRenew'] as bool,
      category: map['category'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      endTimestamp: map['endTimestamp'] as String,
      existingReservations: (map['existingReservations'] as List).cast<String>(),
      kind: map['kind'] as String,
      licenseResource: LicenseResourceCommitmentResponse.fromMap((map['licenseResource']! as Map).cast<String, dynamic>()),
      mergeSourceCommitments: (map['mergeSourceCommitments'] as List).cast<String>(),
      name: map['name'] as String,
      plan: map['plan'] as String,
      region: map['region'] as String,
      reservations: pulumi.Input.decodeList<ReservationResponse>(map['reservations']!, (value) => ReservationResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceStatus: CommitmentResourceStatusResponse.fromMap((map['resourceStatus']! as Map).cast<String, dynamic>()),
      resources: pulumi.Input.decodeList<ResourceCommitmentResponse>(map['resources']!, (value) => ResourceCommitmentResponse.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      splitSourceCommitment: map['splitSourceCommitment'] as String,
      startTimestamp: map['startTimestamp'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      type: map['type'] as String,
    );
  }
}

