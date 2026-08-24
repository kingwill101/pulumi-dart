// ignore_for_file: unused_element, unnecessary_cast

import 'get_moq_relay_config.dart';
import 'get_moq_relay_filter.dart';

/// Result data returned by getMoqRelay.
class GetMoqRelayResult {
  /// Cloudflare account identifier.
  final String? accountId;
  /// upstreams and lingeringSubscribe are mutually exclusive.
  final GetMoqRelayConfig? config;
  final String? created;
  final GetMoqRelayFilter? filter;
  /// The ID of this resource.
  final String? id;
  final String? modified;
  final String? name;
  final String? relayId;
  /// "connected" when active, omitted otherwise.
  /// Available values: "connected".
  final String? status;
  final String? uid;

  /// Creates a new [GetMoqRelayResult].
  /// [accountId] Cloudflare account identifier.
  /// [config] upstreams and lingeringSubscribe are mutually exclusive.
  /// [created] Optional.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [modified] Optional.
  /// [name] Optional.
  /// [relayId] Optional.
  /// [status] "connected" when active, omitted otherwise.
  /// [uid] Optional.
  const GetMoqRelayResult({
    this.accountId,
    this.config,
    this.created,
    this.filter,
    this.id,
    this.modified,
    this.name,
    this.relayId,
    this.status,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?config?.toMap(),
      'created': ?created,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'modified': ?modified,
      'name': ?name,
      'relayId': ?relayId,
      'status': ?status,
      'uid': ?uid,
    };
  }

  factory GetMoqRelayResult.fromMap(Map<String, dynamic> map) {
    return GetMoqRelayResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return GetMoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetMoqRelayFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relayId: (() { final guardedValue = map['relayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
