// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGeneratorModelParameter {
  /// The maximum number of tokens to generate.
  final pulumi.Input<int>? maxDecodeSteps;

  /// The temperature used for sampling. Temperature sampling occurs after both topP and topK have been applied.
  /// Valid range: [0.0, 1.0] Low temperature = less random. High temperature = more random.
  final pulumi.Input<double>? temperature;

  /// If set, the sampling process in each step is limited to the topK tokens with highest probabilities.
  /// Valid range: [1, 40] or 1000+. Small topK = less random. Large topK = more random.
  final pulumi.Input<int>? topK;

  /// If set, only the tokens comprising the top topP probability mass are considered.
  /// If both topP and topK are set, topP will be used for further refining candidates selected with topK.
  /// Valid range: (0.0, 1.0]. Small topP = less random. Large topP = more random.
  final pulumi.Input<double>? topP;

  /// Creates a new [CxGeneratorModelParameter].
  /// [maxDecodeSteps] The maximum number of tokens to generate.
  /// [temperature] The temperature used for sampling. Temperature sampling occurs after both topP and topK have been applied.
  /// [topK] If set, the sampling process in each step is limited to the topK tokens with highest probabilities.
  /// [topP] If set, only the tokens comprising the top topP probability mass are considered.
  CxGeneratorModelParameter({
    this.maxDecodeSteps,
    this.temperature,
    this.topK,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDecodeSteps': ?maxDecodeSteps,
      'temperature': ?temperature,
      'topK': ?topK,
      'topP': ?topP,
    };
  }

  factory CxGeneratorModelParameter.fromMap(Map<String, dynamic> map) {
    return CxGeneratorModelParameter(
      maxDecodeSteps: (() {
        final guardedValue = map['maxDecodeSteps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      temperature: (() {
        final guardedValue = map['temperature'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      topK: (() {
        final guardedValue = map['topK'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      topP: (() {
        final guardedValue = map['topP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
