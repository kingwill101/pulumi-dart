// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_hyperdrive_config_get_hyperdrive_config_args_doc}
/// Arguments for getHyperdriveConfig.
/// {@endtemplate}
/// {@macro pulumi_index_get_hyperdrive_config_get_hyperdrive_config_args_doc}
class GetHyperdriveConfigArgs {
  /// Define configurations using a unique string identifier.
  final pulumi.Input<String?>? accountId;
  /// Define configurations using a unique string identifier.
  final pulumi.Input<String> hyperdriveId;

  /// Creates a new [GetHyperdriveConfigArgs].
  /// [accountId] Define configurations using a unique string identifier.
  /// [hyperdriveId] Define configurations using a unique string identifier.
  const GetHyperdriveConfigArgs({
    this.accountId,
    required this.hyperdriveId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'hyperdriveId': hyperdriveId,
    };
  }

  factory GetHyperdriveConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hyperdriveId: pulumi.Input.fromValue(map['hyperdriveId'] as String),
    );
  }
}
