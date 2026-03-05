import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_args.dart';
import 'google_cloud_contactcenterinsights_v1_analysis_result_response.dart';
import 'google_cloud_contactcenterinsights_v1_annotator_selector_response.dart';

/// Creates an analysis. The long running operation is done when the analysis has completed.
class Analysis extends pulumi.CustomResource {
  /// The result of the analysis, which is populated when the analysis finishes.
  late final pulumi.Output<GoogleCloudContactcenterinsightsV1AnalysisResultResponse> analysisResult;
  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  late final pulumi.Output<GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse> annotatorSelector;
  late final pulumi.Output<String> conversationId;
  /// The time at which the analysis was created, which occurs when the long-running operation completes.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> location;
  /// Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The time at which the analysis was requested.
  late final pulumi.Output<String> requestTime;

  /// Creates a new [Analysis].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Analysis]. {@macro pulumi_contactcenterinsights_v1_analysis_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Analysis(
    String name, {
    AnalysisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:Analysis',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analysisResult = registerOutput<GoogleCloudContactcenterinsightsV1AnalysisResultResponse>('analysisResult', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1AnalysisResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    annotatorSelector = registerOutput<GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse>('annotatorSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    conversationId = registerOutput<String>('conversationId');
    createTime = registerOutput<String>('createTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestTime = registerOutput<String>('requestTime');
  }
}
