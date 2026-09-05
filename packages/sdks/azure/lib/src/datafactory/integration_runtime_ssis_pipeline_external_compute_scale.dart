// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeSsisPipelineExternalComputeScale {
  /// Specifies the number of the external nodes, which should be greater than `0` and less than `11`.
  final pulumi.Input<int?>? numberOfExternalNodes;
  /// Specifies the number of the pipeline nodes, which should be greater than `0` and less than `11`.
  final pulumi.Input<int?>? numberOfPipelineNodes;
  /// Specifies the time to live (in minutes) setting of integration runtime which will execute copy activity. Possible values are at least `5`.
  final pulumi.Input<int?>? timeToLive;

  /// Creates a new [IntegrationRuntimeSsisPipelineExternalComputeScale].
  /// [numberOfExternalNodes] Specifies the number of the external nodes, which should be greater than `0` and less than `11`.
  /// [numberOfPipelineNodes] Specifies the number of the pipeline nodes, which should be greater than `0` and less than `11`.
  /// [timeToLive] Specifies the time to live (in minutes) setting of integration runtime which will execute copy activity. Possible values are at least `5`.
  const IntegrationRuntimeSsisPipelineExternalComputeScale({
    this.numberOfExternalNodes,
    this.numberOfPipelineNodes,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberOfExternalNodes': ?numberOfExternalNodes,
      'numberOfPipelineNodes': ?numberOfPipelineNodes,
      'timeToLive': ?timeToLive,
    };
  }

  factory IntegrationRuntimeSsisPipelineExternalComputeScale.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisPipelineExternalComputeScale(
      numberOfExternalNodes: (() { final guardedValue = map['numberOfExternalNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      numberOfPipelineNodes: (() { final guardedValue = map['numberOfPipelineNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
