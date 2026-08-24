// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_directory_services_result.dart';

/// Result data returned by getConnectivityDirectoryServices.
class GetConnectivityDirectoryServicesInvokeResult {
  /// Account identifier
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetConnectivityDirectoryServicesResult>? results;
  /// Available values: "tcp", "http".
  final String? type;

  /// Creates a new [GetConnectivityDirectoryServicesInvokeResult].
  /// [accountId] Account identifier
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [type] Available values: "tcp", "http".
  const GetConnectivityDirectoryServicesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectivityDirectoryServicesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetConnectivityDirectoryServicesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServicesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectivityDirectoryServicesResult>(guardedValue, (value) => GetConnectivityDirectoryServicesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
