// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBotnetFeedConfigAsn.
class GetBotnetFeedConfigAsnResult {
  /// Identifier.
  final String? accountId;
  final int? asn;

  /// Creates a new [GetBotnetFeedConfigAsnResult].
  /// [accountId] Identifier.
  /// [asn] Optional.
  const GetBotnetFeedConfigAsnResult({
    this.accountId,
    this.asn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'asn': ?asn,
    };
  }

  factory GetBotnetFeedConfigAsnResult.fromMap(Map<String, dynamic> map) {
    return GetBotnetFeedConfigAsnResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
