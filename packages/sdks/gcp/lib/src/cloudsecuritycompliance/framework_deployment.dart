import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_args.dart';
import 'framework_deployment_framework.dart';
import 'framework_deployment_state.dart';
import 'framework_deployment_target_resource_config.dart';

/// Framework deployments represent the assignment of a framework to a target resource. Supported target resources are organizations, folders, and projects.
///
///
/// To get more information about FrameworkDeployment, see:
///
/// * [API documentation](https://docs.cloud.google.com/security-command-center/docs/reference/cloudsecuritycompliance/rest/v1/organizations.locations.frameworkDeployments)
///
/// ## Example Usage
///
/// ## Import
///
/// FrameworkDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}`
///
/// * `{{organization}}/{{location}}/{{framework_deployment_id}}`
///
/// When using the `pulumi import` command, FrameworkDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment default organizations/{{organization}}/locations/{{location}}/frameworkDeployments/{{framework_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment default {{organization}}/{{location}}/{{framework_deployment_id}}
/// ```
class FrameworkDeployment extends pulumi.CustomResource {
  /// The references to the cloud control deployments. It has all the
  /// CloudControlDeployments which are either directly added in the framework or
  /// through a CloudControlGroup.
  /// Example: If a framework deployment deploys two
  /// cloud controls, cc-deployment-1 and cc-deployment-2, then the
  /// cloud_control_deployment_references will be:
  /// {
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-1"
  /// },
  /// cloud_control_deployment_reference: {
  /// cloud_control_deployment:
  /// "organizations/{organization}/locations/{location}/cloudControlDeployments/cc-deployment-2"
  /// }
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>>
  cloudControlDeploymentReferences;

  /// Deployment mode and parameters for each of the Cloud Controls in
  /// the framework. Every Cloud Control in the framework must have a
  /// CloudControlMetadata.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> cloudControlMetadatas;

  /// The resource on which the Framework is deployed based on the provided
  /// TargetResourceConfig in the following format:
  /// organizations/{organization}, folders/{folder} or projects/{project}
  late final pulumi.Output<String> computedTargetResource;

  /// The time at which the resource was created.
  late final pulumi.Output<String> createTime;

  /// The deployment state of the framework.
  /// Possible values:
  /// DEPLOYMENT_STATE_VALIDATING
  /// DEPLOYMENT_STATE_CREATING
  /// DEPLOYMENT_STATE_DELETING
  /// DEPLOYMENT_STATE_FAILED
  /// DEPLOYMENT_STATE_READY
  /// DEPLOYMENT_STATE_PARTIALLY_DEPLOYED
  /// DEPLOYMENT_STATE_PARTIALLY_DELETED
  late final pulumi.Output<String> deploymentState;

  /// User provided description of the Framework deployment
  late final pulumi.Output<String?> description;

  /// To prevent concurrent updates from overwriting each other, always provide
  /// the `etag` when you update a FrameworkDeployment. You can also
  /// provide the `etag` when you delete a FrameworkDeployment, to help
  /// ensure that you're deleting the intended version of the
  /// FrameworkDeployment.
  late final pulumi.Output<String> etag;

  /// FrameworkReference contains the reference of a framework.
  /// Structure is documented below.
  late final pulumi.Output<FrameworkDeploymentFramework> framework;

  /// User provided identifier. It should be unique in scope of a parent.
  /// This is optional and if not provided, a random UUID will be generated.
  late final pulumi.Output<String> frameworkDeploymentId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. FrameworkDeployment name in the following format:
  /// organizations/{organization}/locations/{location}/frameworkDeployments/{framework_deployment_id}
  late final pulumi.Output<String> name;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> organization;

  /// TargetResourceConfig contains either the name of the target_resource or
  /// contains the config to create a new target_resource.
  /// Structure is documented below.
  late final pulumi.Output<FrameworkDeploymentTargetResourceConfig>
  targetResourceConfig;

  /// The display name of the target resource.
  late final pulumi.Output<String> targetResourceDisplayName;

  /// The time at which the resource last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FrameworkDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrameworkDeployment]. {@macro pulumi_cloudsecuritycompliance_framework_deployment_framework_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrameworkDeployment(
    String name, {
    FrameworkDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudControlDeploymentReferences =
        registerOutput<List<Map<String, dynamic>>>(
          'cloudControlDeploymentReferences',
        );
    cloudControlMetadatas = registerOutput<List<Map<String, dynamic>>>(
      'cloudControlMetadatas',
    );
    computedTargetResource = registerOutput<String>('computedTargetResource');
    createTime = registerOutput<String>('createTime');
    deploymentState = registerOutput<String>('deploymentState');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    framework = registerOutput<FrameworkDeploymentFramework>('framework');
    frameworkDeploymentId = registerOutput<String>('frameworkDeploymentId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    targetResourceConfig =
        registerOutput<FrameworkDeploymentTargetResourceConfig>(
          'targetResourceConfig',
        );
    targetResourceDisplayName = registerOutput<String>(
      'targetResourceDisplayName',
    );
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FrameworkDeployment] resource's state with the given [name] and [id].
  static FrameworkDeployment get(
    String name,
    pulumi.Input<String> id, {
    FrameworkDeploymentState? state,
  }) {
    return FrameworkDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrameworkDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:cloudsecuritycompliance/frameworkDeployment:FrameworkDeployment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudControlDeploymentReferences =
        registerOutput<List<Map<String, dynamic>>>(
          'cloudControlDeploymentReferences',
        );
    cloudControlMetadatas = registerOutput<List<Map<String, dynamic>>>(
      'cloudControlMetadatas',
    );
    computedTargetResource = registerOutput<String>('computedTargetResource');
    createTime = registerOutput<String>('createTime');
    deploymentState = registerOutput<String>('deploymentState');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    framework = registerOutput<FrameworkDeploymentFramework>('framework');
    frameworkDeploymentId = registerOutput<String>('frameworkDeploymentId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    targetResourceConfig =
        registerOutput<FrameworkDeploymentTargetResourceConfig>(
          'targetResourceConfig',
        );
    targetResourceDisplayName = registerOutput<String>(
      'targetResourceDisplayName',
    );
    updateTime = registerOutput<String>('updateTime');
  }
}
