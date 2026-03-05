import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_deployment_args.dart';
import 'posture_deployment_state.dart';

/// Represents a deployment of a security posture on a resource. A posture contains user curated policy sets. A posture can
/// be deployed on a project or on a folder or on an organization. To deploy a posture we need to populate the posture's name
/// and its revision_id in the posture deployment configuration. Every update to a deployed posture generates a new revision_id.
/// Thus, the updated revision_id should be used in the respective posture deployment's configuration to deploy that posture
/// on a resource.
///
///
/// To get more information about PostureDeployment, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/securityposture/rest/v1/organizations.locations.postureDeployments)
/// * How-to Guides
/// * [Create and deploy a posture](https://cloud.google.com/security-command-center/docs/how-to-use-security-posture)
///
/// ## Import
///
/// PostureDeployment can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/postureDeployments/{{posture_deployment_id}}`
///
/// When using the `pulumi import` command, PostureDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securityposture/postureDeployment:PostureDeployment default {{parent}}/locations/{{location}}/postureDeployments/{{posture_deployment_id}}
/// ```
class PostureDeployment extends pulumi.CustomResource {
  /// Time the posture deployment was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Description of the posture deployment.
  late final pulumi.Output<String?> description;
  /// This is an output only optional field which will be filled in case when
  /// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or DELETE_FAILED.
  /// It denotes the desired posture to be deployed.
  late final pulumi.Output<String> desiredPostureId;
  /// This is an output only optional field which will be filled in case when
  /// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or DELETE_FAILED.
  /// It denotes the desired posture revision_id to be deployed.
  late final pulumi.Output<String> desiredPostureRevisionId;
  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;
  /// This is a output only optional field which will be filled in case where
  /// PostureDeployment enters a failure state like UPDATE_FAILED or
  /// CREATE_FAILED or DELETE_FAILED. It will have the failure message for posture deployment's
  /// CREATE/UPDATE/DELETE methods.
  late final pulumi.Output<String> failureMessage;
  /// The location of the resource, eg. global`.
  late final pulumi.Output<String> location;
  /// Name of the posture deployment instance.
  late final pulumi.Output<String> name;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  late final pulumi.Output<String> parent;
  /// ID of the posture deployment.
  late final pulumi.Output<String> postureDeploymentId;
  /// Relative name of the posture which needs to be deployed. It should be in the format:
  /// organizations/{organization_id}/locations/{location}/postures/{posture_id}
  late final pulumi.Output<String> postureId;
  /// Revision_id the posture which needs to be deployed.
  late final pulumi.Output<String> postureRevisionId;
  /// If set, there are currently changes in flight to the posture deployment.
  late final pulumi.Output<bool> reconciling;
  /// State of the posture deployment. A posture deployment can be in the following terminal states:
  /// ACTIVE, CREATE_FAILED, UPDATE_FAILED, DELETE_FAILED.
  late final pulumi.Output<String> state;
  /// The resource on which the posture should be deployed. This can be in one of the following formats:
  /// projects/{project_number},
  /// folders/{folder_number},
  /// organizations/{organization_id}
  late final pulumi.Output<String> targetResource;
  /// Time the posture deployment was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PostureDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PostureDeployment]. {@macro pulumi_securityposture_posture_deployment_posture_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PostureDeployment(
    String name, {
    PostureDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securityposture/postureDeployment:PostureDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    desiredPostureId = registerOutput<String>('desiredPostureId');
    desiredPostureRevisionId = registerOutput<String>('desiredPostureRevisionId');
    etag = registerOutput<String>('etag');
    failureMessage = registerOutput<String>('failureMessage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    postureDeploymentId = registerOutput<String>('postureDeploymentId');
    postureId = registerOutput<String>('postureId');
    postureRevisionId = registerOutput<String>('postureRevisionId');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    targetResource = registerOutput<String>('targetResource');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [PostureDeployment] resource's state with the given [name] and [id].
  static PostureDeployment get(
    String name,
    pulumi.Input<String> id, {
    PostureDeploymentState? state,
  }) {
    return PostureDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PostureDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securityposture/postureDeployment:PostureDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    desiredPostureId = registerOutput<String>('desiredPostureId');
    desiredPostureRevisionId = registerOutput<String>('desiredPostureRevisionId');
    etag = registerOutput<String>('etag');
    failureMessage = registerOutput<String>('failureMessage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    postureDeploymentId = registerOutput<String>('postureDeploymentId');
    postureId = registerOutput<String>('postureId');
    postureRevisionId = registerOutput<String>('postureRevisionId');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    targetResource = registerOutput<String>('targetResource');
    updateTime = registerOutput<String>('updateTime');
  }
}
