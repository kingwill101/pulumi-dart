// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_commitment_license_resource.dart';
import 'region_commitment_params.dart';
import 'region_commitment_resource.dart';

/// Input properties used for looking up and filtering RegionCommitment resources.
class RegionCommitmentState {
  /// Specifies whether to enable automatic renewal for the commitment.
  /// The default value is false if not specified.
  /// If the field is set to true, the commitment will be automatically renewed for either
  /// one or three years according to the terms of the existing commitment.
  final pulumi.Input<bool?>? autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of
  /// machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
  /// specifies commitments composed of software licenses, listed in licenseResources.
  /// Note that only MACHINE commitments should have a Type specified.
  /// Possible values are: `LICENSE`, `MACHINE`.
  final pulumi.Input<String?>? category;
  /// Unique identifier for the resource.
  final pulumi.Input<int?>? commitmentId;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// Commitment end time in RFC3339 text format.
  final pulumi.Input<String?>? endTimestamp;
  /// Specifies the already existing reservations to attach to the Commitment. This field will suppress
  /// diffs that change the value from empty to non-empty. To force changing this field from empty to non-empty,
  /// change another field at the same time.
  final pulumi.Input<String?>? existingReservations;
  /// The license specification required as part of a license commitment.
  /// Structure is documented below.
  final pulumi.Input<RegionCommitmentLicenseResource?>? licenseResource;
  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<RegionCommitmentParams?>? params;
  /// The plan for this commitment, which determines duration and discount rate.
  /// The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// Possible values are: `TWELVE_MONTH`, `THIRTY_SIX_MONTH`.
  final pulumi.Input<String?>? plan;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// URL of the region where this commitment may be used.
  final pulumi.Input<String?>? region;
  /// A list of commitment amounts for particular resources.
  /// Note that VCPU and MEMORY resource commitments must occur together.
  /// Structure is documented below.
  final pulumi.Input<List<RegionCommitmentResource>?>? resources;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// Commitment start time in RFC3339 text format.
  final pulumi.Input<String?>? startTimestamp;
  /// Status of the commitment with regards to eventual expiration
  /// (each commitment has an end date defined).
  final pulumi.Input<String?>? status;
  /// A human-readable explanation of the status.
  final pulumi.Input<String?>? statusMessage;
  /// The type of commitment, which affects the discount rate and the eligible resources.
  /// The type could be one of the following value: `MEMORY_OPTIMIZED`, `ACCELERATOR_OPTIMIZED`,
  /// `GENERAL_PURPOSE`, `GENERAL_PURPOSE_N2`, `GENERAL_PURPOSE_N2D`, `GENERAL_PURPOSE_E2`,
  /// `GENERAL_PURPOSE_T2D`, `GENERAL_PURPOSE_C3`, `COMPUTE_OPTIMIZED_C2`, `COMPUTE_OPTIMIZED_C2D` and
  /// `GRAPHICS_OPTIMIZED_G2`
  final pulumi.Input<String?>? type;

  /// Creates a new [RegionCommitmentState].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of
  /// [commitmentId] Unique identifier for the resource.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [endTimestamp] Commitment end time in RFC3339 text format.
  /// [existingReservations] Specifies the already existing reservations to attach to the Commitment. This field will suppress
  /// [licenseResource] The license specification required as part of a license commitment.
  /// [name] Name of the resource. The name must be 1-63 characters long and match
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [plan] The plan for this commitment, which determines duration and discount rate.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where this commitment may be used.
  /// [resources] A list of commitment amounts for particular resources.
  /// [selfLink] The URI of the created resource.
  /// [startTimestamp] Commitment start time in RFC3339 text format.
  /// [status] Status of the commitment with regards to eventual expiration
  /// [statusMessage] A human-readable explanation of the status.
  /// [type] The type of commitment, which affects the discount rate and the eligible resources.
  const RegionCommitmentState({
    this.autoRenew,
    this.category,
    this.commitmentId,
    this.creationTimestamp,
    this.description,
    this.endTimestamp,
    this.existingReservations,
    this.licenseResource,
    this.name,
    this.params,
    this.plan,
    this.project,
    this.region,
    this.resources,
    this.selfLink,
    this.startTimestamp,
    this.status,
    this.statusMessage,
    this.type,
  });

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
      'params': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentParams, Map<String, dynamic>>(params, (value) => value.toMap()),
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
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitmentId: (() { final guardedValue = map['commitmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTimestamp: (() { final guardedValue = map['endTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingReservations: (() { final guardedValue = map['existingReservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseResource: (() { final guardedValue = map['licenseResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionCommitmentLicenseResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionCommitmentParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionCommitmentResource>(guardedValue, (value) => RegionCommitmentResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimestamp: (() { final guardedValue = map['startTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
