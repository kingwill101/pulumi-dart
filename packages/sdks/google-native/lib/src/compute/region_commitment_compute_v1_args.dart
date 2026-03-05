// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_commitment_compute_v1.dart';
import 'region_commitment_category_compute_v1.dart';
import 'region_commitment_plan_compute_v1.dart';
import 'region_commitment_type_compute_v1.dart';
import 'reservation_compute_v1_resource.dart';
import 'resource_commitment_compute_v1.dart';

/// {@template pulumi_compute_v1_region_commitment_compute_v1_args_doc}
/// The set of arguments for RegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_region_commitment_compute_v1_args_doc}
class RegionCommitmentComputeV1Args {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final pulumi.Input<bool>? autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final pulumi.Input<RegionCommitmentCategoryComputeV1>? category;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The license specification required as part of a license commitment.
  final pulumi.Input<LicenseResourceCommitmentComputeV1>? licenseResource;
  /// List of source commitments to be merged into a new commitment.
  final pulumi.Input<List<String>>? mergeSourceCommitments;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final pulumi.Input<RegionCommitmentPlanComputeV1>? plan;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// List of create-on-create reseravtions for this commitment.
  final pulumi.Input<List<ReservationComputeV1Resource>>? reservations;
  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final pulumi.Input<List<ResourceCommitmentComputeV1>>? resources;
  /// Source commitment to be split into a new commitment.
  final pulumi.Input<String>? splitSourceCommitment;
  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final pulumi.Input<RegionCommitmentTypeComputeV1>? type;

  /// Creates a new [RegionCommitmentComputeV1Args].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [licenseResource] The license specification required as part of a license commitment.
  /// [mergeSourceCommitments] List of source commitments to be merged into a new commitment.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [plan] The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [reservations] List of create-on-create reseravtions for this commitment.
  /// [resources] A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  /// [splitSourceCommitment] Source commitment to be split into a new commitment.
  /// [type] The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  RegionCommitmentComputeV1Args({
    this.autoRenew,
    this.category,
    this.description,
    this.licenseResource,
    this.mergeSourceCommitments,
    this.name,
    this.plan,
    this.project,
    required this.region,
    this.requestId,
    this.reservations,
    this.resources,
    this.splitSourceCommitment,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'category': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentCategoryComputeV1, String>(category, (value) => value.wireValue),
      'description': ?description,
      'licenseResource': ?pulumi.Input.mapOptionalInputValue<LicenseResourceCommitmentComputeV1, Map<String, dynamic>>(licenseResource, (value) => value.toMap()),
      'mergeSourceCommitments': ?mergeSourceCommitments,
      'name': ?name,
      'plan': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentPlanComputeV1, String>(plan, (value) => value.wireValue),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'reservations': ?reservations,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ResourceCommitmentComputeV1>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceCommitmentComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'splitSourceCommitment': ?splitSourceCommitment,
      'type': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentTypeComputeV1, String>(type, (value) => value.wireValue),
    };
  }

  factory RegionCommitmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentComputeV1Args(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionCommitmentCategoryComputeV1.fromValue(guardedValue as String)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseResource: (() { final guardedValue = map['licenseResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseResourceCommitmentComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mergeSourceCommitments: (() { final guardedValue = map['mergeSourceCommitments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionCommitmentPlanComputeV1.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservations: (() { final guardedValue = map['reservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<ReservationComputeV1Resource>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceCommitmentComputeV1>(guardedValue, (value) => ResourceCommitmentComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      splitSourceCommitment: (() { final guardedValue = map['splitSourceCommitment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionCommitmentTypeComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}

