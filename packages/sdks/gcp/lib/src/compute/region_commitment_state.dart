// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_commitment_license_resource.dart';
import 'region_commitment_resource.dart';

/// Input properties used for looking up and filtering RegionCommitment resources.
class RegionCommitmentState {
  /// Specifies whether to enable automatic renewal for the commitment.
  /// The default value is false if not specified.
  /// If the field is set to true, the commitment will be automatically renewed for either
  /// one or three years according to the terms of the existing commitment.
  final pulumi.Input<bool>? autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of
  /// machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
  /// specifies commitments composed of software licenses, listed in licenseResources.
  /// Note that only MACHINE commitments should have a Type specified.
  /// Possible values are: `LICENSE`, `MACHINE`.
  final pulumi.Input<String>? category;
  /// Unique identifier for the resource.
  final pulumi.Input<int>? commitmentId;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Commitment end time in RFC3339 text format.
  final pulumi.Input<String>? endTimestamp;
  /// Specifies the already existing reservations to attach to the Commitment.
  final pulumi.Input<String>? existingReservations;
  /// The license specification required as part of a license commitment.
  /// Structure is documented below.
  final pulumi.Input<RegionCommitmentLicenseResource>? licenseResource;
  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The plan for this commitment, which determines duration and discount rate.
  /// The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// Possible values are: `TWELVE_MONTH`, `THIRTY_SIX_MONTH`.
  final pulumi.Input<String>? plan;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// URL of the region where this commitment may be used.
  final pulumi.Input<String>? region;
  /// A list of commitment amounts for particular resources.
  /// Note that VCPU and MEMORY resource commitments must occur together.
  /// Structure is documented below.
  final pulumi.Input<List<RegionCommitmentResource>>? resources;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Commitment start time in RFC3339 text format.
  final pulumi.Input<String>? startTimestamp;
  /// Status of the commitment with regards to eventual expiration
  /// (each commitment has an end date defined).
  final pulumi.Input<String>? status;
  /// A human-readable explanation of the status.
  final pulumi.Input<String>? statusMessage;
  /// The type of commitment, which affects the discount rate and the eligible resources.
  /// The type could be one of the following value: `MEMORY_OPTIMIZED`, `ACCELERATOR_OPTIMIZED`,
  /// `GENERAL_PURPOSE`, `GENERAL_PURPOSE_N2`, `GENERAL_PURPOSE_N2D`, `GENERAL_PURPOSE_E2`,
  /// `GENERAL_PURPOSE_T2D`, `GENERAL_PURPOSE_C3`, `COMPUTE_OPTIMIZED_C2`, `COMPUTE_OPTIMIZED_C2D` and
  /// `GRAPHICS_OPTIMIZED_G2`
  final pulumi.Input<String>? type;

  /// Creates a new [RegionCommitmentState].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of
  /// [commitmentId] Unique identifier for the resource.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [endTimestamp] Commitment end time in RFC3339 text format.
  /// [existingReservations] Specifies the already existing reservations to attach to the Commitment.
  /// [licenseResource] The license specification required as part of a license commitment.
  /// [name] Name of the resource. The name must be 1-63 characters long and match
  /// [plan] The plan for this commitment, which determines duration and discount rate.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where this commitment may be used.
  /// [resources] A list of commitment amounts for particular resources.
  /// [selfLink] The URI of the created resource.
  /// [startTimestamp] Commitment start time in RFC3339 text format.
  /// [status] Status of the commitment with regards to eventual expiration
  /// [statusMessage] A human-readable explanation of the status.
  /// [type] The type of commitment, which affects the discount rate and the eligible resources.
  RegionCommitmentState({
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? category,
    pulumi.Output<int>? commitmentId,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endTimestamp,
    pulumi.Output<String>? existingReservations,
    pulumi.Output<RegionCommitmentLicenseResource>? licenseResource,
    pulumi.Output<String>? name,
    pulumi.Output<String>? plan,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<List<RegionCommitmentResource>>? resources,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? startTimestamp,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
    pulumi.Output<String>? type,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      category = pulumi.Input.asOptionalInput<String>(category),
      commitmentId = pulumi.Input.asOptionalInput<int>(commitmentId),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      endTimestamp = pulumi.Input.asOptionalInput<String>(endTimestamp),
      existingReservations = pulumi.Input.asOptionalInput<String>(existingReservations),
      licenseResource = pulumi.Input.asOptionalInput<RegionCommitmentLicenseResource>(licenseResource),
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asOptionalInput<String>(plan),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      resources = pulumi.Input.asOptionalInput<List<RegionCommitmentResource>>(resources),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      startTimestamp = pulumi.Input.asOptionalInput<String>(startTimestamp),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'category': ?category,
      'commitmentId': ?commitmentId,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'endTimestamp': ?endTimestamp,
      'existingReservations': ?existingReservations,
      'licenseResource': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentLicenseResource, Map<String, dynamic>>(licenseResource, (value) => value.toMap()),
      'name': ?name,
      'plan': ?plan,
      'project': ?project,
      'region': ?region,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<RegionCommitmentResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<RegionCommitmentResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'startTimestamp': ?startTimestamp,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'type': ?type,
    };
  }

  factory RegionCommitmentState.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentState(
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      commitmentId: map['commitmentId'] == null ? null : pulumi.Output.create<int>(map['commitmentId'] as int),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endTimestamp: map['endTimestamp'] == null ? null : pulumi.Output.create<String>(map['endTimestamp'] as String),
      existingReservations: map['existingReservations'] == null ? null : pulumi.Output.create<String>(map['existingReservations'] as String),
      licenseResource: map['licenseResource'] == null ? null : pulumi.Output.create<RegionCommitmentLicenseResource>(RegionCommitmentLicenseResource.fromMap((map['licenseResource'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<String>(map['plan'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<RegionCommitmentResource>>(pulumi.Input.decodeList<RegionCommitmentResource>(map['resources'], (value) => RegionCommitmentResource.fromMap((value as Map).cast<String, dynamic>()))),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      startTimestamp: map['startTimestamp'] == null ? null : pulumi.Output.create<String>(map['startTimestamp'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

