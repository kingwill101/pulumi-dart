// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnsZoneTransfersTsig resources.
class DnsZoneTransfersTsigState {
  final pulumi.Input<String?>? accountId;
  /// TSIG algorithm.
  final pulumi.Input<String?>? algo;
  /// TSIG key name.
  final pulumi.Input<String?>? name;
  /// TSIG secret.
  final pulumi.Input<String?>? secret;

  /// Creates a new [DnsZoneTransfersTsigState].
  /// [accountId] Optional.
  /// [algo] TSIG algorithm.
  /// [name] TSIG key name.
  /// [secret] TSIG secret.
  const DnsZoneTransfersTsigState({
    this.accountId,
    this.algo,
    this.name,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'algo': ?algo,
      'name': ?name,
      'secret': ?secret,
    };
  }

  factory DnsZoneTransfersTsigState.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersTsigState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      algo: (() { final guardedValue = map['algo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
