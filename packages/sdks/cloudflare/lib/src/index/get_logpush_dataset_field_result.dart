// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogpushDatasetField.
class GetLogpushDatasetFieldResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
  /// Available values: "access*requests", "account*abuse*protection*events", "audit*logs", "audit*logs*v2", "biso*user*actions", "casb*findings", "device*posture*results", "dex*application*tests", "dex*device*state*events", "dlp*forensic*copies", "dns*firewall*logs", "dns*logs", "email*security*alerts", "email*security*post*delivery*events", "firewall*events", "gateway*dns", "gateway*http", "gateway*network", "http*requests", "ipsec*logs", "magic*bgp*logs", "magic*ids*detections", "mcp*portal*logs", "mnm*flow*logs", "nel*reports", "network*analytics*logs", "page*shield*events", "sinkhole*http*logs", "spectrum*events", "ssh*logs", "turnstile*events", "warp*config*changes", "warp*toggle*changes", "websocket*analytics", "workers*trace*events", "zaraz*events", "zero*trust*network_sessions".
  final String? datasetId;
  final Map<String, String>? fields;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetLogpushDatasetFieldResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [datasetId] Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
  /// [fields] Optional.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetLogpushDatasetFieldResult({
    this.accountId,
    this.datasetId,
    this.fields,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'datasetId': ?datasetId,
      'fields': ?fields,
      'zoneId': ?zoneId,
    };
  }

  factory GetLogpushDatasetFieldResult.fromMap(Map<String, dynamic> map) {
    return GetLogpushDatasetFieldResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
