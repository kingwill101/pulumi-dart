// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_automatic_resources_response.dart';
import 'google_cloud_aiplatform_v1beta1_dedicated_resources_response.dart';
import 'google_cloud_aiplatform_v1beta1_deployed_index_auth_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_index_private_endpoints_response.dart';

/// A deployment of an Index. IndexEndpoints contain one or more DeployedIndexes.
class GoogleCloudAiplatformV1beta1DeployedIndexResponse {
  /// Optional. A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration. If min_replica_count is not set, the default value is 2 (we don't provide SLA when min_replica_count=1). If max_replica_count is not set, the default value is min_replica_count. The max allowed replica count is 1000.
  final pulumi.Input<GoogleCloudAiplatformV1beta1AutomaticResourcesResponse> automaticResources;
  /// Timestamp when the DeployedIndex was created.
  final pulumi.Input<String> createTime;
  /// Optional. A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field min_replica_count must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when min_replica_count=1. If max_replica_count is not set, the default value is min_replica_count. The max allowed replica count is 1000. Available machine types for SMALL shard: e2-standard-2 and all machine types available for MEDIUM and LARGE shard. Available machine types for MEDIUM shard: e2-standard-16 and all machine types available for LARGE shard. Available machine types for LARGE shard: e2-highmem-16, n2d-standard-32. n1-standard-16 and n1-standard-32 are still available, but we recommend e2-standard-16 and e2-highmem-16 for cost efficiency.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse> dedicatedResources;
  /// Optional. If set, the authentication is enabled for the private endpoint.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DeployedIndexAuthConfigResponse> deployedIndexAuthConfig;
  /// Optional. The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group. Creating `deployment_groups` with `reserved_ip_ranges` is a recommended practice when the peered network has multiple peering ranges. This creates your deployments from predictable IP spaces for easier traffic administration. Also, one deployment_group (except 'default') can only be used with the same reserved_ip_ranges which means if the deployment_group has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or [d, e] is disallowed. Note: we only support up to 5 deployment groups(not including 'default').
  final pulumi.Input<String> deploymentGroup;
  /// The display name of the DeployedIndex. If not provided upon creation, the Index's display_name is used.
  final pulumi.Input<String> displayName;
  /// Optional. If true, private endpoint's access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each MatchRequest. Note that logs may incur a cost, especially if the deployed index receives a high queries per second rate (QPS). Estimate your costs before enabling this option.
  final pulumi.Input<bool> enableAccessLogging;
  /// The name of the Index this is the deployment of. We may refer to this Index as the DeployedIndex's "original" Index.
  final pulumi.Input<String> index;
  /// The DeployedIndex may depend on various data on its original Index. Additionally when certain changes to the original Index are being done (e.g. when what the Index contains is being changed) the DeployedIndex may be asynchronously updated in the background to reflect these changes. If this timestamp's value is at least the Index.update_time of the original Index, it means that this DeployedIndex and the original Index are in sync. If this timestamp is older, then to see which updates this DeployedIndex already contains (and which it does not), one must list the operations that are running on the original Index. Only the successfully completed Operations with update_time equal or before this sync time are contained in this DeployedIndex.
  final pulumi.Input<String> indexSyncTime;
  /// Provides paths for users to send requests directly to the deployed index services running on Cloud via private services access. This field is populated if network is configured.
  final pulumi.Input<GoogleCloudAiplatformV1beta1IndexPrivateEndpointsResponse> privateEndpoints;
  /// Optional. A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex. If set, we will deploy the index within the provided ip ranges. Otherwise, the index might be deployed to any ip ranges under the provided VPC network. The value should be the name of the address (https://cloud.google.com/compute/docs/reference/rest/v1/addresses) Example: ['vertex-ai-ip-range']. For more information about subnets and network IP ranges, please see https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
  final pulumi.Input<List<String>> reservedIpRanges;

  /// Creates a new [GoogleCloudAiplatformV1beta1DeployedIndexResponse].
  /// [automaticResources] Optional. A description of resources that the DeployedIndex uses, which to large degree are decided by Vertex AI, and optionally allows only a modest additional configuration. If min_replica_count is not set, the default value is 2 (we don't provide SLA when min_replica_count=1). If max_replica_count is not set, the default value is min_replica_count. The max allowed replica count is 1000.
  /// [createTime] Timestamp when the DeployedIndex was created.
  /// [dedicatedResources] Optional. A description of resources that are dedicated to the DeployedIndex, and that need a higher degree of manual configuration. The field min_replica_count must be set to a value strictly greater than 0, or else validation will fail. We don't provide SLA when min_replica_count=1. If max_replica_count is not set, the default value is min_replica_count. The max allowed replica count is 1000. Available machine types for SMALL shard: e2-standard-2 and all machine types available for MEDIUM and LARGE shard. Available machine types for MEDIUM shard: e2-standard-16 and all machine types available for LARGE shard. Available machine types for LARGE shard: e2-highmem-16, n2d-standard-32. n1-standard-16 and n1-standard-32 are still available, but we recommend e2-standard-16 and e2-highmem-16 for cost efficiency.
  /// [deployedIndexAuthConfig] Optional. If set, the authentication is enabled for the private endpoint.
  /// [deploymentGroup] Optional. The deployment group can be no longer than 64 characters (eg: 'test', 'prod'). If not set, we will use the 'default' deployment group. Creating `deployment_groups` with `reserved_ip_ranges` is a recommended practice when the peered network has multiple peering ranges. This creates your deployments from predictable IP spaces for easier traffic administration. Also, one deployment_group (except 'default') can only be used with the same reserved_ip_ranges which means if the deployment_group has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or [d, e] is disallowed. Note: we only support up to 5 deployment groups(not including 'default').
  /// [displayName] The display name of the DeployedIndex. If not provided upon creation, the Index's display_name is used.
  /// [enableAccessLogging] Optional. If true, private endpoint's access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each MatchRequest. Note that logs may incur a cost, especially if the deployed index receives a high queries per second rate (QPS). Estimate your costs before enabling this option.
  /// [index] The name of the Index this is the deployment of. We may refer to this Index as the DeployedIndex's "original" Index.
  /// [indexSyncTime] The DeployedIndex may depend on various data on its original Index. Additionally when certain changes to the original Index are being done (e.g. when what the Index contains is being changed) the DeployedIndex may be asynchronously updated in the background to reflect these changes. If this timestamp's value is at least the Index.update_time of the original Index, it means that this DeployedIndex and the original Index are in sync. If this timestamp is older, then to see which updates this DeployedIndex already contains (and which it does not), one must list the operations that are running on the original Index. Only the successfully completed Operations with update_time equal or before this sync time are contained in this DeployedIndex.
  /// [privateEndpoints] Provides paths for users to send requests directly to the deployed index services running on Cloud via private services access. This field is populated if network is configured.
  /// [reservedIpRanges] Optional. A list of reserved ip ranges under the VPC network that can be used for this DeployedIndex. If set, we will deploy the index within the provided ip ranges. Otherwise, the index might be deployed to any ip ranges under the provided VPC network. The value should be the name of the address (https://cloud.google.com/compute/docs/reference/rest/v1/addresses) Example: ['vertex-ai-ip-range']. For more information about subnets and network IP ranges, please see https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
  GoogleCloudAiplatformV1beta1DeployedIndexResponse({
    required this.automaticResources,
    required this.createTime,
    required this.dedicatedResources,
    required this.deployedIndexAuthConfig,
    required this.deploymentGroup,
    required this.displayName,
    required this.enableAccessLogging,
    required this.index,
    required this.indexSyncTime,
    required this.privateEndpoints,
    required this.reservedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResources': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1AutomaticResourcesResponse, Map<String, dynamic>>(automaticResources, (value) => value.toMap()),
      'createTime': createTime,
      'dedicatedResources': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1DedicatedResourcesResponse, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'deployedIndexAuthConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1DeployedIndexAuthConfigResponse, Map<String, dynamic>>(deployedIndexAuthConfig, (value) => value.toMap()),
      'deploymentGroup': deploymentGroup,
      'displayName': displayName,
      'enableAccessLogging': enableAccessLogging,
      'index': index,
      'indexSyncTime': indexSyncTime,
      'privateEndpoints': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1IndexPrivateEndpointsResponse, Map<String, dynamic>>(privateEndpoints, (value) => value.toMap()),
      'reservedIpRanges': reservedIpRanges,
    };
  }

  factory GoogleCloudAiplatformV1beta1DeployedIndexResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1DeployedIndexResponse(
      automaticResources: (GoogleCloudAiplatformV1beta1AutomaticResourcesResponse.fromMap((map['automaticResources'] as Map).cast<String, dynamic>())).input(),
      createTime: (map['createTime'] as String).input(),
      dedicatedResources: (GoogleCloudAiplatformV1beta1DedicatedResourcesResponse.fromMap((map['dedicatedResources'] as Map).cast<String, dynamic>())).input(),
      deployedIndexAuthConfig: (GoogleCloudAiplatformV1beta1DeployedIndexAuthConfigResponse.fromMap((map['deployedIndexAuthConfig'] as Map).cast<String, dynamic>())).input(),
      deploymentGroup: (map['deploymentGroup'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      enableAccessLogging: (map['enableAccessLogging'] as bool).input(),
      index: (map['index'] as String).input(),
      indexSyncTime: (map['indexSyncTime'] as String).input(),
      privateEndpoints: (GoogleCloudAiplatformV1beta1IndexPrivateEndpointsResponse.fromMap((map['privateEndpoints'] as Map).cast<String, dynamic>())).input(),
      reservedIpRanges: ((map['reservedIpRanges'] as List).cast<String>()).input(),
    );
  }
}

