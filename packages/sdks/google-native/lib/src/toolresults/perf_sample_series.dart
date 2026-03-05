import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_perf_sample_series_response.dart';
import 'perf_sample_series_args.dart';

/// Creates a PerfSampleSeries. May return any of the following error code(s): - ALREADY_EXISTS - PerfMetricSummary already exists for the given Step - NOT_FOUND - The containing Step does not exist
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class PerfSampleSeries extends pulumi.CustomResource {
  /// Basic series represented by a line chart
  late final pulumi.Output<BasicPerfSampleSeriesResponse> basicPerfSampleSeries;
  late final pulumi.Output<String> executionId;
  late final pulumi.Output<String> historyId;
  late final pulumi.Output<String> project;

  /// A sample series id
  late final pulumi.Output<String> sampleSeriesId;
  late final pulumi.Output<String> stepId;

  /// Creates a new [PerfSampleSeries].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PerfSampleSeries]. {@macro pulumi_toolresults_v1beta3_perf_sample_series_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PerfSampleSeries(
    String name, {
    PerfSampleSeriesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:toolresults/v1beta3:PerfSampleSeries',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    basicPerfSampleSeries = registerOutput<BasicPerfSampleSeriesResponse>(
      'basicPerfSampleSeries',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BasicPerfSampleSeriesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    executionId = registerOutput<String>('executionId');
    historyId = registerOutput<String>('historyId');
    project = registerOutput<String>('project');
    sampleSeriesId = registerOutput<String>('sampleSeriesId');
    stepId = registerOutput<String>('stepId');
  }
}
