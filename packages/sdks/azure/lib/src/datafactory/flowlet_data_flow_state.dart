// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flowlet_data_flow_sink.dart';
import 'flowlet_data_flow_source.dart';
import 'flowlet_data_flow_transformation.dart';

/// Input properties used for looking up and filtering FlowletDataFlow resources.
class FlowletDataFlowState {
  /// List of tags that can be used for describing the Data Factory Flowlet Data Flow.
  final pulumi.Input<List<String>?>? annotations;
  /// The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  final pulumi.Input<String?>? dataFactoryId;
  /// The description for the Data Factory Flowlet Data Flow.
  final pulumi.Input<String?>? description;
  /// The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  final pulumi.Input<String?>? folder;
  /// Specifies the name of the Data Factory Flowlet Data Flow. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The script for the Data Factory Flowlet Data Flow.
  final pulumi.Input<String?>? script;
  /// The script lines for the Data Factory Flowlet Data Flow.
  final pulumi.Input<List<String>?>? scriptLines;
  /// One or more `sink` blocks as defined below.
  final pulumi.Input<List<FlowletDataFlowSink>?>? sinks;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<List<FlowletDataFlowSource>?>? sources;
  /// One or more `transformation` blocks as defined below.
  final pulumi.Input<List<FlowletDataFlowTransformation>?>? transformations_;

  /// Creates a new [FlowletDataFlowState].
  /// [annotations] List of tags that can be used for describing the Data Factory Flowlet Data Flow.
  /// [dataFactoryId] The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Flowlet Data Flow.
  /// [folder] The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  /// [name] Specifies the name of the Data Factory Flowlet Data Flow. Changing this forces a new resource to be created.
  /// [script] The script for the Data Factory Flowlet Data Flow.
  /// [scriptLines] The script lines for the Data Factory Flowlet Data Flow.
  /// [sinks] One or more `sink` blocks as defined below.
  /// [sources] One or more `source` blocks as defined below.
  /// [transformations_] One or more `transformation` blocks as defined below.
  const FlowletDataFlowState({
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
      'sinks': ?pulumi.Input.mapOptionalInputValue<List<FlowletDataFlowSink>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<FlowletDataFlowSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<FlowletDataFlowSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<FlowletDataFlowSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformations': ?pulumi.Input.mapOptionalInputValue<List<FlowletDataFlowTransformation>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<FlowletDataFlowTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowletDataFlowState.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptLines: (() { final guardedValue = map['scriptLines']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sinks: (() { final guardedValue = map['sinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowletDataFlowSink>(guardedValue, (value) => FlowletDataFlowSink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowletDataFlowSource>(guardedValue, (value) => FlowletDataFlowSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowletDataFlowTransformation>(guardedValue, (value) => FlowletDataFlowTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
