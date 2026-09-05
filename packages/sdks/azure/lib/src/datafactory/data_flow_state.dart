// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_sink.dart';
import 'data_flow_source.dart';
import 'data_flow_transformation.dart';

/// Input properties used for looking up and filtering DataFlow resources.
class DataFlowState {
  /// List of tags that can be used for describing the Data Factory Data Flow.
  final pulumi.Input<List<String>?>? annotations;
  /// The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  final pulumi.Input<String?>? dataFactoryId;
  /// The description for the Data Factory Data Flow.
  final pulumi.Input<String?>? description;
  /// The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  final pulumi.Input<String?>? folder;
  /// Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The script for the Data Factory Data Flow.
  final pulumi.Input<String?>? script;
  /// The script lines for the Data Factory Data Flow.
  final pulumi.Input<List<String>?>? scriptLines;
  /// One or more `sink` blocks as defined below.
  final pulumi.Input<List<DataFlowSink>?>? sinks;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<List<DataFlowSource>?>? sources;
  /// One or more `transformation` blocks as defined below.
  final pulumi.Input<List<DataFlowTransformation>?>? transformations_;

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
  /// [transformations_] One or more `transformation` blocks as defined below.
  const DataFlowState({
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.folder,
    this.name,
    this.script,
    this.scriptLines,
    this.sinks,
    this.sources,
    this.transformations_,
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
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<DataFlowTransformation>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<DataFlowTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataFlowState.fromMap(Map<String, dynamic> map) {
    return DataFlowState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptLines: (() { final guardedValue = map['scriptLines']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sinks: (() { final guardedValue = map['sinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlowSink>(guardedValue, (value) => DataFlowSink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlowSource>(guardedValue, (value) => DataFlowSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlowTransformation>(guardedValue, (value) => DataFlowTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
