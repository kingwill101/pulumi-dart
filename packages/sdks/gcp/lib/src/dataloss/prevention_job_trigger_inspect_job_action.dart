// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_action_deidentify.dart';
import 'prevention_job_trigger_inspect_job_action_pub_sub.dart';
import 'prevention_job_trigger_inspect_job_action_save_findings.dart';

class PreventionJobTriggerInspectJobAction {
  /// Create a de-identified copy of the requested table or files.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobActionDeidentify>? deidentify;
  /// Sends an email when the job completes. The email goes to IAM project owners and technical Essential Contacts.
  final pulumi.Input<Map<String, dynamic>>? jobNotificationEmails;
  /// Publish a message into a given Pub/Sub topic when the job completes.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobActionPubSub>? pubSub;
  /// (Optional, Deprecated)
  /// Publish findings of a DlpJob to Data Catalog.
  ///
  /// &gt; **Warning:** `publish_findings_to_cloud_data_catalog` is deprecated and will be removed in a future major release. To publish findings to Dataplex Catalog, use `publish_findings_to_dataplex_catalog` instead.
  final pulumi.Input<Map<String, dynamic>>? publishFindingsToCloudDataCatalog;
  /// Publish findings of a DlpJob as an aspect to Dataplex Universal Catalog.
  final pulumi.Input<Map<String, dynamic>>? publishFindingsToDataplexCatalog;
  /// Publish the result summary of a DlpJob to the Cloud Security Command Center.
  final pulumi.Input<Map<String, dynamic>>? publishSummaryToCscc;
  /// Enable Stackdriver metric dlp.googleapis.com/findingCount.
  final pulumi.Input<Map<String, dynamic>>? publishToStackdriver;
  /// If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobActionSaveFindings>? saveFindings;

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
      'deidentify': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobActionDeidentify, Map<String, dynamic>>(deidentify, (value) => value.toMap()),
      'jobNotificationEmails': ?jobNotificationEmails,
      'pubSub': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobActionPubSub, Map<String, dynamic>>(pubSub, (value) => value.toMap()),
      'publishFindingsToCloudDataCatalog': ?publishFindingsToCloudDataCatalog,
      'publishFindingsToDataplexCatalog': ?publishFindingsToDataplexCatalog,
      'publishSummaryToCscc': ?publishSummaryToCscc,
      'publishToStackdriver': ?publishToStackdriver,
      'saveFindings': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobActionSaveFindings, Map<String, dynamic>>(saveFindings, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobAction.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobAction(
      deidentify: (() { final guardedValue = map['deidentify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobActionDeidentify.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobNotificationEmails: (() { final guardedValue = map['jobNotificationEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      pubSub: (() { final guardedValue = map['pubSub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobActionPubSub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publishFindingsToCloudDataCatalog: (() { final guardedValue = map['publishFindingsToCloudDataCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      publishFindingsToDataplexCatalog: (() { final guardedValue = map['publishFindingsToDataplexCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      publishSummaryToCscc: (() { final guardedValue = map['publishSummaryToCscc']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      publishToStackdriver: (() { final guardedValue = map['publishToStackdriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      saveFindings: (() { final guardedValue = map['saveFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobActionSaveFindings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

