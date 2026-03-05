// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify_response.dart';
import 'google_privacy_dlp_v2_publish_to_pub_sub_response.dart';
import 'google_privacy_dlp_v2_save_findings_response.dart';

/// A task to execute on the completion of a job. See https://cloud.google.com/dlp/docs/concepts-actions to learn more.
class GooglePrivacyDlpV2ActionResponse {
  /// Create a de-identified copy of the input data.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyResponse> deidentify;
  /// Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  final pulumi.Input<Map<String, dynamic>> jobNotificationEmails;
  /// Publish a notification to a Pub/Sub topic.
  final pulumi.Input<GooglePrivacyDlpV2PublishToPubSubResponse> pubSub;
  /// Publish findings to Cloud Datahub.
  final pulumi.Input<Map<String, dynamic>> publishFindingsToCloudDataCatalog;
  /// Publish summary to Cloud Security Command Center (Alpha).
  final pulumi.Input<Map<String, dynamic>> publishSummaryToCscc;
  /// Enable Stackdriver metric dlp.googleapis.com/finding_count.
  final pulumi.Input<Map<String, dynamic>> publishToStackdriver;
  /// Save resulting findings in a provided location.
  final pulumi.Input<GooglePrivacyDlpV2SaveFindingsResponse> saveFindings;

  /// Creates a new [GooglePrivacyDlpV2ActionResponse].
  /// [deidentify] Create a de-identified copy of the input data.
  /// [jobNotificationEmails] Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  /// [pubSub] Publish a notification to a Pub/Sub topic.
  /// [publishFindingsToCloudDataCatalog] Publish findings to Cloud Datahub.
  /// [publishSummaryToCscc] Publish summary to Cloud Security Command Center (Alpha).
  /// [publishToStackdriver] Enable Stackdriver metric dlp.googleapis.com/finding_count.
  /// [saveFindings] Save resulting findings in a provided location.
  GooglePrivacyDlpV2ActionResponse({
    required this.deidentify,
    required this.jobNotificationEmails,
    required this.pubSub,
    required this.publishFindingsToCloudDataCatalog,
    required this.publishSummaryToCscc,
    required this.publishToStackdriver,
    required this.saveFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentify': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeidentifyResponse, Map<String, dynamic>>(deidentify, (value) => value.toMap()),
      'jobNotificationEmails': jobNotificationEmails,
      'pubSub': pulumi.Input.mapInputValue<GooglePrivacyDlpV2PublishToPubSubResponse, Map<String, dynamic>>(pubSub, (value) => value.toMap()),
      'publishFindingsToCloudDataCatalog': publishFindingsToCloudDataCatalog,
      'publishSummaryToCscc': publishSummaryToCscc,
      'publishToStackdriver': publishToStackdriver,
      'saveFindings': pulumi.Input.mapInputValue<GooglePrivacyDlpV2SaveFindingsResponse, Map<String, dynamic>>(saveFindings, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ActionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ActionResponse(
      deidentify: pulumi.Input.fromValue(GooglePrivacyDlpV2DeidentifyResponse.fromMap((map['deidentify']! as Map).cast<String, dynamic>())),
      jobNotificationEmails: pulumi.Input.fromValue((map['jobNotificationEmails']! as Map).cast<String, dynamic>()),
      pubSub: pulumi.Input.fromValue(GooglePrivacyDlpV2PublishToPubSubResponse.fromMap((map['pubSub']! as Map).cast<String, dynamic>())),
      publishFindingsToCloudDataCatalog: pulumi.Input.fromValue((map['publishFindingsToCloudDataCatalog']! as Map).cast<String, dynamic>()),
      publishSummaryToCscc: pulumi.Input.fromValue((map['publishSummaryToCscc']! as Map).cast<String, dynamic>()),
      publishToStackdriver: pulumi.Input.fromValue((map['publishToStackdriver']! as Map).cast<String, dynamic>()),
      saveFindings: pulumi.Input.fromValue(GooglePrivacyDlpV2SaveFindingsResponse.fromMap((map['saveFindings']! as Map).cast<String, dynamic>())),
    );
  }
}

