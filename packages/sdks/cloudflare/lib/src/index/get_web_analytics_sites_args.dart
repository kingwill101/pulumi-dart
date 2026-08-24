// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_web_analytics_sites_get_web_analytics_sites_args_doc}
/// Arguments for getWebAnalyticsSites.
/// {@endtemplate}
/// {@macro pulumi_index_get_web_analytics_sites_get_web_analytics_sites_args_doc}
class GetWebAnalyticsSitesArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The property used to sort the list of results.
  /// Available values: "host", "created".
  final pulumi.Input<String?>? orderBy;

  /// Creates a new [GetWebAnalyticsSitesArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [orderBy] The property used to sort the list of results.
  const GetWebAnalyticsSitesArgs({
    this.accountId,
    this.maxItems,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
    };
  }

  factory GetWebAnalyticsSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSitesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
