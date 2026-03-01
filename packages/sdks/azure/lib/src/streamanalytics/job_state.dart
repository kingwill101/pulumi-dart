// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_identity.dart';
import 'job_job_storage_account.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are `1.0`, `1.1` and `1.2`.
  ///
  /// > **Note:** Support for Compatibility Level 1.2 is dependent on a new version of the Stream Analytics API, which [being tracked in this issue](https://github.com/Azure/azure-rest-api-specs/issues/5604).
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
  /// The Job ID assigned by the Stream Analytics Job.
  final pulumi.Input<String>? jobId;
  /// The details of the job storage account. A `job_storage_account` block as defined below.
  ///
  /// > **Note:** `content_storage_policy` must be set to `JobStorageAccount` when specifying `job_storage_account`.
  final pulumi.Input<List<JobJobStorageAccount>>? jobStorageAccounts;
  /// The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are `Drop` and `Stop`. Default is `Drop`.
  final pulumi.Input<String>? outputErrorPolicy;
  /// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU Name to use for the Stream Analytics Job. Possible values are `Standard`, `StandardV2`. Defaults to `Standard`.
  final pulumi.Input<String>? skuName;
  /// The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run.
  final pulumi.Input<String>? streamAnalyticsClusterId;
  /// Specifies the number of streaming units that the streaming job uses. Supported values are `1`, `3`, `6` and multiples of `6` up to `120`. A conversion table for V2 streaming units can be found [here](https://learn.microsoft.com/azure/stream-analytics/stream-analytics-streaming-unit-consumption#understand-streaming-unit-conversions-and-where-they-apply)
  ///
  /// > **Note:** `streaming_units` must be set when `type` is `Cloud`.
  final pulumi.Input<int>? streamingUnits;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? transformationQuery;
  /// The type of the Stream Analytics Job. Possible values are `Cloud` and `Edge`. Defaults to `Cloud`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `Edge` doesn't support `stream_analytics_cluster_id` and `streaming_units`.
  final pulumi.Input<String>? type;

  /// Creates a new [JobState].
  /// [compatibilityLevel] Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are `1.0`, `1.1` and `1.2`.
  /// [contentStoragePolicy] The policy for storing stream analytics content. Possible values are `JobStorageAccount`, `SystemAccount`. Defaults to `SystemAccount`.
  /// [dataLocale] Specifies the Data Locale of the Job, which [should be a supported .NET Culture](https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx). Defaults to `en-US`.
  /// [eventsLateArrivalMaxDelayInSeconds] Specifies the maximum tolerable delay in seconds where events arriving late could be included. Supported range is `-1` (indefinite) to `1814399` (20d 23h 59m 59s). Default is `5`.
  /// [eventsOutOfOrderMaxDelayInSeconds] Specifies the maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. Supported range is `0` to `599` (9m 59s). Default is `0`.
  /// [eventsOutOfOrderPolicy] Specifies the policy which should be applied to events which arrive out of order in the input event stream. Possible values are `Adjust` and `Drop`. Default is `Adjust`.
  /// [identity] An `identity` block as defined below.
  /// [jobId] The Job ID assigned by the Stream Analytics Job.
  /// [jobStorageAccounts] The details of the job storage account. A `job_storage_account` block as defined below.
  /// [location] The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created.
  /// [name] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [outputErrorPolicy] Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are `Drop` and `Stop`. Default is `Drop`.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  /// [skuName] The SKU Name to use for the Stream Analytics Job. Possible values are `Standard`, `StandardV2`. Defaults to `Standard`.
  /// [streamAnalyticsClusterId] The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run.
  /// [streamingUnits] Specifies the number of streaming units that the streaming job uses. Supported values are `1`, `3`, `6` and multiples of `6` up to `120`. A conversion table for V2 streaming units can be found [here](https://learn.microsoft.com/azure/stream-analytics/stream-analytics-streaming-unit-consumption#understand-streaming-unit-conversions-and-where-they-apply)
  /// [tags] Optional.
  /// [transformationQuery] Optional.
  /// [type] The type of the Stream Analytics Job. Possible values are `Cloud` and `Edge`. Defaults to `Cloud`. Changing this forces a new resource to be created.
  JobState({
    pulumi.Output<String>? compatibilityLevel,
    pulumi.Output<String>? contentStoragePolicy,
    pulumi.Output<String>? dataLocale,
    pulumi.Output<int>? eventsLateArrivalMaxDelayInSeconds,
    pulumi.Output<int>? eventsOutOfOrderMaxDelayInSeconds,
    pulumi.Output<String>? eventsOutOfOrderPolicy,
    pulumi.Output<JobIdentity>? identity,
    pulumi.Output<String>? jobId,
    pulumi.Output<List<JobJobStorageAccount>>? jobStorageAccounts,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? outputErrorPolicy,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? streamAnalyticsClusterId,
    pulumi.Output<int>? streamingUnits,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transformationQuery,
    pulumi.Output<String>? type,
  }) :
      compatibilityLevel = pulumi.Input.asOptionalInput<String>(compatibilityLevel),
      contentStoragePolicy = pulumi.Input.asOptionalInput<String>(contentStoragePolicy),
      dataLocale = pulumi.Input.asOptionalInput<String>(dataLocale),
      eventsLateArrivalMaxDelayInSeconds = pulumi.Input.asOptionalInput<int>(eventsLateArrivalMaxDelayInSeconds),
      eventsOutOfOrderMaxDelayInSeconds = pulumi.Input.asOptionalInput<int>(eventsOutOfOrderMaxDelayInSeconds),
      eventsOutOfOrderPolicy = pulumi.Input.asOptionalInput<String>(eventsOutOfOrderPolicy),
      identity = pulumi.Input.asOptionalInput<JobIdentity>(identity),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      jobStorageAccounts = pulumi.Input.asOptionalInput<List<JobJobStorageAccount>>(jobStorageAccounts),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputErrorPolicy = pulumi.Input.asOptionalInput<String>(outputErrorPolicy),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      streamAnalyticsClusterId = pulumi.Input.asOptionalInput<String>(streamAnalyticsClusterId),
      streamingUnits = pulumi.Input.asOptionalInput<int>(streamingUnits),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transformationQuery = pulumi.Input.asOptionalInput<String>(transformationQuery),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': ?compatibilityLevel,
      'contentStoragePolicy': ?contentStoragePolicy,
      'dataLocale': ?dataLocale,
      'eventsLateArrivalMaxDelayInSeconds': ?eventsLateArrivalMaxDelayInSeconds,
      'eventsOutOfOrderMaxDelayInSeconds': ?eventsOutOfOrderMaxDelayInSeconds,
      'eventsOutOfOrderPolicy': ?eventsOutOfOrderPolicy,
      'identity': ?pulumi.Input.mapOptionalInputValue<JobIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'jobId': ?jobId,
      'jobStorageAccounts': ?pulumi.Input.mapOptionalInputValue<List<JobJobStorageAccount>, List<Map<String, dynamic>>>(jobStorageAccounts, (value) => pulumi.Input.encodeList<JobJobStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'outputErrorPolicy': ?outputErrorPolicy,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'streamAnalyticsClusterId': ?streamAnalyticsClusterId,
      'streamingUnits': ?streamingUnits,
      'tags': ?tags,
      'transformationQuery': ?transformationQuery,
      'type': ?type,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      compatibilityLevel: map['compatibilityLevel'] == null ? null : pulumi.Output.create<String>(map['compatibilityLevel'] as String),
      contentStoragePolicy: map['contentStoragePolicy'] == null ? null : pulumi.Output.create<String>(map['contentStoragePolicy'] as String),
      dataLocale: map['dataLocale'] == null ? null : pulumi.Output.create<String>(map['dataLocale'] as String),
      eventsLateArrivalMaxDelayInSeconds: map['eventsLateArrivalMaxDelayInSeconds'] == null ? null : pulumi.Output.create<int>(map['eventsLateArrivalMaxDelayInSeconds'] as int),
      eventsOutOfOrderMaxDelayInSeconds: map['eventsOutOfOrderMaxDelayInSeconds'] == null ? null : pulumi.Output.create<int>(map['eventsOutOfOrderMaxDelayInSeconds'] as int),
      eventsOutOfOrderPolicy: map['eventsOutOfOrderPolicy'] == null ? null : pulumi.Output.create<String>(map['eventsOutOfOrderPolicy'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<JobIdentity>(JobIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      jobStorageAccounts: map['jobStorageAccounts'] == null ? null : pulumi.Output.create<List<JobJobStorageAccount>>(pulumi.Input.decodeList<JobJobStorageAccount>(map['jobStorageAccounts'], (value) => JobJobStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputErrorPolicy: map['outputErrorPolicy'] == null ? null : pulumi.Output.create<String>(map['outputErrorPolicy'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      streamAnalyticsClusterId: map['streamAnalyticsClusterId'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsClusterId'] as String),
      streamingUnits: map['streamingUnits'] == null ? null : pulumi.Output.create<int>(map['streamingUnits'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transformationQuery: map['transformationQuery'] == null ? null : pulumi.Output.create<String>(map['transformationQuery'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

