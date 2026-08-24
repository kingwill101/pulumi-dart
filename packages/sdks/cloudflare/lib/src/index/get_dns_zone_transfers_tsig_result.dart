// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsZoneTransfersTsig.
class GetDnsZoneTransfersTsigResult {
  final String? accountId;
  /// TSIG algorithm.
  final String? algo;
  /// The ID of this resource.
  final String? id;
  /// TSIG key name.
  final String? name;
  /// TSIG secret.
  final String? secret;
  final String? tsigId;

  /// Creates a new [GetDnsZoneTransfersTsigResult].
  /// [accountId] Optional.
  /// [algo] TSIG algorithm.
  /// [id] The ID of this resource.
  /// [name] TSIG key name.
  /// [secret] TSIG secret.
  /// [tsigId] Optional.
  const GetDnsZoneTransfersTsigResult({
    this.accountId,
    this.algo,
    this.id,
    this.name,
    this.secret,
    this.tsigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'algo': ?algo,
      'id': ?id,
      'name': ?name,
      'secret': ?secret,
      'tsigId': ?tsigId,
    };
  }

  factory GetDnsZoneTransfersTsigResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersTsigResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      algo: (() { final guardedValue = map['algo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tsigId: (() { final guardedValue = map['tsigId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
