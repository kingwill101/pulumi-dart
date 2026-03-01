// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elasticsearch_logs.dart';

/// {@template pulumi_elasticcloud_elasticsearch_elasticsearch_args_doc}
/// The set of arguments for Elasticsearch.
/// {@endtemplate}
/// {@macro pulumi_elasticcloud_elasticsearch_elasticsearch_args_doc}
class ElasticsearchArgs {
  /// Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String> elasticCloudEmailAddress;
  /// The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String>? location;
  /// A `logs` block as defined below.
  final pulumi.Input<ElasticsearchLogs>? logs;
  /// Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<bool>? monitoringEnabled;
  /// The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created.
  ///
  /// > **Note:** The SKU depends on the Elasticsearch Plans available for your account and is a combination of PlanID_Term.
  /// Ex: If the plan ID is "planXYZ" and term is "Yearly", the SKU will be "planXYZ_Yearly".
  /// You may find your eligible plans [here](https://portal.azure.com/#view/Microsoft_Azure_Marketplace/GalleryItemDetailsBladeNopdl/id/elastic.ec-azure-pp) or in the online documentation [here](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/elastic.ec-azure-pp?tab=PlansAndPrice) for more details or in case of any issues with the SKU.
  final pulumi.Input<String> skuName;
  /// A mapping of tags which should be assigned to the Elasticsearch resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticsearchArgs].
  /// [elasticCloudEmailAddress] Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created.
  /// [location] The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  /// [logs] A `logs` block as defined below.
  /// [monitoringEnabled] Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created.
  /// [name] The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created.
  /// [resourceGroupName] The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created.
  /// [skuName] Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created.
  /// [tags] A mapping of tags which should be assigned to the Elasticsearch resource.
  ElasticsearchArgs({
    required pulumi.Output<String> elasticCloudEmailAddress,
    pulumi.Output<String>? location,
    pulumi.Output<ElasticsearchLogs>? logs,
    pulumi.Output<bool>? monitoringEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      elasticCloudEmailAddress = pulumi.Input.asInput<String>(elasticCloudEmailAddress),
      location = pulumi.Input.asOptionalInput<String>(location),
      logs = pulumi.Input.asOptionalInput<ElasticsearchLogs>(logs),
      monitoringEnabled = pulumi.Input.asOptionalInput<bool>(monitoringEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticCloudEmailAddress': elasticCloudEmailAddress,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<ElasticsearchLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'monitoringEnabled': ?monitoringEnabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory ElasticsearchArgs.fromMap(Map<String, dynamic> map) {
    return ElasticsearchArgs(
      elasticCloudEmailAddress: pulumi.Output.create<String>(map['elasticCloudEmailAddress'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logs: map['logs'] == null ? null : pulumi.Output.create<ElasticsearchLogs>(ElasticsearchLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())),
      monitoringEnabled: map['monitoringEnabled'] == null ? null : pulumi.Output.create<bool>(map['monitoringEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

