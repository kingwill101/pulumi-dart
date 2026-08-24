// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_custom_csrs_get_custom_csrs_args_doc}
/// Arguments for getCustomCsrs.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_csrs_get_custom_csrs_args_doc}
class GetCustomCsrsArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomCsrsArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetCustomCsrsArgs({
    this.accountId,
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomCsrsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomCsrsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
