// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_sink.dart';
import 'data_flow_source.dart';
import 'data_flow_transformation.dart';

/// Input properties used for looking up and filtering DataFlow resources.
class DataFlowState {
  /// List of tags that can be used for describing the Data Factory Data Flow.
  final pulumi.Input<List<String>>? annotations;
  /// The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Data Flow.
  final pulumi.Input<String>? description;
  /// The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  final pulumi.Input<String>? folder;
  /// Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The script for the Data Factory Data Flow.
  final pulumi.Input<String>? script;
  /// The script lines for the Data Factory Data Flow.
  final pulumi.Input<List<String>>? scriptLines;
  /// One or more `sink` blocks as defined below.
  final pulumi.Input<List<DataFlowSink>>? sinks;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<List<DataFlowSource>>? sources;
  /// One or more `transformation` blocks as defined below.
  final pulumi.Input<List<DataFlowTransformation>>? transformations;

  /// Creates a new [DataFlowState].
  /// [annotations] List of tags that can be used for describing the Data Factory Data Flow.
  /// [dataFactoryId] The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Data Flow.
  /// [folder] The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  /// [name] Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created.
  /// [script] The script for the Data Factory Data Flow.
  /// [scriptLines] The script lines for the Data Factory Data Flow.
  /// [sinks] One or more `sink` blocks as defined below.
  /// [sources] One or more `source` blocks as defined below.
  /// [transformations] One or more `transformation` blocks as defined below.
  DataFlowState({
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.folder,
    this.name,
    this.script,
    this.scriptLines,
    this.sinks,
    this.sources,
    this.transformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'name': ?name,
      'script': ?script,
      'scriptLines': ?scriptLines,
      'sinks': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSink>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<DataFlowSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DataFlowSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DataFlowSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<DataFlowTransformation>, List<Map<String, dynamic>>>(transformations, (value) => pulumi.Input.encodeList<DataFlowTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataFlowState.fromMap(Map<String, dynamic> map) {
    return DataFlowState(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      scriptLines: map['scriptLines'] == null ? null : ((map['scriptLines'] as List).cast<String>()).input(),
      sinks: map['sinks'] == null ? null : (pulumi.Input.decodeList<DataFlowSink>(map['sinks'], (value) => DataFlowSink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<DataFlowSource>(map['sources'], (value) => DataFlowSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transformations: map['transformations'] == null ? null : (pulumi.Input.decodeList<DataFlowTransformation>(map['transformations'], (value) => DataFlowTransformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

