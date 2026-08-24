// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_flagship_apps_get_flagship_apps_args_doc}
/// Arguments for getFlagshipApps.
/// {@endtemplate}
/// {@macro pulumi_index_get_flagship_apps_get_flagship_apps_args_doc}
class GetFlagshipAppsArgs {
  /// Cloudflare account ID.
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetFlagshipAppsArgs].
  /// [accountId] Cloudflare account ID.
  /// [maxItems] Max items to fetch, default: 1000
  const GetFlagshipAppsArgs({
    required this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetFlagshipAppsArgs.fromMap(Map<String, dynamic> map) {
    return GetFlagshipAppsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
