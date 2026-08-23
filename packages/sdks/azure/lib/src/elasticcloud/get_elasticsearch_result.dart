// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticsearch_log.dart';

/// Result data returned by getElasticsearch.
class GetElasticsearchResult {
  /// The ID of the Deployment within Elastic Cloud.
  final String elasticCloudDeploymentId;
  /// The Email Address which is associated with this Elasticsearch account.
  final String elasticCloudEmailAddress;
  /// The Default URL used for Single Sign On (SSO) to Elastic Cloud.
  final String elasticCloudSsoDefaultUrl;
  /// The ID of the User Account within Elastic Cloud.
  final String elasticCloudUserId;
  /// The URL to the Elasticsearch Service associated with this Elasticsearch.
  final String elasticsearchServiceUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The URL to the Kibana Dashboard associated with this Elasticsearch.
  final String kibanaServiceUrl;
  /// The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch.
  final String kibanaSsoUri;
  /// The Azure Region in which this Elasticsearch exists.
  final String location;
  /// A `logs` block as defined below.
  final List<GetElasticsearchLog> logs;
  /// Specifies if monitoring is enabled on this Elasticsearch or not.
  final bool monitoringEnabled;
  /// The name (key) of the Tag which should be filtered.
  final String name;
  final String resourceGroupName;
  /// The name of the SKU used for this Elasticsearch.
  final String skuName;
  /// A mapping of tags assigned to the Elasticsearch.
  final Map<String, String> tags;

  /// Creates a new [GetElasticsearchResult].
  /// [elasticCloudDeploymentId] The ID of the Deployment within Elastic Cloud.
  /// [elasticCloudEmailAddress] The Email Address which is associated with this Elasticsearch account.
  /// [elasticCloudSsoDefaultUrl] The Default URL used for Single Sign On (SSO) to Elastic Cloud.
  /// [elasticCloudUserId] The ID of the User Account within Elastic Cloud.
  /// [elasticsearchServiceUrl] The URL to the Elasticsearch Service associated with this Elasticsearch.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kibanaServiceUrl] The URL to the Kibana Dashboard associated with this Elasticsearch.
  /// [kibanaSsoUri] The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch.
  /// [location] The Azure Region in which this Elasticsearch exists.
  /// [logs] A `logs` block as defined below.
  /// [monitoringEnabled] Specifies if monitoring is enabled on this Elasticsearch or not.
  /// [name] The name (key) of the Tag which should be filtered.
  /// [resourceGroupName] Required.
  /// [skuName] The name of the SKU used for this Elasticsearch.
  /// [tags] A mapping of tags assigned to the Elasticsearch.
  const GetElasticsearchResult({
    required this.elasticCloudDeploymentId,
    required this.elasticCloudEmailAddress,
    required this.elasticCloudSsoDefaultUrl,
    required this.elasticCloudUserId,
    required this.elasticsearchServiceUrl,
    required this.id,
    required this.kibanaServiceUrl,
    required this.kibanaSsoUri,
    required this.location,
    required this.logs,
    required this.monitoringEnabled,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticCloudDeploymentId': elasticCloudDeploymentId,
      'elasticCloudEmailAddress': elasticCloudEmailAddress,
      'elasticCloudSsoDefaultUrl': elasticCloudSsoDefaultUrl,
      'elasticCloudUserId': elasticCloudUserId,
      'elasticsearchServiceUrl': elasticsearchServiceUrl,
      'id': id,
      'kibanaServiceUrl': kibanaServiceUrl,
      'kibanaSsoUri': kibanaSsoUri,
      'location': location,
      'logs': pulumi.Input.encodeList<GetElasticsearchLog, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'monitoringEnabled': monitoringEnabled,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
    };
  }

  factory GetElasticsearchResult.fromMap(Map<String, dynamic> map) {
    return GetElasticsearchResult(
      elasticCloudDeploymentId: map['elasticCloudDeploymentId'] as String,
      elasticCloudEmailAddress: map['elasticCloudEmailAddress'] as String,
      elasticCloudSsoDefaultUrl: map['elasticCloudSsoDefaultUrl'] as String,
      elasticCloudUserId: map['elasticCloudUserId'] as String,
      elasticsearchServiceUrl: map['elasticsearchServiceUrl'] as String,
      id: map['id'] as String,
      kibanaServiceUrl: map['kibanaServiceUrl'] as String,
      kibanaSsoUri: map['kibanaSsoUri'] as String,
      location: map['location'] as String,
      logs: pulumi.Input.decodeList<GetElasticsearchLog>(map['logs']!, (value) => GetElasticsearchLog.fromMap((value as Map).cast<String, dynamic>())),
      monitoringEnabled: map['monitoringEnabled'] as bool,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
