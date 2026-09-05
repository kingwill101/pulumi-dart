// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticsearch_log.dart';

/// Result data returned by getElasticsearch.
class GetElasticsearchResult {
  /// The ID of the Deployment within Elastic Cloud.
  final String? elasticCloudDeploymentId;
  /// The Email Address which is associated with this Elasticsearch account.
  final String? elasticCloudEmailAddress;
  /// The Default URL used for Single Sign On (SSO) to Elastic Cloud.
  final String? elasticCloudSsoDefaultUrl;
  /// The ID of the User Account within Elastic Cloud.
  final String? elasticCloudUserId;
  /// The URL to the Elasticsearch Service associated with this Elasticsearch.
  final String? elasticsearchServiceUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The URL to the Kibana Dashboard associated with this Elasticsearch.
  final String? kibanaServiceUrl;
  /// The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch.
  final String? kibanaSsoUri;
  /// The Azure Region in which this Elasticsearch exists.
  final String? location;
  /// A `logs` block as defined below.
  final List<GetElasticsearchLog>? logs;
  /// Specifies if monitoring is enabled on this Elasticsearch or not.
  final bool? monitoringEnabled;
  /// The name (key) of the Tag which should be filtered.
  final String? name;
  final String? resourceGroupName;
  /// The name of the SKU used for this Elasticsearch.
  final String? skuName;
  /// A mapping of tags assigned to the Elasticsearch.
  final Map<String, String>? tags;

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
  /// [resourceGroupName] Optional.
  /// [skuName] The name of the SKU used for this Elasticsearch.
  /// [tags] A mapping of tags assigned to the Elasticsearch.
  const GetElasticsearchResult({
    this.elasticCloudDeploymentId,
    this.elasticCloudEmailAddress,
    this.elasticCloudSsoDefaultUrl,
    this.elasticCloudUserId,
    this.elasticsearchServiceUrl,
    this.id,
    this.kibanaServiceUrl,
    this.kibanaSsoUri,
    this.location,
    this.logs,
    this.monitoringEnabled,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticCloudDeploymentId': ?elasticCloudDeploymentId,
      'elasticCloudEmailAddress': ?elasticCloudEmailAddress,
      'elasticCloudSsoDefaultUrl': ?elasticCloudSsoDefaultUrl,
      'elasticCloudUserId': ?elasticCloudUserId,
      'elasticsearchServiceUrl': ?elasticsearchServiceUrl,
      'id': ?id,
      'kibanaServiceUrl': ?kibanaServiceUrl,
      'kibanaSsoUri': ?kibanaSsoUri,
      'location': ?location,
      'logs': ?(() { final guardedValue = logs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetElasticsearchLog, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory GetElasticsearchResult.fromMap(Map<String, dynamic> map) {
    return GetElasticsearchResult(
      elasticCloudDeploymentId: (() { final guardedValue = map['elasticCloudDeploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticCloudEmailAddress: (() { final guardedValue = map['elasticCloudEmailAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticCloudSsoDefaultUrl: (() { final guardedValue = map['elasticCloudSsoDefaultUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticCloudUserId: (() { final guardedValue = map['elasticCloudUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticsearchServiceUrl: (() { final guardedValue = map['elasticsearchServiceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kibanaServiceUrl: (() { final guardedValue = map['kibanaServiceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kibanaSsoUri: (() { final guardedValue = map['kibanaSsoUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetElasticsearchLog>(guardedValue, (value) => GetElasticsearchLog.fromMap((value as Map).cast<String, dynamic>())); })(),
      monitoringEnabled: (() { final guardedValue = map['monitoringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
