// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_nas_trial_response.dart';

/// The output of a multi-trial Neural Architecture Search (NAS) jobs.
class GoogleCloudAiplatformV1beta1NasJobOutputMultiTrialJobOutputResponse {
  /// List of NasTrials that were started as part of search stage.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1NasTrialResponse>> searchTrials;
  /// List of NasTrials that were started as part of train stage.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1NasTrialResponse>> trainTrials;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobOutputMultiTrialJobOutputResponse].
  /// [searchTrials] List of NasTrials that were started as part of search stage.
  /// [trainTrials] List of NasTrials that were started as part of train stage.
  GoogleCloudAiplatformV1beta1NasJobOutputMultiTrialJobOutputResponse({
    required this.searchTrials,
    required this.trainTrials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchTrials': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1NasTrialResponse>, List<Map<String, dynamic>>>(searchTrials, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1NasTrialResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trainTrials': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1NasTrialResponse>, List<Map<String, dynamic>>>(trainTrials, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1NasTrialResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudAiplatformV1beta1NasJobOutputMultiTrialJobOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobOutputMultiTrialJobOutputResponse(
      searchTrials: (pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1NasTrialResponse>(map['searchTrials'], (value) => GoogleCloudAiplatformV1beta1NasTrialResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trainTrials: (pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1NasTrialResponse>(map['trainTrials'], (value) => GoogleCloudAiplatformV1beta1NasTrialResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

