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
    this.inputs,
    this.name,
    this.output,
    this.script,
    this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FunctionJavascriptUdaInput>,
            List<Map<String, dynamic>>
          >(
            inputs,
            (value) =>
                pulumi.Input.encodeList<
                  FunctionJavascriptUdaInput,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'output':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionJavascriptUdaOutput,
            Map<String, dynamic>
          >(output, (value) => value.toMap()),
      'script': ?script,
      'streamAnalyticsJobId': ?streamAnalyticsJobId,
    };
  }

  factory FunctionJavascriptUdaState.fromMap(Map<String, dynamic> map) {
    return FunctionJavascriptUdaState(
      inputs: (() {
        final guardedValue = map['inputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FunctionJavascriptUdaInput>(
            guardedValue,
            (value) => FunctionJavascriptUdaInput.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionJavascriptUdaOutput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      script: (() {
        final guardedValue = map['script'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamAnalyticsJobId: (() {
        final guardedValue = map['streamAnalyticsJobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
