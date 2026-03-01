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
    pulumi.Output<List<FunctionJavaScriptUDFInput>>? inputs,
    pulumi.Output<String>? name,
    pulumi.Output<FunctionJavaScriptUDFOutput>? output,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? script,
    pulumi.Output<String>? streamAnalyticsJobName,
  }) :
      inputs = pulumi.Input.asOptionalInput<List<FunctionJavaScriptUDFInput>>(inputs),
      name = pulumi.Input.asOptionalInput<String>(name),
      output = pulumi.Input.asOptionalInput<FunctionJavaScriptUDFOutput>(output),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      script = pulumi.Input.asOptionalInput<String>(script),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName);

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
      inputs: map['inputs'] == null ? null : pulumi.Output.create<List<FunctionJavaScriptUDFInput>>(pulumi.Input.decodeList<FunctionJavaScriptUDFInput>(map['inputs'], (value) => FunctionJavaScriptUDFInput.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      output: map['output'] == null ? null : pulumi.Output.create<FunctionJavaScriptUDFOutput>(FunctionJavaScriptUDFOutput.fromMap((map['output'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      script: map['script'] == null ? null : pulumi.Output.create<String>(map['script'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
    );
  }
}

