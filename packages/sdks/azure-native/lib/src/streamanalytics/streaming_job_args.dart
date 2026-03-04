// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_info.dart';
import 'function_streamanalytics.dart';
import 'identity.dart';
import 'input_streamanalytics.dart';
import 'job_storage_account.dart';
import 'output_streamanalytics.dart';
import 'sku.dart';
import 'transformation.dart';

/// {@template pulumi_streamanalytics_streaming_job_args_doc}
/// The set of arguments for StreamingJob.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_streaming_job_args_doc}
class StreamingJobArgs {
  /// The cluster which streaming jobs will run on.
  final pulumi.Input<ClusterInfo>? cluster;

  /// Controls certain runtime behaviors of the streaming job.
  final pulumi.Input<String>? compatibilityLevel;

  /// Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
  final pulumi.Input<String>? contentStoragePolicy;

  /// The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified.
  final pulumi.Input<String>? dataLocale;

  /// The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1.
  final pulumi.Input<int>? eventsLateArrivalMaxDelayInSeconds;

  /// The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  final pulumi.Input<int>? eventsOutOfOrderMaxDelayInSeconds;

  /// Indicates the policy to apply to events that arrive out of order in the input event stream.
  final pulumi.Input<String>? eventsOutOfOrderPolicy;

  /// A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  final pulumi.Input<List<FunctionStreamanalytics>>? functions;

  /// Describes the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs.
  final pulumi.Input<Identity>? identity;

  /// A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input.
  final pulumi.Input<List<InputStreamanalytics>>? inputs;

  /// The name of the streaming job.
  final pulumi.Input<String>? jobName;

  /// The properties that are associated with an Azure Storage account with MSI
  final pulumi.Input<JobStorageAccount>? jobStorageAccount;

  /// Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
  final pulumi.Input<String>? jobType;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
  final pulumi.Input<String>? outputErrorPolicy;

  /// This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
  final pulumi.Input<String>? outputStartMode;

  /// Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime.
  final pulumi.Input<String>? outputStartTime;

  /// A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output.
  final pulumi.Input<List<OutputStreamanalytics>>? outputs;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<Sku>? sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  final pulumi.Input<Transformation>? transformation;

  /// Creates a new [StreamingJobArgs].
  /// [cluster] The cluster which streaming jobs will run on.
  /// [compatibilityLevel] Controls certain runtime behaviors of the streaming job.
  /// [contentStoragePolicy] Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
  /// [dataLocale] The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified.
  /// [eventsLateArrivalMaxDelayInSeconds] The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1.
  /// [eventsOutOfOrderMaxDelayInSeconds] The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  /// [eventsOutOfOrderPolicy] Indicates the policy to apply to events that arrive out of order in the input event stream.
  /// [functions] A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  /// [identity] Describes the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs.
  /// [inputs] A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input.
  /// [jobName] The name of the streaming job.
  /// [jobStorageAccount] The properties that are associated with an Azure Storage account with MSI
  /// [jobType] Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
  /// [location] The geo-location where the resource lives
  /// [outputErrorPolicy] Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
  /// [outputStartMode] This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
  /// [outputStartTime] Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime.
  /// [outputs] A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests.
  /// [tags] Resource tags.
  /// [transformation] Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  StreamingJobArgs({
    this.cluster,
    this.compatibilityLevel,
    this.contentStoragePolicy,
    this.dataLocale,
    this.eventsLateArrivalMaxDelayInSeconds,
    this.eventsOutOfOrderMaxDelayInSeconds,
    this.eventsOutOfOrderPolicy,
    this.functions,
    this.identity,
    this.inputs,
    this.jobName,
    this.jobStorageAccount,
    this.jobType,
    this.location,
    this.outputErrorPolicy,
    this.outputStartMode,
    this.outputStartTime,
    this.outputs,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.transformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterInfo,
            Map<String, dynamic>
          >(cluster, (value) => value.toMap()),
      'compatibilityLevel': ?compatibilityLevel,
      'contentStoragePolicy': ?contentStoragePolicy,
      'dataLocale': ?dataLocale,
      'eventsLateArrivalMaxDelayInSeconds': ?eventsLateArrivalMaxDelayInSeconds,
      'eventsOutOfOrderMaxDelayInSeconds': ?eventsOutOfOrderMaxDelayInSeconds,
      'eventsOutOfOrderPolicy': ?eventsOutOfOrderPolicy,
      'functions': ?functions,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(
            identity,
            (value) => value.toMap(),
          ),
      'inputs': ?inputs,
      'jobName': ?jobName,
      'jobStorageAccount':
          ?pulumi.Input.mapOptionalInputValue<
            JobStorageAccount,
            Map<String, dynamic>
          >(jobStorageAccount, (value) => value.toMap()),
      'jobType': ?jobType,
      'location': ?location,
      'outputErrorPolicy': ?outputErrorPolicy,
      'outputStartMode': ?outputStartMode,
      'outputStartTime': ?outputStartTime,
      'outputs': ?outputs,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
      'transformation':
          ?pulumi.Input.mapOptionalInputValue<
            Transformation,
            Map<String, dynamic>
          >(transformation, (value) => value.toMap()),
    };
  }

  factory StreamingJobArgs.fromMap(Map<String, dynamic> map) {
    return StreamingJobArgs(
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterInfo.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
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
      functions: (() {
        final guardedValue = map['functions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<FunctionStreamanalytics>(),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Identity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      inputs: (() {
        final guardedValue = map['inputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<InputStreamanalytics>(),
        );
      })(),
      jobName: (() {
        final guardedValue = map['jobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobStorageAccount: (() {
        final guardedValue = map['jobStorageAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobStorageAccount.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jobType: (() {
        final guardedValue = map['jobType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputErrorPolicy: (() {
        final guardedValue = map['outputErrorPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputStartMode: (() {
        final guardedValue = map['outputStartMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputStartTime: (() {
        final guardedValue = map['outputStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputs: (() {
        final guardedValue = map['outputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<OutputStreamanalytics>(),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transformation: (() {
        final guardedValue = map['transformation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Transformation.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
