// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web3_hostnames_result.dart';

/// Result data returned by getWeb3Hostnames.
class GetWeb3HostnamesInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetWeb3HostnamesResult>? results;
  /// Specify the identifier of the hostname.
  final String? zoneId;

  /// Creates a new [GetWeb3HostnamesInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] Specify the identifier of the hostname.
  const GetWeb3HostnamesInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWeb3HostnamesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetWeb3HostnamesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWeb3HostnamesInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWeb3HostnamesResult>(guardedValue, (value) => GetWeb3HostnamesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
