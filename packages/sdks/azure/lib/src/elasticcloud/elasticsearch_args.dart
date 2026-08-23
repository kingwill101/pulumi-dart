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
  /// &gt; **Note:** The SKU depends on the Elasticsearch Plans available for your account and is a combination of PlanID_Term.
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
  const ElasticsearchArgs({
    required this.elasticCloudEmailAddress,
    this.location,
    this.logs,
    this.monitoringEnabled,
    this.name,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
  });

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
      elasticCloudEmailAddress: pulumi.Input.fromValue(map['elasticCloudEmailAddress'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticsearchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringEnabled: (() { final guardedValue = map['monitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
