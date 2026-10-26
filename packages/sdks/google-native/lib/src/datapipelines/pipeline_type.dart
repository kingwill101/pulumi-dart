import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
enum PipelineType implements pulumi.PulumiEnum<String> {
  pipelineTypeUnspecified("PIPELINE_TYPE_UNSPECIFIED"),
  pipelineTypeBatch("PIPELINE_TYPE_BATCH"),
  pipelineTypeStreaming("PIPELINE_TYPE_STREAMING");

  const PipelineType(this.wireValue);
  @override
  final String wireValue;

  static PipelineType fromValue(String value) {
    for (final item in PipelineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineType value: $value');
  }
}
