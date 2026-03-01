// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_action_deidentify.dart';
import 'prevention_job_trigger_inspect_job_action_pub_sub.dart';
import 'prevention_job_trigger_inspect_job_action_save_findings.dart';

class PreventionJobTriggerInspectJobAction {
  /// Create a de-identified copy of the requested table or files.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionDeidentify? deidentify;
  /// Sends an email when the job completes. The email goes to IAM project owners and technical Essential Contacts.
  final Map<String, dynamic>? jobNotificationEmails;
  /// Publish a message into a given Pub/Sub topic when the job completes.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionPubSub? pubSub;
  /// (Optional, Deprecated)
  /// Publish findings of a DlpJob to Data Catalog.
  ///
  /// > **Warning:** `publish_findings_to_cloud_data_catalog` is deprecated and will be removed in a future major release. To publish findings to Dataplex Catalog, use `publish_findings_to_dataplex_catalog` instead.
  final Map<String, dynamic>? publishFindingsToCloudDataCatalog;
  /// Publish findings of a DlpJob as an aspect to Dataplex Universal Catalog.
  final Map<String, dynamic>? publishFindingsToDataplexCatalog;
  /// Publish the result summary of a DlpJob to the Cloud Security Command Center.
  final Map<String, dynamic>? publishSummaryToCscc;
  /// Enable Stackdriver metric dlp.googleapis.com/findingCount.
  final Map<String, dynamic>? publishToStackdriver;
  /// If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionSaveFindings? saveFindings;

  /// Creates a new [PreventionJobTriggerInspectJobAction].
  /// [deidentify] Create a de-identified copy of the requested table or files.
  /// [jobNotificationEmails] Sends an email when the job completes. The email goes to IAM project owners and technical Essential Contacts.
  /// [pubSub] Publish a message into a given Pub/Sub topic when the job completes.
  /// [publishFindingsToCloudDataCatalog] (Optional, Deprecated)
  /// [publishFindingsToDataplexCatalog] Publish findings of a DlpJob as an aspect to Dataplex Universal Catalog.
  /// [publishSummaryToCscc] Publish the result summary of a DlpJob to the Cloud Security Command Center.
  /// [publishToStackdriver] Enable Stackdriver metric dlp.googleapis.com/findingCount.
  /// [saveFindings] If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
  PreventionJobTriggerInspectJobAction({
    this.deidentify,
    this.jobNotificationEmails,
    this.pubSub,
    this.publishFindingsToCloudDataCatalog,
    this.publishFindingsToDataplexCatalog,
    this.publishSummaryToCscc,
    this.publishToStackdriver,
    this.saveFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentify': ?deidentify == null ? null : deidentify!.toMap(),
      'jobNotificationEmails': ?jobNotificationEmails,
      'pubSub': ?pubSub == null ? null : pubSub!.toMap(),
      'publishFindingsToCloudDataCatalog': ?publishFindingsToCloudDataCatalog,
      'publishFindingsToDataplexCatalog': ?publishFindingsToDataplexCatalog,
      'publishSummaryToCscc': ?publishSummaryToCscc,
      'publishToStackdriver': ?publishToStackdriver,
      'saveFindings': ?saveFindings == null ? null : saveFindings!.toMap(),
    };
  }

  factory PreventionJobTriggerInspectJobAction.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobAction(
      deidentify: map['deidentify'] == null ? null : PreventionJobTriggerInspectJobActionDeidentify.fromMap((map['deidentify'] as Map).cast<String, dynamic>()),
      jobNotificationEmails: map['jobNotificationEmails'] == null ? null : (map['jobNotificationEmails'] as Map).cast<String, dynamic>(),
      pubSub: map['pubSub'] == null ? null : PreventionJobTriggerInspectJobActionPubSub.fromMap((map['pubSub'] as Map).cast<String, dynamic>()),
      publishFindingsToCloudDataCatalog: map['publishFindingsToCloudDataCatalog'] == null ? null : (map['publishFindingsToCloudDataCatalog'] as Map).cast<String, dynamic>(),
      publishFindingsToDataplexCatalog: map['publishFindingsToDataplexCatalog'] == null ? null : (map['publishFindingsToDataplexCatalog'] as Map).cast<String, dynamic>(),
      publishSummaryToCscc: map['publishSummaryToCscc'] == null ? null : (map['publishSummaryToCscc'] as Map).cast<String, dynamic>(),
      publishToStackdriver: map['publishToStackdriver'] == null ? null : (map['publishToStackdriver'] as Map).cast<String, dynamic>(),
      saveFindings: map['saveFindings'] == null ? null : PreventionJobTriggerInspectJobActionSaveFindings.fromMap((map['saveFindings'] as Map).cast<String, dynamic>()),
    );
  }
}

