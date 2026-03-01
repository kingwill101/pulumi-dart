// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_deployed_index_automatic_resources.dart';
import 'ai_index_endpoint_deployed_index_dedicated_resources.dart';
import 'ai_index_endpoint_deployed_index_deployed_index_auth_config.dart';
import 'ai_index_endpoint_deployed_index_private_endpoint.dart';

/// Input properties used for looking up and filtering AiIndexEndpointDeployedIndex resources.
class AiIndexEndpointDeployedIndexState {
  /// A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointDeployedIndexAutomaticResources>? automaticResources;
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field minReplicaCount must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when minReplicaCount=1. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// Available machine types for SMALL shard: e2-standard-2 and all machine types available for MEDIUM and LARGE shard.
  /// Available machine types for MEDIUM shard: e2-standard-16 and all machine types available for LARGE shard.
  /// Available machine types for LARGE shard: e2-highmem-16, n2d-standard-32.
  /// n1-standard-16 and n1-standard-32 are still available, but we recommend e2-standard-16 and e2-highmem-16 for cost efficiency.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointDeployedIndexDedicatedResources>? dedicatedResources;
  /// If set, the authentication is enabled for the private endpoint.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig>? deployedIndexAuthConfig;
  /// The user specified ID of the DeployedIndex. The ID can be up to 128 characters long and must start with a letter and only contain letters, numbers, and underscores. The ID must be unique within the project it is created in.
  final pulumi.Input<String>? deployedIndexId;
  /// The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group.
  /// Creating deployment_groups with reserved_ip_ranges is a recommended practice when the peered network has multiple peering ranges. This creates your deployments from predictable IP spaces for easier traffic administration. Also, one deployment_group (except 'default') can only be used with the same reserved_ip_ranges which means if the deployment_group has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or [d, e] is disallowed. [See the official documentation here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex.FIELDS.deployment_group).
  /// Note: we only support up to 5 deployment groups (not including 'default').
  final pulumi.Input<String>? deploymentGroup;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;
  /// If true, private endpoint's access logs are sent to Cloud Logging.
  final pulumi.Input<bool>? enableAccessLogging;
  /// The name of the Index this is the deployment of.
  final pulumi.Input<String>? index;
  /// Identifies the index endpoint. Must be in the format
  /// 'projects/{{project}}/locations/{{region}}/indexEndpoints/{{indexEndpoint}}'
  final pulumi.Input<String>? indexEndpoint;
  /// The DeployedIndex may depend on various data on its original Index. Additionally when certain changes to the original Index are being done (e.g. when what the Index contains is being changed) the DeployedIndex may be asynchronously updated in the background to reflect these changes. If this timestamp's value is at least the [Index.update_time](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexes#Index.FIELDS.update_time) of the original Index, it means that this DeployedIndex and the original Index are in sync. If this timestamp is older, then to see which updates this DeployedIndex already contains (and which it does not), one must [list](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.operations/list#google.longrunning.Operations.ListOperations) the operations that are running on the original Index. Only the successfully completed Operations with updateTime equal or before this sync time are contained in this DeployedIndex.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? indexSyncTime;
  /// The name of the DeployedIndex resource.
  final pulumi.Input<String>? name;
  /// Provides paths for users to send requests directly to the deployed index services running on Cloud via private services access. This field is populated if [network](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#IndexEndpoint.FIELDS.network) is configured.
  /// Structure is documented below.
  final pulumi.Input<List<AiIndexEndpointDeployedIndexPrivateEndpoint>>? privateEndpoints;
  /// The region of the index endpoint deployment. eg us-central1
  final pulumi.Input<String>? region;
  /// A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex.
  /// If set, we will deploy the index within the provided ip ranges. Otherwise, the index might be deployed to any ip ranges under the provided VPC network.
  /// The value should be the name of the address (https://cloud.google.com/compute/docs/reference/rest/v1/addresses) Example: ['vertex-ai-ip-range'].
  /// For more information about subnets and network IP ranges, please see https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
  final pulumi.Input<List<String>>? reservedIpRanges;

  /// Creates a new [AiIndexEndpointDeployedIndexState].
  /// [automaticResources] A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration.
  /// [createTime] The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [dedicatedResources] A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field minReplicaCount must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when minReplicaCount=1. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// [deployedIndexAuthConfig] If set, the authentication is enabled for the private endpoint.
  /// [deployedIndexId] The user specified ID of the DeployedIndex. The ID can be up to 128 characters long and must start with a letter and only contain letters, numbers, and underscores. The ID must be unique within the project it is created in.
  /// [deploymentGroup] The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enableAccessLogging] If true, private endpoint's access logs are sent to Cloud Logging.
  /// [index] The name of the Index this is the deployment of.
  /// [indexEndpoint] Identifies the index endpoint. Must be in the format
  /// [indexSyncTime] The DeployedIndex may depend on various data on its original Index. Additionally when certain changes to the original Index are being done (e.g. when what the Index contains is being changed) the DeployedIndex may be asynchronously updated in the background to reflect these changes. If this timestamp's value is at least the [Index.update_time](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexes#Index.FIELDS.update_time) of the original Index, it means that this DeployedIndex and the original Index are in sync. If this timestamp is older, then to see which updates this DeployedIndex already contains (and which it does not), one must [list](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.operations/list#google.longrunning.Operations.ListOperations) the operations that are running on the original Index. Only the successfully completed Operations with updateTime equal or before this sync time are contained in this DeployedIndex.
  /// [name] The name of the DeployedIndex resource.
  /// [privateEndpoints] Provides paths for users to send requests directly to the deployed index services running on Cloud via private services access. This field is populated if [network](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#IndexEndpoint.FIELDS.network) is configured.
  /// [region] The region of the index endpoint deployment. eg us-central1
  /// [reservedIpRanges] A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex.
  AiIndexEndpointDeployedIndexState({
    pulumi.Output<AiIndexEndpointDeployedIndexAutomaticResources>? automaticResources,
    pulumi.Output<String>? createTime,
    pulumi.Output<AiIndexEndpointDeployedIndexDedicatedResources>? dedicatedResources,
    pulumi.Output<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig>? deployedIndexAuthConfig,
    pulumi.Output<String>? deployedIndexId,
    pulumi.Output<String>? deploymentGroup,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enableAccessLogging,
    pulumi.Output<String>? index,
    pulumi.Output<String>? indexEndpoint,
    pulumi.Output<String>? indexSyncTime,
    pulumi.Output<String>? name,
    pulumi.Output<List<AiIndexEndpointDeployedIndexPrivateEndpoint>>? privateEndpoints,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? reservedIpRanges,
  }) :
      automaticResources = pulumi.Input.asOptionalInput<AiIndexEndpointDeployedIndexAutomaticResources>(automaticResources),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dedicatedResources = pulumi.Input.asOptionalInput<AiIndexEndpointDeployedIndexDedicatedResources>(dedicatedResources),
      deployedIndexAuthConfig = pulumi.Input.asOptionalInput<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig>(deployedIndexAuthConfig),
      deployedIndexId = pulumi.Input.asOptionalInput<String>(deployedIndexId),
      deploymentGroup = pulumi.Input.asOptionalInput<String>(deploymentGroup),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableAccessLogging = pulumi.Input.asOptionalInput<bool>(enableAccessLogging),
      index = pulumi.Input.asOptionalInput<String>(index),
      indexEndpoint = pulumi.Input.asOptionalInput<String>(indexEndpoint),
      indexSyncTime = pulumi.Input.asOptionalInput<String>(indexSyncTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateEndpoints = pulumi.Input.asOptionalInput<List<AiIndexEndpointDeployedIndexPrivateEndpoint>>(privateEndpoints),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedIpRanges = pulumi.Input.asOptionalInput<List<String>>(reservedIpRanges);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResources': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointDeployedIndexAutomaticResources, Map<String, dynamic>>(automaticResources, (value) => value.toMap()),
      'createTime': ?createTime,
      'dedicatedResources': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointDeployedIndexDedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'deployedIndexAuthConfig': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig, Map<String, dynamic>>(deployedIndexAuthConfig, (value) => value.toMap()),
      'deployedIndexId': ?deployedIndexId,
      'deploymentGroup': ?deploymentGroup,
      'displayName': ?displayName,
      'enableAccessLogging': ?enableAccessLogging,
      'index': ?index,
      'indexEndpoint': ?indexEndpoint,
      'indexSyncTime': ?indexSyncTime,
      'name': ?name,
      'privateEndpoints': ?pulumi.Input.mapOptionalInputValue<List<AiIndexEndpointDeployedIndexPrivateEndpoint>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<AiIndexEndpointDeployedIndexPrivateEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'reservedIpRanges': ?reservedIpRanges,
    };
  }

  factory AiIndexEndpointDeployedIndexState.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexState(
      automaticResources: map['automaticResources'] == null ? null : pulumi.Output.create<AiIndexEndpointDeployedIndexAutomaticResources>(AiIndexEndpointDeployedIndexAutomaticResources.fromMap((map['automaticResources'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dedicatedResources: map['dedicatedResources'] == null ? null : pulumi.Output.create<AiIndexEndpointDeployedIndexDedicatedResources>(AiIndexEndpointDeployedIndexDedicatedResources.fromMap((map['dedicatedResources'] as Map).cast<String, dynamic>())),
      deployedIndexAuthConfig: map['deployedIndexAuthConfig'] == null ? null : pulumi.Output.create<AiIndexEndpointDeployedIndexDeployedIndexAuthConfig>(AiIndexEndpointDeployedIndexDeployedIndexAuthConfig.fromMap((map['deployedIndexAuthConfig'] as Map).cast<String, dynamic>())),
      deployedIndexId: map['deployedIndexId'] == null ? null : pulumi.Output.create<String>(map['deployedIndexId'] as String),
      deploymentGroup: map['deploymentGroup'] == null ? null : pulumi.Output.create<String>(map['deploymentGroup'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enableAccessLogging: map['enableAccessLogging'] == null ? null : pulumi.Output.create<bool>(map['enableAccessLogging'] as bool),
      index: map['index'] == null ? null : pulumi.Output.create<String>(map['index'] as String),
      indexEndpoint: map['indexEndpoint'] == null ? null : pulumi.Output.create<String>(map['indexEndpoint'] as String),
      indexSyncTime: map['indexSyncTime'] == null ? null : pulumi.Output.create<String>(map['indexSyncTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateEndpoints: map['privateEndpoints'] == null ? null : pulumi.Output.create<List<AiIndexEndpointDeployedIndexPrivateEndpoint>>(pulumi.Input.decodeList<AiIndexEndpointDeployedIndexPrivateEndpoint>(map['privateEndpoints'], (value) => AiIndexEndpointDeployedIndexPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservedIpRanges: map['reservedIpRanges'] == null ? null : pulumi.Output.create<List<String>>((map['reservedIpRanges'] as List).cast<String>()),
    );
  }
}

