// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_lists_get_zero_trust_lists_args_doc}
/// Arguments for getZeroTrustLists.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_lists_get_zero_trust_lists_args_doc}
class GetZeroTrustListsArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  final pulumi.Input<String?>? type;

  /// Creates a new [GetZeroTrustListsArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [type] Specify the list type.
  const GetZeroTrustListsArgs({
    this.accountId,
    this.maxItems,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'type': ?type,
    };
  }

  factory GetZeroTrustListsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustListsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
