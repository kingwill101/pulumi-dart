// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_java_script_udfinput.dart';
import 'function_java_script_udfoutput.dart';

/// Input properties used for looking up and filtering FunctionJavaScriptUDF resources.
class FunctionJavaScriptUDFState {
  /// One or more `input` blocks as defined below.
  final pulumi.Input<List<FunctionJavaScriptUDFInput>>? inputs;
  /// The name of the JavaScript UDF Function. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `output` blocks as defined below.
  final pulumi.Input<FunctionJavaScriptUDFOutput>? output;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The JavaScript of this UDF Function.
  final pulumi.Input<String>? script;
  /// The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;

  /// Creates a new [FunctionJavaScriptUDFState].
  /// [inputs] One or more `input` blocks as defined below.
  /// [name] The name of the JavaScript UDF Function. Changing this forces a new resource to be created.
  /// [output] An `output` blocks as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [script] The JavaScript of this UDF Function.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  FunctionJavaScriptUDFState({
    this.inputs,
    this.name,
    this.output,
    this.resourceGroupName,
    this.script,
    this.streamAnalyticsJobName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<FunctionJavaScriptUDFInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<FunctionJavaScriptUDFInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'output': ?pulumi.Input.mapOptionalInputValue<FunctionJavaScriptUDFOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'script': ?script,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
    };
  }

  factory FunctionJavaScriptUDFState.fromMap(Map<String, dynamic> map) {
    return FunctionJavaScriptUDFState(
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionJavaScriptUDFInput>(guardedValue, (value) => FunctionJavaScriptUDFInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionJavaScriptUDFOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobName: (() { final guardedValue = map['streamAnalyticsJobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

