// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_identity.dart';
import 'job_job_storage_account.dart';

/// {@template pulumi_streamanalytics_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_job_job_args_doc}
class JobArgs {
  /// Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are `1.0`, `1.1` and `1.2`.
  ///
  /// &gt; **Note:** Support for Compatibility Level 1.2 is dependent on a new version of the Stream Analytics API, which [being tracked in this issue](https://github.com/Azure/azure-rest-api-specs/issues/5604).
  final pulumi.Input<String>? compatibilityLevel;

  /// The policy for storing stream analytics content. Possible values are `JobStorageAccount`, `SystemAccount`. Defaults to `SystemAccount`.
  final pulumi.Input<String>? contentStoragePolicy;

  /// Specifies the Data Locale of the Job, which [should be a supported .NET Culture](https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx). Defaults to `en-US`.
  final pulumi.Input<String>? dataLocale;

  /// Specifies the maximum tolerable delay in seconds where events arriving late could be included. Supported range is `-1` (indefinite) to `1814399` (20d 23h 59m 59s). Default is `5`.
  final pulumi.Input<int>? eventsLateArrivalMaxDelayInSeconds;

  /// Specifies the maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. Supported range is `0` to `599` (9m 59s). Default is `0`.
  final pulumi.Input<int>? eventsOutOfOrderMaxDelayInSeconds;

  /// Specifies the policy which should be applied to events which arrive out of order in the input event stream. Possible values are `Adjust` and `Drop`. Default is `Adjust`.
  final pulumi.Input<String>? eventsOutOfOrderPolicy;

  /// An `identity` block as defined below.
  final pulumi.Input<JobIdentity>? identity;

  /// The details of the job storage account. A `job_storage_account` block as defined below.
  ///
  /// &gt; **Note:** `content_storage_policy` must be set to `JobStorageAccount` when specifying `job_storage_account`.
  final pulumi.Input<List<JobJobStorageAccount>>? jobStorageAccounts;

  /// The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are `Drop` and `Stop`. Default is `Drop`.
  final pulumi.Input<String>? outputErrorPolicy;

  /// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The SKU Name to use for the Stream Analytics Job. Possible values are `Standard`, `StandardV2`. Defaults to `Standard`.
  final pulumi.Input<String>? skuName;

  /// The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run.
  final pulumi.Input<String>? streamAnalyticsClusterId;

  /// Specifies the number of streaming units that the streaming job uses. Supported values are `1`, `3`, `6` and multiples of `6` up to `120`. A conversion table for V2 streaming units can be found [here](https://learn.microsoft.com/azure/stream-analytics/stream-analytics-streaming-unit-consumption#understand-streaming-unit-conversions-and-where-they-apply)
  ///
  /// &gt; **Note:** `streaming_units` must be set when `type` is `Cloud`.
  final pulumi.Input<int>? streamingUnits;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String> transformationQuery;

  /// The type of the Stream Analytics Job. Possible values are `Cloud` and `Edge`. Defaults to `Cloud`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `Edge` doesn't support `stream_analytics_cluster_id` and `streaming_units`.
  final pulumi.Input<String>? type;

  /// Creates a new [JobArgs].
  /// [compatibilityLevel] Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are `1.0`, `1.1` and `1.2`.
  /// [contentStoragePolicy] The policy for storing stream analytics content. Possible values are `JobStorageAccount`, `SystemAccount`. Defaults to `SystemAccount`.
  /// [dataLocale] Specifies the Data Locale of the Job, which [should be a supported .NET Culture](https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx). Defaults to `en-US`.
  /// [eventsLateArrivalMaxDelayInSeconds] Specifies the maximum tolerable delay in seconds where events arriving late could be included. Supported range is `-1` (indefinite) to `1814399` (20d 23h 59m 59s). Default is `5`.
  /// [eventsOutOfOrderMaxDelayInSeconds] Specifies the maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. Supported range is `0` to `599` (9m 59s). Default is `0`.
  /// [eventsOutOfOrderPolicy] Specifies the policy which should be applied to events which arrive out of order in the input event stream. Possible values are `Adjust` and `Drop`. Default is `Adjust`.
  /// [identity] An `identity` block as defined below.
  /// [jobStorageAccounts] The details of the job storage account. A `job_storage_account` block as defined below.
  /// [location] The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created.
  /// [name] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [outputErrorPolicy] Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are `Drop` and `Stop`. Default is `Drop`.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  /// [skuName] The SKU Name to use for the Stream Analytics Job. Possible values are `Standard`, `StandardV2`. Defaults to `Standard`.
  /// [streamAnalyticsClusterId] The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run.
  /// [streamingUnits] Specifies the number of streaming units that the streaming job uses. Supported values are `1`, `3`, `6` and multiples of `6` up to `120`. A conversion table for V2 streaming units can be found [here](https://learn.microsoft.com/azure/stream-analytics/stream-analytics-streaming-unit-consumption#understand-streaming-unit-conversions-and-where-they-apply)
  /// [tags] Optional.
  /// [transformationQuery] Required.
  /// [type] The type of the Stream Analytics Job. Possible values are `Cloud` and `Edge`. Defaults to `Cloud`. Changing this forces a new resource to be created.
  JobArgs({
    this.compatibilityLevel,
    this.contentStoragePolicy,
    this.dataLocale,
    this.eventsLateArrivalMaxDelayInSeconds,
    this.eventsOutOfOrderMaxDelayInSeconds,
    this.eventsOutOfOrderPolicy,
    this.identity,
    this.jobStorageAccounts,
    this.location,
    this.name,
    this.outputErrorPolicy,
    required this.resourceGroupName,
    this.skuName,
    this.streamAnalyticsClusterId,
    this.streamingUnits,
    this.tags,
    required this.transformationQuery,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': ?compatibilityLevel,
      'contentStoragePolicy': ?contentStoragePolicy,
      'dataLocale': ?dataLocale,
      'eventsLateArrivalMaxDelayInSeconds': ?eventsLateArrivalMaxDelayInSeconds,
      'eventsOutOfOrderMaxDelayInSeconds': ?eventsOutOfOrderMaxDelayInSeconds,
      'eventsOutOfOrderPolicy': ?eventsOutOfOrderPolicy,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            JobIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'jobStorageAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobJobStorageAccount>,
            List<Map<String, dynamic>>
          >(
            jobStorageAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  JobJobStorageAccount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'location': ?location,
      'name': ?name,
      'outputErrorPolicy': ?outputErrorPolicy,
      'resourceGroupName': resourceGroupName,
      'skuName': ?skuName,
      'streamAnalyticsClusterId': ?streamAnalyticsClusterId,
      'streamingUnits': ?streamingUnits,
      'tags': ?tags,
      'transformationQuery': transformationQuery,
      'type': ?type,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      compatibilityLevel: (() {
        final guardedValue = map['compatibilityLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentStoragePolicy: (() {
        final guardedValue = map['contentStoragePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLocale: (() {
        final guardedValue = map['dataLocale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventsLateArrivalMaxDelayInSeconds: (() {
        final guardedValue = map['eventsLateArrivalMaxDelayInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      eventsOutOfOrderMaxDelayInSeconds: (() {
        final guardedValue = map['eventsOutOfOrderMaxDelayInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      eventsOutOfOrderPolicy: (() {
        final guardedValue = map['eventsOutOfOrderPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      jobStorageAccounts: (() {
        final guardedValue = map['jobStorageAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JobJobStorageAccount>(
            guardedValue,
            (value) => JobJobStorageAccount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputErrorPolicy: (() {
        final guardedValue = map['outputErrorPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      skuName: (() {
        final guardedValue = map['skuName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamAnalyticsClusterId: (() {
        final guardedValue = map['streamAnalyticsClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamingUnits: (() {
        final guardedValue = map['streamingUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transformationQuery: pulumi.Input.fromValue(
        map['transformationQuery'] as String,
      ),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
