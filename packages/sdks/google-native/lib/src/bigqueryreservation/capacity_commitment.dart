import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_commitment_args.dart';
import 'status_response.dart';

/// Creates a new capacity commitment resource.
/// Auto-naming is currently not supported for this resource.
class CapacityCommitment extends pulumi.CustomResource {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  late final pulumi.Output<String?> capacityCommitmentId;

  /// The end of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final pulumi.Output<String> commitmentEndTime;

  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final pulumi.Output<String> commitmentStartTime;

  /// Edition of the capacity commitment.
  late final pulumi.Output<String> edition;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  late final pulumi.Output<bool?> enforceSingleAdminProjectPerOrg;

  /// For FAILED commitment plan, provides the reason of failure.
  late final pulumi.Output<StatusResponse> failureStatus;

  /// If true, the commitment is a flat-rate commitment, otherwise, it's an edition commitment.
  late final pulumi.Output<bool> isFlatRate;
  late final pulumi.Output<String> location;

  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  late final pulumi.Output<bool> multiRegionAuxiliary;

  /// The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments/123` The commitment_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  late final pulumi.Output<String> name;

  /// Capacity commitment commitment plan.
  late final pulumi.Output<String> plan;
  late final pulumi.Output<String> project;

  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  late final pulumi.Output<String> renewalPlan;

  /// Number of slots in this commitment.
  late final pulumi.Output<String> slotCount;

  /// State of the commitment.
  late final pulumi.Output<String> state;

  /// Creates a new [CapacityCommitment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityCommitment]. {@macro pulumi_bigqueryreservation_v1_capacity_commitment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityCommitment(
    String name, {
    CapacityCommitmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:bigqueryreservation/v1:CapacityCommitment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    capacityCommitmentId = registerOutput<String?>('capacityCommitmentId');
    commitmentEndTime = registerOutput<String>('commitmentEndTime');
    commitmentStartTime = registerOutput<String>('commitmentStartTime');
    edition = registerOutput<String>('edition');
    enforceSingleAdminProjectPerOrg = registerOutput<bool?>(
      'enforceSingleAdminProjectPerOrg',
    );
    failureStatus = registerOutput<StatusResponse>('failureStatus');
    isFlatRate = registerOutput<bool>('isFlatRate');
    location = registerOutput<String>('location');
    multiRegionAuxiliary = registerOutput<bool>('multiRegionAuxiliary');
    this.name = registerOutput<String>('name');
    plan = registerOutput<String>('plan');
    project = registerOutput<String>('project');
    renewalPlan = registerOutput<String>('renewalPlan');
    slotCount = registerOutput<String>('slotCount');
    state = registerOutput<String>('state');
  }
}
