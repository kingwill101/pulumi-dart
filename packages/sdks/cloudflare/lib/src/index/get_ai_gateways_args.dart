// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ai_gateways_get_ai_gateways_args_doc}
/// Arguments for getAiGateways.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_gateways_get_ai_gateways_args_doc}
class GetAiGatewaysArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Search by id
  final pulumi.Input<String?>? search;

  /// Creates a new [GetAiGatewaysArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [search] Search by id
  const GetAiGatewaysArgs({
    this.accountId,
    this.maxItems,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'search': ?search,
    };
  }

  factory GetAiGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
