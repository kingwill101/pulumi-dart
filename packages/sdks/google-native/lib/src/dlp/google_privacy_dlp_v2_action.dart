// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify.dart';
import 'google_privacy_dlp_v2_publish_to_pub_sub.dart';
import 'google_privacy_dlp_v2_save_findings.dart';

/// A task to execute on the completion of a job. See https://cloud.google.com/dlp/docs/concepts-actions to learn more.
class GooglePrivacyDlpV2Action {
  /// Create a de-identified copy of the input data.
  final pulumi.Input<GooglePrivacyDlpV2Deidentify>? deidentify;
  /// Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  final pulumi.Input<Map<String, dynamic>>? jobNotificationEmails;
  /// Publish a notification to a Pub/Sub topic.
  final pulumi.Input<GooglePrivacyDlpV2PublishToPubSub>? pubSub;
  /// Publish findings to Cloud Datahub.
  final pulumi.Input<Map<String, dynamic>>? publishFindingsToCloudDataCatalog;
  /// Publish summary to Cloud Security Command Center (Alpha).
  final pulumi.Input<Map<String, dynamic>>? publishSummaryToCscc;
  /// Enable Stackdriver metric dlp.googleapis.com/finding_count.
  final pulumi.Input<Map<String, dynamic>>? publishToStackdriver;
  /// Save resulting findings in a provided location.
  final pulumi.Input<GooglePrivacyDlpV2SaveFindings>? saveFindings;

  /// Creates a new [GooglePrivacyDlpV2Action].
  /// [deidentify] Create a de-identified copy of the input data.
  /// [jobNotificationEmails] Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  /// [pubSub] Publish a notification to a Pub/Sub topic.
  /// [publishFindingsToCloudDataCatalog] Publish findings to Cloud Datahub.
  /// [publishSummaryToCscc] Publish summary to Cloud Security Command Center (Alpha).
  /// [publishToStackdriver] Enable Stackdriver metric dlp.googleapis.com/finding_count.
  /// [saveFindings] Save resulting findings in a provided location.
  GooglePrivacyDlpV2Action({
    this.deidentify,
    this.jobNotificationEmails,
    this.pubSub,
    this.publishFindingsToCloudDataCatalog,
    this.publishSummaryToCscc,
    this.publishToStackdriver,
    this.saveFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentify': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Deidentify, Map<String, dynamic>>(deidentify, (value) => value.toMap()),
      'jobNotificationEmails': ?jobNotificationEmails,
      'pubSub': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2PublishToPubSub, Map<String, dynamic>>(pubSub, (value) => value.toMap()),
      'publishFindingsToCloudDataCatalog': ?publishFindingsToCloudDataCatalog,
      'publishSummaryToCscc': ?publishSummaryToCscc,
      'publishToStackdriver': ?publishToStackdriver,
      'saveFindings': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2SaveFindings, Map<String, dynamic>>(saveFindings, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2Action.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Action(
      deidentify: (() { final guardedValue = map['deidentify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Deidentify.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobNotificationEmails: (() { final guardedValue = map['jobNotificationEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      pubSub: (() { final guardedValue = map['pubSub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2PublishToPubSub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publishFindingsToCloudDataCatalog: (() { final guardedValue = map['publishFindingsToCloudDataCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      publishSummaryToCscc: (() { final guardedValue = map['publishSummaryToCscc']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      publishToStackdriver: (() { final guardedValue = map['publishToStackdriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      saveFindings: (() { final guardedValue = map['saveFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2SaveFindings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

