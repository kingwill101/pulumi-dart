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
    pulumi.Output<String>? elasticCloudDeploymentId,
    pulumi.Output<String>? elasticCloudEmailAddress,
    pulumi.Output<String>? elasticCloudSsoDefaultUrl,
    pulumi.Output<String>? elasticCloudUserId,
    pulumi.Output<String>? elasticsearchServiceUrl,
    pulumi.Output<String>? kibanaServiceUrl,
    pulumi.Output<String>? kibanaSsoUri,
    pulumi.Output<String>? location,
    pulumi.Output<ElasticsearchLogs>? logs,
    pulumi.Output<bool>? monitoringEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      elasticCloudDeploymentId = pulumi.Input.asOptionalInput<String>(elasticCloudDeploymentId),
      elasticCloudEmailAddress = pulumi.Input.asOptionalInput<String>(elasticCloudEmailAddress),
      elasticCloudSsoDefaultUrl = pulumi.Input.asOptionalInput<String>(elasticCloudSsoDefaultUrl),
      elasticCloudUserId = pulumi.Input.asOptionalInput<String>(elasticCloudUserId),
      elasticsearchServiceUrl = pulumi.Input.asOptionalInput<String>(elasticsearchServiceUrl),
      kibanaServiceUrl = pulumi.Input.asOptionalInput<String>(kibanaServiceUrl),
      kibanaSsoUri = pulumi.Input.asOptionalInput<String>(kibanaSsoUri),
      location = pulumi.Input.asOptionalInput<String>(location),
      logs = pulumi.Input.asOptionalInput<ElasticsearchLogs>(logs),
      monitoringEnabled = pulumi.Input.asOptionalInput<bool>(monitoringEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      elasticCloudDeploymentId: map['elasticCloudDeploymentId'] == null ? null : pulumi.Output.create<String>(map['elasticCloudDeploymentId'] as String),
      elasticCloudEmailAddress: map['elasticCloudEmailAddress'] == null ? null : pulumi.Output.create<String>(map['elasticCloudEmailAddress'] as String),
      elasticCloudSsoDefaultUrl: map['elasticCloudSsoDefaultUrl'] == null ? null : pulumi.Output.create<String>(map['elasticCloudSsoDefaultUrl'] as String),
      elasticCloudUserId: map['elasticCloudUserId'] == null ? null : pulumi.Output.create<String>(map['elasticCloudUserId'] as String),
      elasticsearchServiceUrl: map['elasticsearchServiceUrl'] == null ? null : pulumi.Output.create<String>(map['elasticsearchServiceUrl'] as String),
      kibanaServiceUrl: map['kibanaServiceUrl'] == null ? null : pulumi.Output.create<String>(map['kibanaServiceUrl'] as String),
      kibanaSsoUri: map['kibanaSsoUri'] == null ? null : pulumi.Output.create<String>(map['kibanaSsoUri'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logs: map['logs'] == null ? null : pulumi.Output.create<ElasticsearchLogs>(ElasticsearchLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())),
      monitoringEnabled: map['monitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['monitoringEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

