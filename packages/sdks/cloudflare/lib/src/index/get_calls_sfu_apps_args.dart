// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_calls_sfu_apps_get_calls_sfu_apps_args_doc}
/// Arguments for getCallsSfuApps.
/// {@endtemplate}
/// {@macro pulumi_index_get_calls_sfu_apps_get_calls_sfu_apps_args_doc}
class GetCallsSfuAppsArgs {
  /// The account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetCallsSfuAppsArgs].
  /// [accountId] The account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  const GetCallsSfuAppsArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetCallsSfuAppsArgs.fromMap(Map<String, dynamic> map) {
    return GetCallsSfuAppsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
