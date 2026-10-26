import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_resource_pool_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_dedicated_resources_response.dart';

/// Create a DeploymentResourcePool.
class DeploymentResourcePoolAiplatformV1beta1 extends pulumi.CustomResource {
  /// Timestamp when this DeploymentResourcePool was created.
  late final pulumi.Output<String> createTime;
  /// The underlying DedicatedResources that the DeploymentResourcePool uses.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse> dedicatedResources;
  late final pulumi.Output<String> location;
  /// Immutable. The resource name of the DeploymentResourcePool. Format: `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [DeploymentResourcePoolAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentResourcePoolAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_deployment_resource_pool_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentResourcePoolAiplatformV1beta1(
    String name, {
    DeploymentResourcePoolAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:DeploymentResourcePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    dedicatedResources = registerOutput<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse>('dedicatedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1DedicatedResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [DeploymentResourcePoolAiplatformV1beta1] resource.
  DeploymentResourcePoolAiplatformV1beta1.reference(String urn)
    : super(
        'google-native:aiplatform/v1beta1:DeploymentResourcePool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dedicatedResources = registerOutput<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse>('dedicatedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1DedicatedResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
