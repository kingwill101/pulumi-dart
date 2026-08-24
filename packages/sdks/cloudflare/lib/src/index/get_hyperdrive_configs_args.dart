// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_hyperdrive_configs_get_hyperdrive_configs_args_doc}
/// Arguments for getHyperdriveConfigs.
/// {@endtemplate}
/// {@macro pulumi_index_get_hyperdrive_configs_get_hyperdrive_configs_args_doc}
class GetHyperdriveConfigsArgs {
  /// Define configurations using a unique string identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetHyperdriveConfigsArgs].
  /// [accountId] Define configurations using a unique string identifier.
  /// [maxItems] Max items to fetch, default: 1000
  const GetHyperdriveConfigsArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetHyperdriveConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
