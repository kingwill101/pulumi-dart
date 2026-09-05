// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_javascript_uda_input.dart';
import 'function_javascript_uda_output.dart';

/// {@template pulumi_streamanalytics_function_javascript_uda_function_javascript_uda_args_doc}
/// The set of arguments for FunctionJavascriptUda.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_function_javascript_uda_function_javascript_uda_args_doc}
class FunctionJavascriptUdaArgs {
  /// One or more `input` blocks as defined below.
  final pulumi.Input<List<FunctionJavascriptUdaInput>> inputs;
  /// The name of the JavaScript UDA Function. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// An `output` block as defined below.
  final pulumi.Input<FunctionJavascriptUdaOutput> output;
  /// The JavaScript of this UDA Function.
  final pulumi.Input<String> script;
  /// The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobId;

  /// Creates a new [FunctionJavascriptUdaArgs].
  /// [inputs] One or more `input` blocks as defined below.
  /// [name] The name of the JavaScript UDA Function. Changing this forces a new resource to be created.
  /// [output] An `output` block as defined below.
  /// [script] The JavaScript of this UDA Function.
  /// [streamAnalyticsJobId] The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  const FunctionJavascriptUdaArgs({
    required this.inputs,
    this.name,
    required this.output,
    required this.script,
    required this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': pulumi.Input.mapInputValue<List<FunctionJavascriptUdaInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<FunctionJavascriptUdaInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'output': pulumi.Input.mapInputValue<FunctionJavascriptUdaOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'script': script,
      'streamAnalyticsJobId': streamAnalyticsJobId,
    };
  }

  factory FunctionJavascriptUdaArgs.fromMap(Map<String, dynamic> map) {
    return FunctionJavascriptUdaArgs(
      inputs: pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionJavascriptUdaInput>(map['inputs']!, (value) => FunctionJavascriptUdaInput.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      output: pulumi.Input.fromValue(FunctionJavascriptUdaOutput.fromMap((map['output']! as Map).cast<String, dynamic>())),
      script: pulumi.Input.fromValue(map['script'] as String),
      streamAnalyticsJobId: pulumi.Input.fromValue(map['streamAnalyticsJobId'] as String),
    );
  }
}
