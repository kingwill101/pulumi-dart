// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_java_script_udfinput.dart';
import 'function_java_script_udfoutput.dart';

/// {@template pulumi_streamanalytics_function_java_script_udf_function_java_script_udfargs_doc}
/// The set of arguments for FunctionJavaScriptUDF.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_function_java_script_udf_function_java_script_udfargs_doc}
class FunctionJavaScriptUDFArgs {
  /// One or more `input` blocks as defined below.
  final pulumi.Input<List<FunctionJavaScriptUDFInput>> inputs;
  /// The name of the JavaScript UDF Function. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `output` blocks as defined below.
  final pulumi.Input<FunctionJavaScriptUDFOutput> output;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The JavaScript of this UDF Function.
  final pulumi.Input<String> script;
  /// The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;

  /// Creates a new [FunctionJavaScriptUDFArgs].
  /// [inputs] One or more `input` blocks as defined below.
  /// [name] The name of the JavaScript UDF Function. Changing this forces a new resource to be created.
  /// [output] An `output` blocks as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [script] The JavaScript of this UDF Function.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  FunctionJavaScriptUDFArgs({
    required pulumi.Output<List<FunctionJavaScriptUDFInput>> inputs,
    pulumi.Output<String>? name,
    required pulumi.Output<FunctionJavaScriptUDFOutput> output,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> script,
    required pulumi.Output<String> streamAnalyticsJobName,
  }) :
      inputs = pulumi.Input.asInput<List<FunctionJavaScriptUDFInput>>(inputs),
      name = pulumi.Input.asOptionalInput<String>(name),
      output = pulumi.Input.asInput<FunctionJavaScriptUDFOutput>(output),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      script = pulumi.Input.asInput<String>(script),
      streamAnalyticsJobName = pulumi.Input.asInput<String>(streamAnalyticsJobName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': pulumi.Input.mapInputValue<List<FunctionJavaScriptUDFInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<FunctionJavaScriptUDFInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'output': pulumi.Input.mapInputValue<FunctionJavaScriptUDFOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'script': script,
      'streamAnalyticsJobName': streamAnalyticsJobName,
    };
  }

  factory FunctionJavaScriptUDFArgs.fromMap(Map<String, dynamic> map) {
    return FunctionJavaScriptUDFArgs(
      inputs: pulumi.Output.create<List<FunctionJavaScriptUDFInput>>(pulumi.Input.decodeList<FunctionJavaScriptUDFInput>(map['inputs'], (value) => FunctionJavaScriptUDFInput.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      output: pulumi.Output.create<FunctionJavaScriptUDFOutput>(FunctionJavaScriptUDFOutput.fromMap((map['output'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      script: pulumi.Output.create<String>(map['script'] as String),
      streamAnalyticsJobName: pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
    );
  }
}

