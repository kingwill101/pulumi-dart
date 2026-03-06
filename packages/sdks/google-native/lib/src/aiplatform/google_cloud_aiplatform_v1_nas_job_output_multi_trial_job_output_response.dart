// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_nas_trial_response.dart';

/// The output of a multi-trial Neural Architecture Search (NAS) jobs.
class GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse {
  /// List of NasTrials that were started as part of search stage.
  final pulumi.Input<List<GoogleCloudAiplatformV1NasTrialResponse>> searchTrials;
  /// List of NasTrials that were started as part of train stage.
  final pulumi.Input<List<GoogleCloudAiplatformV1NasTrialResponse>> trainTrials;

  /// Creates a new [GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse].
  /// [searchTrials] List of NasTrials that were started as part of search stage.
  /// [trainTrials] List of NasTrials that were started as part of train stage.
  const GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse({
    required this.searchTrials,
    required this.trainTrials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchTrials': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1NasTrialResponse>, List<Map<String, dynamic>>>(searchTrials, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1NasTrialResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trainTrials': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1NasTrialResponse>, List<Map<String, dynamic>>>(trainTrials, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1NasTrialResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse(
      searchTrials: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1NasTrialResponse>(map['searchTrials']!, (value) => GoogleCloudAiplatformV1NasTrialResponse.fromMap((value as Map).cast<String, dynamic>()))),
      trainTrials: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1NasTrialResponse>(map['trainTrials']!, (value) => GoogleCloudAiplatformV1NasTrialResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

