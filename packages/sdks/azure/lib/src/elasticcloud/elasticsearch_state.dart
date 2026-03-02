// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elasticsearch_logs.dart';

/// Input properties used for looking up and filtering Elasticsearch resources.
class ElasticsearchState {
  /// The ID of the Deployment within Elastic Cloud.
  final pulumi.Input<String>? elasticCloudDeploymentId;
  /// Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String>? elasticCloudEmailAddress;
  /// The Default URL used for Single Sign On (SSO) to Elastic Cloud.
  final pulumi.Input<String>? elasticCloudSsoDefaultUrl;
  /// The ID of the User Account within Elastic Cloud.
  final pulumi.Input<String>? elasticCloudUserId;
  /// The URL to the Elasticsearch Service associated with this Elasticsearch.
  final pulumi.Input<String>? elasticsearchServiceUrl;
  /// The URL to the Kibana Dashboard associated with this Elasticsearch.
  final pulumi.Input<String>? kibanaServiceUrl;
  /// The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch.
  final pulumi.Input<String>? kibanaSsoUri;
  /// The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String>? location;
  /// A `logs` block as defined below.
  final pulumi.Input<ElasticsearchLogs>? logs;
  /// Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<bool>? monitoringEnabled;
  /// The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created.
  ///
  /// > **Note:** The SKU depends on the Elasticsearch Plans available for your account and is a combination of PlanID_Term.
  /// Ex: If the plan ID is "planXYZ" and term is "Yearly", the SKU will be "planXYZ_Yearly".
  /// You may find your eligible plans [here](https://portal.azure.com/#view/Microsoft_Azure_Marketplace/GalleryItemDetailsBladeNopdl/id/elastic.ec-azure-pp) or in the online documentation [here](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/elastic.ec-azure-pp?tab=PlansAndPrice) for more details or in case of any issues with the SKU.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the Elasticsearch resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticsearchState].
  /// [elasticCloudDeploymentId] The ID of the Deployment within Elastic Cloud.
  /// [elasticCloudEmailAddress] Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created.
  /// [elasticCloudSsoDefaultUrl] The Default URL used for Single Sign On (SSO) to Elastic Cloud.
  /// [elasticCloudUserId] The ID of the User Account within Elastic Cloud.
  /// [elasticsearchServiceUrl] The URL to the Elasticsearch Service associated with this Elasticsearch.
  /// [kibanaServiceUrl] The URL to the Kibana Dashboard associated with this Elasticsearch.
  /// [kibanaSsoUri] The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch.
  /// [location] The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  /// [logs] A `logs` block as defined below.
  /// [monitoringEnabled] Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created.
  /// [name] The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created.
  /// [resourceGroupName] The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  /// [skuName] Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created.
  /// [tags] A mapping of tags which should be assigned to the Elasticsearch resource.
  ElasticsearchState({
    this.elasticCloudDeploymentId,
    this.elasticCloudEmailAddress,
    this.elasticCloudSsoDefaultUrl,
    this.elasticCloudUserId,
    this.elasticsearchServiceUrl,
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
      'kibanaServiceUrl': ?kibanaServiceUrl,
      'kibanaSsoUri': ?kibanaSsoUri,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<ElasticsearchLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory ElasticsearchState.fromMap(Map<String, dynamic> map) {
    return ElasticsearchState(
      elasticCloudDeploymentId: map['elasticCloudDeploymentId'] == null ? null : (map['elasticCloudDeploymentId'] as String).input(),
      elasticCloudEmailAddress: map['elasticCloudEmailAddress'] == null ? null : (map['elasticCloudEmailAddress'] as String).input(),
      elasticCloudSsoDefaultUrl: map['elasticCloudSsoDefaultUrl'] == null ? null : (map['elasticCloudSsoDefaultUrl'] as String).input(),
      elasticCloudUserId: map['elasticCloudUserId'] == null ? null : (map['elasticCloudUserId'] as String).input(),
      elasticsearchServiceUrl: map['elasticsearchServiceUrl'] == null ? null : (map['elasticsearchServiceUrl'] as String).input(),
      kibanaServiceUrl: map['kibanaServiceUrl'] == null ? null : (map['kibanaServiceUrl'] as String).input(),
      kibanaSsoUri: map['kibanaSsoUri'] == null ? null : (map['kibanaSsoUri'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logs: map['logs'] == null ? null : (ElasticsearchLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())).input(),
      monitoringEnabled: map['monitoringEnabled'] == null ? null : (map['monitoringEnabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

