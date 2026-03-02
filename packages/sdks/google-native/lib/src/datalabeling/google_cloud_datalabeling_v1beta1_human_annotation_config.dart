// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for how human labeling task should be done.
class GoogleCloudDatalabelingV1beta1HumanAnnotationConfig {
  /// Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 characters long.
  final pulumi.Input<String>? annotatedDatasetDescription;
  /// A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters .
  final pulumi.Input<String> annotatedDatasetDisplayName;
  /// Optional. If you want your own labeling contributors to manage and work on this labeling request, you can set these contributors here. We will give them access to the question types in crowdcompute. Note that these emails must be registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
  final pulumi.Input<List<String>>? contributorEmails;
  /// Instruction resource name.
  final pulumi.Input<String> instruction;
  /// Optional. A human-readable label used to logically group labeling tasks. This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  final pulumi.Input<String>? labelGroup;
  /// Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when task is language related. For example, French text classification.
  final pulumi.Input<String>? languageCode;
  /// Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Default is 3600 seconds.
  final pulumi.Input<String>? questionDuration;
  /// Optional. Replication of questions. Each question will be sent to up to this number of contributors to label. Aggregated answers will be returned. Default is set to 1. For image related labeling, valid values are 1, 3, 5.
  final pulumi.Input<int>? replicaCount;
  /// Email of the user who started the labeling task and should be notified by email. If empty no notification will be sent.
  final pulumi.Input<String>? userEmailAddress;

  /// Creates a new [GoogleCloudDatalabelingV1beta1HumanAnnotationConfig].
  /// [annotatedDatasetDescription] Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 characters long.
  /// [annotatedDatasetDisplayName] A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters .
  /// [contributorEmails] Optional. If you want your own labeling contributors to manage and work on this labeling request, you can set these contributors here. We will give them access to the question types in crowdcompute. Note that these emails must be registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
  /// [instruction] Instruction resource name.
  /// [labelGroup] Optional. A human-readable label used to logically group labeling tasks. This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  /// [languageCode] Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when task is language related. For example, French text classification.
  /// [questionDuration] Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Default is 3600 seconds.
  /// [replicaCount] Optional. Replication of questions. Each question will be sent to up to this number of contributors to label. Aggregated answers will be returned. Default is set to 1. For image related labeling, valid values are 1, 3, 5.
  /// [userEmailAddress] Email of the user who started the labeling task and should be notified by email. If empty no notification will be sent.
  GoogleCloudDatalabelingV1beta1HumanAnnotationConfig({
    this.annotatedDatasetDescription,
    required this.annotatedDatasetDisplayName,
    this.contributorEmails,
    required this.instruction,
    this.labelGroup,
    this.languageCode,
    this.questionDuration,
    this.replicaCount,
    this.userEmailAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotatedDatasetDescription': ?annotatedDatasetDescription,
      'annotatedDatasetDisplayName': annotatedDatasetDisplayName,
      'contributorEmails': ?contributorEmails,
      'instruction': instruction,
      'labelGroup': ?labelGroup,
      'languageCode': ?languageCode,
      'questionDuration': ?questionDuration,
      'replicaCount': ?replicaCount,
      'userEmailAddress': ?userEmailAddress,
    };
  }

  factory GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1HumanAnnotationConfig(
      annotatedDatasetDescription: map['annotatedDatasetDescription'] == null ? null : (map['annotatedDatasetDescription'] as String).input(),
      annotatedDatasetDisplayName: (map['annotatedDatasetDisplayName'] as String).input(),
      contributorEmails: map['contributorEmails'] == null ? null : ((map['contributorEmails'] as List).cast<String>()).input(),
      instruction: (map['instruction'] as String).input(),
      labelGroup: map['labelGroup'] == null ? null : (map['labelGroup'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      questionDuration: map['questionDuration'] == null ? null : (map['questionDuration'] as String).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      userEmailAddress: map['userEmailAddress'] == null ? null : (map['userEmailAddress'] as String).input(),
    );
  }
}

