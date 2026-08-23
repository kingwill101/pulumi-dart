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
  const GetElasticsearchArgs({
    this.logs,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?pulumi.Input.mapOptionalInputValue<List<GetElasticsearchLog>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<GetElasticsearchLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticsearchArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticsearchArgs(
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetElasticsearchLog>(guardedValue, (value) => GetElasticsearchLog.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
