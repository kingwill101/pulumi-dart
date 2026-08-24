// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamDownload.
class GetStreamDownloadResult {
  /// Identifier.
  final String? accountId;
  /// A Cloudflare-generated unique identifier for a media item.
  final String? identifier;

  /// Creates a new [GetStreamDownloadResult].
  /// [accountId] Identifier.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  const GetStreamDownloadResult({
    this.accountId,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'identifier': ?identifier,
    };
  }

  factory GetStreamDownloadResult.fromMap(Map<String, dynamic> map) {
    return GetStreamDownloadResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
