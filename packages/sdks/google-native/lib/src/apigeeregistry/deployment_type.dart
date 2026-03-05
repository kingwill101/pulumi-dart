import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';

/// Creates a specified deployment.
class DeploymentType extends pulumi.CustomResource {
  /// Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  late final pulumi.Output<String> accessGuidance;
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final pulumi.Output<Map<String, String>> annotations;
  /// Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final pulumi.Output<String> apiDeploymentId;
  late final pulumi.Output<String> apiId;
  /// The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  late final pulumi.Output<String> apiSpecRevision;
  /// Creation timestamp; when the deployment resource was created.
  late final pulumi.Output<String> createTime;
  /// A detailed description.
  late final pulumi.Output<String> description;
  /// Human-meaningful name.
  late final pulumi.Output<String> displayName;
  /// The address where the deployment is serving. Changes to this value will update the revision.
  late final pulumi.Output<String> endpointUri;
  /// The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  late final pulumi.Output<String> externalChannelUri;
  /// Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  late final pulumi.Output<String> intendedAudience;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Revision creation timestamp; when the represented revision was created.
  late final pulumi.Output<String> revisionCreateTime;
  /// Immutable. The revision ID of the deployment. A new revision is committed whenever the deployment contents are changed. The format is an 8-character hexadecimal string.
  late final pulumi.Output<String> revisionId;
  /// Last update timestamp: when the represented revision was last modified.
  late final pulumi.Output<String> revisionUpdateTime;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_apigeeregistry_v1_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGuidance = registerOutput<String>('accessGuidance');
    annotations = registerOutput<Map<String, String>>('annotations');
    apiDeploymentId = registerOutput<String>('apiDeploymentId');
    apiId = registerOutput<String>('apiId');
    apiSpecRevision = registerOutput<String>('apiSpecRevision');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    endpointUri = registerOutput<String>('endpointUri');
    externalChannelUri = registerOutput<String>('externalChannelUri');
    intendedAudience = registerOutput<String>('intendedAudience');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    revisionCreateTime = registerOutput<String>('revisionCreateTime');
    revisionId = registerOutput<String>('revisionId');
    revisionUpdateTime = registerOutput<String>('revisionUpdateTime');
  }
}
