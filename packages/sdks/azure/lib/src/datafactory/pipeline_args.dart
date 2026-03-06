// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_datafactory_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// A JSON object that contains the activities that will be associated with the Data Factory Pipeline.
  final pulumi.Input<String>? activitiesJson;
  /// List of tags that can be used for describing the Data Factory Pipeline.
  final pulumi.Input<List<String>>? annotations;
  /// The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`.
  final pulumi.Input<int>? concurrency;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Pipeline.
  final pulumi.Input<String>? description;
  /// The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The TimeSpan value after which an Azure Monitoring Metric is fired.
  final pulumi.Input<String>? moniterMetricsAfterDuration;
  /// Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Pipeline.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A map of variables to associate with the Data Factory Pipeline.
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [PipelineArgs].
  /// [activitiesJson] A JSON object that contains the activities that will be associated with the Data Factory Pipeline.
  /// [annotations] List of tags that can be used for describing the Data Factory Pipeline.
  /// [concurrency] The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Pipeline.
  /// [folder] The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level.
  /// [moniterMetricsAfterDuration] The TimeSpan value after which an Azure Monitoring Metric is fired.
  /// [name] Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Pipeline.
  /// [variables] A map of variables to associate with the Data Factory Pipeline.
  const PipelineArgs({
    this.activitiesJson,
    this.annotations,
    this.concurrency,
    required this.dataFactoryId,
    this.description,
    this.folder,
    this.moniterMetricsAfterDuration,
    this.name,
    this.parameters,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activitiesJson': ?activitiesJson,
      'annotations': ?annotations,
      'concurrency': ?concurrency,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'moniterMetricsAfterDuration': ?moniterMetricsAfterDuration,
      'name': ?name,
      'parameters': ?parameters,
      'variables': ?variables,
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      activitiesJson: (() { final guardedValue = map['activitiesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moniterMetricsAfterDuration: (() { final guardedValue = map['moniterMetricsAfterDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

