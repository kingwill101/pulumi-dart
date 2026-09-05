import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_args.dart';
import 'workload_attributes.dart';
import 'workload_state.dart';
import 'workload_workload_property.dart';
import 'workload_workload_reference.dart';

/// Workload represents a binary deployment (such as Managed Instance Groups (MIGs), GKE deployments, etc.) that performs the smallest logical subset of business functionality. It registers identified workload to the Application.
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// Workload can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/applications/{{application_id}}/workloads/{{workload_id}}`
/// * `{{project}}/{{location}}/{{application_id}}/{{workload_id}}`
/// * `{{location}}/{{application_id}}/{{workload_id}}`
///
///
/// When using the `pulumi import` command, Workload can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/workload:Workload default projects/{{project}}/locations/{{location}}/applications/{{application_id}}/workloads/{{workload_id}}
/// $ pulumi import gcp:apphub/workload:Workload default {{project}}/{{location}}/{{application_id}}/{{workload_id}}
/// $ pulumi import gcp:apphub/workload:Workload default {{location}}/{{application_id}}/{{workload_id}}
/// ```
class Workload extends pulumi.CustomResource {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final pulumi.Output<String> applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadAttributes?> attributes;
  /// Output only. Create time.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-defined description of a Workload.
  late final pulumi.Output<String?> description;
  /// Immutable. The resource name of the original discovered workload.
  late final pulumi.Output<String> discoveredWorkload;
  /// User-defined name for the Workload.
  late final pulumi.Output<String?> displayName;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the Workload. Format:"projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}"
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. Workload state. Possible values:  STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  late final pulumi.Output<String> state;
  /// Output only. A universally unique identifier (UUID) for the `Workload` in the UUID4 format.
  late final pulumi.Output<String> uid;
  /// Output only. Update time.
  late final pulumi.Output<String> updateTime;
  /// The Workload identifier.
  late final pulumi.Output<String> workloadId;
  /// Properties of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkloadWorkloadProperty>> workloadProperties;
  /// Reference of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkloadWorkloadReference>> workloadReferences;

  /// Creates a new [Workload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workload]. {@macro pulumi_apphub_workload_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workload(
    String name, {
    WorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/workload:Workload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<WorkloadAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveredWorkload = registerOutput<String>('discoveredWorkload');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadId = registerOutput<String>('workloadId');
    workloadProperties = registerOutput<List<WorkloadWorkloadProperty>>('workloadProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadWorkloadProperty>(guardedValue, (value) => WorkloadWorkloadProperty.fromMap((value as Map).cast<String, dynamic>())); });
    workloadReferences = registerOutput<List<WorkloadWorkloadReference>>('workloadReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadWorkloadReference>(guardedValue, (value) => WorkloadWorkloadReference.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Workload] resource's state with the given [name] and [id].
  static Workload get(
    String name,
    pulumi.Input<String> id, {
    WorkloadState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/workload:Workload',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<WorkloadAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveredWorkload = registerOutput<String>('discoveredWorkload');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadId = registerOutput<String>('workloadId');
    workloadProperties = registerOutput<List<WorkloadWorkloadProperty>>('workloadProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadWorkloadProperty>(guardedValue, (value) => WorkloadWorkloadProperty.fromMap((value as Map).cast<String, dynamic>())); });
    workloadReferences = registerOutput<List<WorkloadWorkloadReference>>('workloadReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadWorkloadReference>(guardedValue, (value) => WorkloadWorkloadReference.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Workload] resource.
  Workload.reference(String urn)
    : super(
        'gcp:apphub/workload:Workload',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<WorkloadAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    discoveredWorkload = registerOutput<String>('discoveredWorkload');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadId = registerOutput<String>('workloadId');
    workloadProperties = registerOutput<List<WorkloadWorkloadProperty>>('workloadProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadWorkloadProperty>(guardedValue, (value) => WorkloadWorkloadProperty.fromMap((value as Map).cast<String, dynamic>())); });
    workloadReferences = registerOutput<List<WorkloadWorkloadReference>>('workloadReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadWorkloadReference>(guardedValue, (value) => WorkloadWorkloadReference.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
