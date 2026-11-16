// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_log_explorer_datasets_get_log_explorer_datasets_args_doc}
/// Arguments for getLogExplorerDatasets.
/// {@endtemplate}
/// {@macro pulumi_index_get_log_explorer_datasets_get_log_explorer_datasets_args_doc}
class GetLogExplorerDatasetsArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Set to true to include zone-scoped datasets belonging to this account. Only supported with account_id.
  final pulumi.Input<bool?>? includeZones;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetLogExplorerDatasetsArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [includeZones] Set to true to include zone-scoped datasets belonging to this account. Only supported with account_id.
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetLogExplorerDatasetsArgs({
    this.accountId,
    this.includeZones,
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'includeZones': ?includeZones,
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetLogExplorerDatasetsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogExplorerDatasetsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeZones: (() { final guardedValue = map['includeZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
