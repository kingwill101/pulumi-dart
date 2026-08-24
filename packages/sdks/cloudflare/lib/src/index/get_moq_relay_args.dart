// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_moq_relay_filter.dart';

/// {@template pulumi_index_get_moq_relay_get_moq_relay_args_doc}
/// Arguments for getMoqRelay.
/// {@endtemplate}
/// {@macro pulumi_index_get_moq_relay_get_moq_relay_args_doc}
class GetMoqRelayArgs {
  /// Cloudflare account identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetMoqRelayFilter?>? filter;
  final pulumi.Input<String?>? relayId;

  /// Creates a new [GetMoqRelayArgs].
  /// [accountId] Cloudflare account identifier.
  /// [filter] Optional.
  /// [relayId] Optional.
  const GetMoqRelayArgs({
    required this.accountId,
    this.filter,
    this.relayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetMoqRelayFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'relayId': ?relayId,
    };
  }

  factory GetMoqRelayArgs.fromMap(Map<String, dynamic> map) {
    return GetMoqRelayArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetMoqRelayFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relayId: (() { final guardedValue = map['relayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
