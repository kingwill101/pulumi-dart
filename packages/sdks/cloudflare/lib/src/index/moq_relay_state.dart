// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'moq_relay_config.dart';

/// Input properties used for looking up and filtering MoqRelay resources.
class MoqRelayState {
  /// Cloudflare account identifier.
  final pulumi.Input<String?>? accountId;
  /// upstreams and lingeringSubscribe are mutually exclusive.
  final pulumi.Input<MoqRelayConfig?>? config;
  final pulumi.Input<String?>? created;
  final pulumi.Input<String?>? modified;
  /// Human-readable name for the relay.
  final pulumi.Input<String?>? name;
  /// "connected" when active, omitted otherwise.
  /// Available values: "connected".
  final pulumi.Input<String?>? status;
  /// Full access token (publish + subscribe). Treat as sensitive.
  final pulumi.Input<String?>? tokenPublishSubscribe;
  /// Subscribe-only token. Treat as sensitive.
  final pulumi.Input<String?>? tokenSubscribe;
  /// Server-generated unique identifier (32 hex chars).
  final pulumi.Input<String?>? uid;

  /// Creates a new [MoqRelayState].
  /// [accountId] Cloudflare account identifier.
  /// [config] upstreams and lingeringSubscribe are mutually exclusive.
  /// [created] Optional.
  /// [modified] Optional.
  /// [name] Human-readable name for the relay.
  /// [status] "connected" when active, omitted otherwise.
  /// [tokenPublishSubscribe] Full access token (publish + subscribe). Treat as sensitive.
  /// [tokenSubscribe] Subscribe-only token. Treat as sensitive.
  /// [uid] Server-generated unique identifier (32 hex chars).
  const MoqRelayState({
    this.accountId,
    this.config,
    this.created,
    this.modified,
    this.name,
    this.status,
    this.tokenPublishSubscribe,
    this.tokenSubscribe,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<MoqRelayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'created': ?created,
      'modified': ?modified,
      'name': ?name,
      'status': ?status,
      'tokenPublishSubscribe': ?tokenPublishSubscribe,
      'tokenSubscribe': ?tokenSubscribe,
      'uid': ?uid,
    };
  }

  factory MoqRelayState.fromMap(Map<String, dynamic> map) {
    return MoqRelayState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MoqRelayConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenPublishSubscribe: (() { final guardedValue = map['tokenPublishSubscribe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenSubscribe: (() { final guardedValue = map['tokenSubscribe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
