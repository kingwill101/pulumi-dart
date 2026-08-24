// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'moq_relay_config.dart';

/// {@template pulumi_index_moq_relay_moq_relay_args_doc}
/// The set of arguments for MoqRelay.
/// {@endtemplate}
/// {@macro pulumi_index_moq_relay_moq_relay_args_doc}
class MoqRelayArgs {
  /// Cloudflare account identifier.
  final pulumi.Input<String> accountId;
  /// upstreams and lingeringSubscribe are mutually exclusive.
  final pulumi.Input<MoqRelayConfig?>? config;
  /// Human-readable name for the relay.
  final pulumi.Input<String> name;

  /// Creates a new [MoqRelayArgs].
  /// [accountId] Cloudflare account identifier.
  /// [config] upstreams and lingeringSubscribe are mutually exclusive.
  /// [name] Human-readable name for the relay.
  const MoqRelayArgs({
    required this.accountId,
    this.config,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<MoqRelayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': name,
    };
  }

  factory MoqRelayArgs.fromMap(Map<String, dynamic> map) {
    return MoqRelayArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
