// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticsearch_log.dart';

/// {@template pulumi_elasticcloud_get_elasticsearch_get_elasticsearch_args_doc}
/// Arguments for getElasticsearch.
/// {@endtemplate}
/// {@macro pulumi_elasticcloud_get_elasticsearch_get_elasticsearch_args_doc}
class GetElasticsearchArgs {
  /// A `logs` block as defined below.
  final pulumi.Input<List<GetElasticsearchLog>>? logs;
  /// The name of the Elasticsearch resource.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the Elasticsearch exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticsearchArgs].
  /// [logs] A `logs` block as defined below.
  /// [name] The name of the Elasticsearch resource.
  /// [resourceGroupName] The name of the resource group in which the Elasticsearch exists.
  GetElasticsearchArgs({
    pulumi.Output<List<GetElasticsearchLog>>? logs,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      logs = pulumi.Input.asOptionalInput<List<GetElasticsearchLog>>(logs),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?pulumi.Input.mapOptionalInputValue<List<GetElasticsearchLog>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<GetElasticsearchLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticsearchArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticsearchArgs(
      logs: map['logs'] == null ? null : pulumi.Output.create<List<GetElasticsearchLog>>(pulumi.Input.decodeList<GetElasticsearchLog>(map['logs'], (value) => GetElasticsearchLog.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

