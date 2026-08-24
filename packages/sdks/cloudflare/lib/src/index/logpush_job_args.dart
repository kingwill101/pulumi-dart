// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logpush_job_output_options.dart';

/// {@template pulumi_index_logpush_job_logpush_job_args_doc}
/// The set of arguments for LogpushJob.
/// {@endtemplate}
/// {@macro pulumi_index_logpush_job_logpush_job_args_doc}
class LogpushJobArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
  /// Available values: "access*requests", "audit*logs", "audit*logs*v2", "biso*user*actions", "casb*findings", "device*posture*results", "dex*application*tests", "dex*device*state*events", "dlp*forensic*copies", "dns*firewall*logs", "dns*logs", "email*security*alerts", "email*security*post*delivery*events", "firewall*events", "gateway*dns", "gateway*http", "gateway*network", "http*requests", "ipsec*logs", "magic*ids*detections", "mcp*portal*logs", "mnm*flow*logs", "nel*reports", "network*analytics*logs", "page*shield*events", "sinkhole*http*logs", "spectrum*events", "ssh*logs", "turnstile*events", "warp*config*changes", "warp*toggle*changes", "websocket*analytics", "workers*trace*events", "zaraz*events", "zero*trust*network*sessions".
  final pulumi.Input<String?>? dataset;
  /// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  final pulumi.Input<String> destinationConf;
  /// Flag that indicates if the job is enabled.
  final pulumi.Input<bool?>? enabled;
  /// The filters to select the events to include and/or remove from your logs. For more information, refer to [Filters](https://developers.cloudflare.com/logs/reference/filters/).
  final pulumi.Input<String?>? filter;
  /// This field is deprecated. Please use `max_upload_*` parameters instead. . The frequency at which Cloudflare sends batches of logs to your destination. Setting frequency to high sends your logs in larger quantities of smaller files. Setting frequency to low sends logs in smaller quantities of larger files.
  /// Available values: "high", "low".
  final pulumi.Input<String?>? frequency;
  /// The kind parameter (optional) is used to differentiate between Logpush and Edge Log Delivery jobs (when supported by the dataset).
  /// Available values: "", "edge".
  final pulumi.Input<String?>? kind;
  /// This field is deprecated. Use `outputOptions` instead. Configuration string. It specifies things like requested fields and timestamp formats. If migrating from the logpull api, copy the url (full url or just the query string) of your call here, and logpush will keep on making this call for you, setting start and end times appropriately.
  final pulumi.Input<String?>? logpullOptions;
  /// The maximum uncompressed file size of a batch of logs. This setting value must be between `5 MB` and `1 GB`, or `0` to disable it. Note that you cannot set a minimum file size; this means that log files may be much smaller than this batch size.
  final pulumi.Input<int?>? maxUploadBytes;
  /// The maximum interval in seconds for log batches. This setting must be between 30 and 300 seconds (5 minutes), or `0` to disable it. Note that you cannot specify a minimum interval for log batches; this means that log files may be sent in shorter intervals than this.
  final pulumi.Input<int?>? maxUploadIntervalSeconds;
  /// The maximum number of log lines per batch. This setting must be between 1000 and 1,000,000 lines, or `0` to disable it. Note that you cannot specify a minimum number of log lines per batch; this means that log files may contain many fewer lines than this.
  final pulumi.Input<int?>? maxUploadRecords;
  /// Optional human readable job name. Not unique. Cloudflare suggests. that you set this to a meaningful string, like the domain name, to make it easier to identify your job.
  final pulumi.Input<String?>? name;
  /// The structured replacement for `logpullOptions`. When including this field, the `logpullOption` field will be ignored.
  final pulumi.Input<LogpushJobOutputOptions?>? outputOptions;
  /// Ownership challenge token to prove destination ownership.
  final pulumi.Input<String?>? ownershipChallenge;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LogpushJobArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [dataset] Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
  /// [destinationConf] Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  /// [enabled] Flag that indicates if the job is enabled.
  /// [filter] The filters to select the events to include and/or remove from your logs. For more information, refer to [Filters](https://developers.cloudflare.com/logs/reference/filters/).
  /// [frequency] This field is deprecated. Please use `max_upload_*` parameters instead. . The frequency at which Cloudflare sends batches of logs to your destination. Setting frequency to high sends your logs in larger quantities of smaller files. Setting frequency to low sends logs in smaller quantities of larger files.
  /// [kind] The kind parameter (optional) is used to differentiate between Logpush and Edge Log Delivery jobs (when supported by the dataset).
  /// [logpullOptions] This field is deprecated. Use `outputOptions` instead. Configuration string. It specifies things like requested fields and timestamp formats. If migrating from the logpull api, copy the url (full url or just the query string) of your call here, and logpush will keep on making this call for you, setting start and end times appropriately.
  /// [maxUploadBytes] The maximum uncompressed file size of a batch of logs. This setting value must be between `5 MB` and `1 GB`, or `0` to disable it. Note that you cannot set a minimum file size; this means that log files may be much smaller than this batch size.
  /// [maxUploadIntervalSeconds] The maximum interval in seconds for log batches. This setting must be between 30 and 300 seconds (5 minutes), or `0` to disable it. Note that you cannot specify a minimum interval for log batches; this means that log files may be sent in shorter intervals than this.
  /// [maxUploadRecords] The maximum number of log lines per batch. This setting must be between 1000 and 1,000,000 lines, or `0` to disable it. Note that you cannot specify a minimum number of log lines per batch; this means that log files may contain many fewer lines than this.
  /// [name] Optional human readable job name. Not unique. Cloudflare suggests. that you set this to a meaningful string, like the domain name, to make it easier to identify your job.
  /// [outputOptions] The structured replacement for `logpullOptions`. When including this field, the `logpullOption` field will be ignored.
  /// [ownershipChallenge] Ownership challenge token to prove destination ownership.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const LogpushJobArgs({
    this.accountId,
    this.dataset,
    required this.destinationConf,
    this.enabled,
    this.filter,
    this.frequency,
    this.kind,
    this.logpullOptions,
    this.maxUploadBytes,
    this.maxUploadIntervalSeconds,
    this.maxUploadRecords,
    this.name,
    this.outputOptions,
    this.ownershipChallenge,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'dataset': ?dataset,
      'destinationConf': destinationConf,
      'enabled': ?enabled,
      'filter': ?filter,
      'frequency': ?frequency,
      'kind': ?kind,
      'logpullOptions': ?logpullOptions,
      'maxUploadBytes': ?maxUploadBytes,
      'maxUploadIntervalSeconds': ?maxUploadIntervalSeconds,
      'maxUploadRecords': ?maxUploadRecords,
      'name': ?name,
      'outputOptions': ?pulumi.Input.mapOptionalInputValue<LogpushJobOutputOptions, Map<String, dynamic>>(outputOptions, (value) => value.toMap()),
      'ownershipChallenge': ?ownershipChallenge,
      'zoneId': ?zoneId,
    };
  }

  factory LogpushJobArgs.fromMap(Map<String, dynamic> map) {
    return LogpushJobArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConf: pulumi.Input.fromValue(map['destinationConf'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logpullOptions: (() { final guardedValue = map['logpullOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxUploadBytes: (() { final guardedValue = map['maxUploadBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxUploadIntervalSeconds: (() { final guardedValue = map['maxUploadIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxUploadRecords: (() { final guardedValue = map['maxUploadRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputOptions: (() { final guardedValue = map['outputOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogpushJobOutputOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ownershipChallenge: (() { final guardedValue = map['ownershipChallenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
