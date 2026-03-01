// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_javascript_uda_input.dart';
import 'function_javascript_uda_output.dart';

/// Input properties used for looking up and filtering FunctionJavascriptUda resources.
class FunctionJavascriptUdaState {
  /// One or more `input` blocks as defined below.
  final pulumi.Input<List<FunctionJavascriptUdaInput>>? inputs;
  /// The name of the JavaScript UDA Function. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `output` block as defined below.
  final pulumi.Input<FunctionJavascriptUdaOutput>? output;
  /// The JavaScript of this UDA Function.
  final pulumi.Input<String>? script;
  /// The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobId;

  /// Creates a new [FunctionJavascriptUdaState].
  /// [inputs] One or more `input` blocks as defined below.
  /// [name] The name of the JavaScript UDA Function. Changing this forces a new resource to be created.
  /// [output] An `output` block as defined below.
  /// [script] The JavaScript of this UDA Function.
  /// [streamAnalyticsJobId] The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  FunctionJavascriptUdaState({
    pulumi.Output<List<FunctionJavascriptUdaInput>>? inputs,
    pulumi.Output<String>? name,
    pulumi.Output<FunctionJavascriptUdaOutput>? output,
    pulumi.Output<String>? script,
    pulumi.Output<String>? streamAnalyticsJobId,
  }) :
      inputs = pulumi.Input.asOptionalInput<List<FunctionJavascriptUdaInput>>(inputs),
      name = pulumi.Input.asOptionalInput<String>(name),
      output = pulumi.Input.asOptionalInput<FunctionJavascriptUdaOutput>(output),
      script = pulumi.Input.asOptionalInput<String>(script),
      streamAnalyticsJobId = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<FunctionJavascriptUdaInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<FunctionJavascriptUdaInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'output': ?pulumi.Input.mapOptionalInputValue<FunctionJavascriptUdaOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'script': ?script,
      'streamAnalyticsJobId': ?streamAnalyticsJobId,
    };
  }

  factory FunctionJavascriptUdaState.fromMap(Map<String, dynamic> map) {
    return FunctionJavascriptUdaState(
      inputs: map['inputs'] == null ? null : pulumi.Output.create<List<FunctionJavascriptUdaInput>>(pulumi.Input.decodeList<FunctionJavascriptUdaInput>(map['inputs'], (value) => FunctionJavascriptUdaInput.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      output: map['output'] == null ? null : pulumi.Output.create<FunctionJavascriptUdaOutput>(FunctionJavascriptUdaOutput.fromMap((map['output'] as Map).cast<String, dynamic>())),
      script: map['script'] == null ? null : pulumi.Output.create<String>(map['script'] as String),
      streamAnalyticsJobId: map['streamAnalyticsJobId'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobId'] as String),
    );
  }
}

