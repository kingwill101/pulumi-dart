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
    required this.inputs,
    this.name,
    required this.output,
    required this.resourceGroupName,
    required this.script,
    required this.streamAnalyticsJobName,
  });

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
      inputs: (pulumi.Input.decodeList<FunctionJavaScriptUDFInput>(map['inputs'], (value) => FunctionJavaScriptUDFInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      output: (FunctionJavaScriptUDFOutput.fromMap((map['output'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      script: (map['script'] as String).input(),
      streamAnalyticsJobName: (map['streamAnalyticsJobName'] as String).input(),
    );
  }
}

