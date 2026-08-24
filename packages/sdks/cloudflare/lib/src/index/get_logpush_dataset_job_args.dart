// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_logpush_dataset_job_get_logpush_dataset_job_args_doc}
/// Arguments for getLogpushDatasetJob.
/// {@endtemplate}
/// {@macro pulumi_index_get_logpush_dataset_job_get_logpush_dataset_job_args_doc}
class GetLogpushDatasetJobArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
  /// Available values: "access*requests", "audit*logs", "audit*logs*v2", "biso*user*actions", "casb*findings", "device*posture*results", "dex*application*tests", "dex*device*state*events", "dlp*forensic*copies", "dns*firewall*logs", "dns*logs", "email*security*alerts", "email*security*post*delivery*events", "firewall*events", "gateway*dns", "gateway*http", "gateway*network", "http*requests", "ipsec*logs", "magic*ids*detections", "mcp*portal*logs", "mnm*flow*logs", "nel*reports", "network*analytics*logs", "page*shield*events", "sinkhole*http*logs", "spectrum*events", "ssh*logs", "turnstile*events", "warp*config*changes", "warp*toggle*changes", "websocket*analytics", "workers*trace*events", "zaraz*events", "zero*trust*network*sessions".
  final pulumi.Input<String?>? datasetId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetLogpushDatasetJobArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [datasetId] Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetLogpushDatasetJobArgs({
    this.accountId,
    this.datasetId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'datasetId': ?datasetId,
      'zoneId': ?zoneId,
    };
  }

  factory GetLogpushDatasetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetLogpushDatasetJobArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
