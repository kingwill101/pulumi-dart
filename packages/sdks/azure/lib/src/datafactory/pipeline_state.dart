// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// A JSON object that contains the activities that will be associated with the Data Factory Pipeline.
  final pulumi.Input<String>? activitiesJson;
  /// List of tags that can be used for describing the Data Factory Pipeline.
  final pulumi.Input<List<String>>? annotations;
  /// The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`.
  final pulumi.Input<int>? concurrency;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
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

  /// Creates a new [PipelineState].
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
  PipelineState({
    pulumi.Output<String>? activitiesJson,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<int>? concurrency,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? moniterMetricsAfterDuration,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<Map<String, String>>? variables,
  }) :
      activitiesJson = pulumi.Input.asOptionalInput<String>(activitiesJson),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      concurrency = pulumi.Input.asOptionalInput<int>(concurrency),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      moniterMetricsAfterDuration = pulumi.Input.asOptionalInput<String>(moniterMetricsAfterDuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      variables = pulumi.Input.asOptionalInput<Map<String, String>>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activitiesJson': ?activitiesJson,
      'annotations': ?annotations,
      'concurrency': ?concurrency,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'moniterMetricsAfterDuration': ?moniterMetricsAfterDuration,
      'name': ?name,
      'parameters': ?parameters,
      'variables': ?variables,
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      activitiesJson: map['activitiesJson'] == null ? null : pulumi.Output.create<String>(map['activitiesJson'] as String),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      concurrency: map['concurrency'] == null ? null : pulumi.Output.create<int>(map['concurrency'] as int),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      moniterMetricsAfterDuration: map['moniterMetricsAfterDuration'] == null ? null : pulumi.Output.create<String>(map['moniterMetricsAfterDuration'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      variables: map['variables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['variables'] as Map).cast<String, String>()),
    );
  }
}

