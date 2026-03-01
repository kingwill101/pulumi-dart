// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisPipelineExternalComputeScale {
  /// Specifies the number of the external nodes, which should be greater than `0` and less than `11`.
  final int? numberOfExternalNodes;
  /// Specifies the number of the pipeline nodes, which should be greater than `0` and less than `11`.
  final int? numberOfPipelineNodes;
  /// Specifies the time to live (in minutes) setting of integration runtime which will execute copy activity. Possible values are at least `5`.
  final int? timeToLive;

  /// Creates a new [IntegrationRuntimeSsisPipelineExternalComputeScale].
  /// [numberOfExternalNodes] Specifies the number of the external nodes, which should be greater than `0` and less than `11`.
  /// [numberOfPipelineNodes] Specifies the number of the pipeline nodes, which should be greater than `0` and less than `11`.
  /// [timeToLive] Specifies the time to live (in minutes) setting of integration runtime which will execute copy activity. Possible values are at least `5`.
  IntegrationRuntimeSsisPipelineExternalComputeScale({
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
      numberOfExternalNodes: map['numberOfExternalNodes'] == null ? null : map['numberOfExternalNodes'] as int,
      numberOfPipelineNodes: map['numberOfPipelineNodes'] == null ? null : map['numberOfPipelineNodes'] as int,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as int,
    );
  }
}

