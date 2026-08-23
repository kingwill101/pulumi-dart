// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_deployed_index_automatic_resources.dart';
import 'ai_index_endpoint_deployed_index_dedicated_resources.dart';
import 'ai_index_endpoint_deployed_index_deployed_index_auth_config.dart';

/// {@template pulumi_vertex_ai_index_endpoint_deployed_index_ai_index_endpoint_deployed_index_args_doc}
/// The set of arguments for AiIndexEndpointDeployedIndex.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_index_endpoint_deployed_index_ai_index_endpoint_deployed_index_args_doc}
class AiIndexEndpointDeployedIndexArgs {
  /// A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointDeployedIndexAutomaticResources>? automaticResources;
  /// A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field minReplicaCount must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when minReplicaCount=1. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// Available machine types for SMALL shard: e2-standard-2 and all machine types available for MEDIUM and LARGE shard.
  /// Available machine types for MEDIUM shard: e2-standard-16 and all machine types available for LARGE shard.
  /// Available machine types for LARGE shard: e2-highmem-16, n2d-standard-32.
  /// n1-standard-16 and n1-standard-32 are still available, but we recommend e2-standard-16 and e2-highmem-16 for cost efficiency.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointDeployedIndexDedicatedResources>? dedicatedResources;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// If set, the authentication is enabled for the private endpoint.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig>? deployedIndexAuthConfig;
  /// The user specified ID of the DeployedIndex. The ID can be up to 128 characters long and must start with a letter and only contain letters, numbers, and underscores. The ID must be unique within the project it is created in.
  final pulumi.Input<String> deployedIndexId;
  /// The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group.
  /// Creating deploymentGroups with reservedIpRanges is a recommended practice when the peered network has multiple peering ranges. This creates your deployments from predictable IP spaces for easier traffic administration. Also, one deploymentGroup (except 'default') can only be used with the same reservedIpRanges which means if the deploymentGroup has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or [d, e] is disallowed. [See the official documentation here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex.FIELDS.deployment_group).
  /// Note: we only support up to 5 deployment groups (not including 'default').
  final pulumi.Input<String>? deploymentGroup;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;
  /// If true, private endpoint's access logs are sent to Cloud Logging.
  final pulumi.Input<bool>? enableAccessLogging;
  /// The name of the Index this is the deployment of.
  final pulumi.Input<String> index;
  /// Identifies the index endpoint. Must be in the format
  /// 'projects/{{project}}/locations/{{region}}/indexEndpoints/{{indexEndpoint}}'
  final pulumi.Input<String> indexEndpoint;
  /// The region of the index endpoint deployment. eg us-central1
  final pulumi.Input<String>? region;
  /// A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex.
  /// If set, we will deploy the index within the provided ip ranges. Otherwise, the index might be deployed to any ip ranges under the provided VPC network.
  /// The value should be the name of the address (https://cloud.google.com/compute/docs/reference/rest/v1/addresses) Example: ['vertex-ai-ip-range'].
  /// For more information about subnets and network IP ranges, please see https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
  final pulumi.Input<List<String>>? reservedIpRanges;

  /// Creates a new [AiIndexEndpointDeployedIndexArgs].
  /// [automaticResources] A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration.
  /// [dedicatedResources] A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field minReplicaCount must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when minReplicaCount=1. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deployedIndexAuthConfig] If set, the authentication is enabled for the private endpoint.
  /// [deployedIndexId] The user specified ID of the DeployedIndex. The ID can be up to 128 characters long and must start with a letter and only contain letters, numbers, and underscores. The ID must be unique within the project it is created in.
  /// [deploymentGroup] The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enableAccessLogging] If true, private endpoint's access logs are sent to Cloud Logging.
  /// [index] The name of the Index this is the deployment of.
  /// [indexEndpoint] Identifies the index endpoint. Must be in the format
  /// [region] The region of the index endpoint deployment. eg us-central1
  /// [reservedIpRanges] A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex.
  const AiIndexEndpointDeployedIndexArgs({
    this.automaticResources,
    this.dedicatedResources,
    this.deletionPolicy,
    this.deployedIndexAuthConfig,
    required this.deployedIndexId,
    this.deploymentGroup,
    this.displayName,
    this.enableAccessLogging,
    required this.index,
    required this.indexEndpoint,
    this.region,
    this.reservedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResources': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointDeployedIndexAutomaticResources, Map<String, dynamic>>(automaticResources, (value) => value.toMap()),
      'dedicatedResources': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointDeployedIndexDedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'deployedIndexAuthConfig': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig, Map<String, dynamic>>(deployedIndexAuthConfig, (value) => value.toMap()),
      'deployedIndexId': deployedIndexId,
      'deploymentGroup': ?deploymentGroup,
      'displayName': ?displayName,
      'enableAccessLogging': ?enableAccessLogging,
      'index': index,
      'indexEndpoint': indexEndpoint,
      'region': ?region,
      'reservedIpRanges': ?reservedIpRanges,
    };
  }

  factory AiIndexEndpointDeployedIndexArgs.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexArgs(
      automaticResources: (() { final guardedValue = map['automaticResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiIndexEndpointDeployedIndexAutomaticResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dedicatedResources: (() { final guardedValue = map['dedicatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiIndexEndpointDeployedIndexDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployedIndexAuthConfig: (() { final guardedValue = map['deployedIndexAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiIndexEndpointDeployedIndexDeployedIndexAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deployedIndexId: pulumi.Input.fromValue(map['deployedIndexId'] as String),
      deploymentGroup: (() { final guardedValue = map['deploymentGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAccessLogging: (() { final guardedValue = map['enableAccessLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      index: pulumi.Input.fromValue(map['index'] as String),
      indexEndpoint: pulumi.Input.fromValue(map['indexEndpoint'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
