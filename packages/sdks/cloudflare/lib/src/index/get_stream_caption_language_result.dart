// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamCaptionLanguage.
class GetStreamCaptionLanguageResult {
  /// Identifier.
  final String? accountId;
  /// Whether the caption was generated via AI.
  final bool? generated;
  /// A Cloudflare-generated unique identifier for a media item.
  final String? identifier;
  /// The language label displayed in the native language to users.
  final String? label;
  /// The language tag in BCP 47 format.
  final String? language;
  /// The status of a generated caption.
  /// Available values: "ready", "inprogress", "error".
  final String? status;

  /// Creates a new [GetStreamCaptionLanguageResult].
  /// [accountId] Identifier.
  /// [generated] Whether the caption was generated via AI.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [label] The language label displayed in the native language to users.
  /// [language] The language tag in BCP 47 format.
  /// [status] The status of a generated caption.
  const GetStreamCaptionLanguageResult({
    this.accountId,
    this.generated,
    this.identifier,
    this.label,
    this.language,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'generated': ?generated,
      'identifier': ?identifier,
      'label': ?label,
      'language': ?language,
      'status': ?status,
    };
  }

  factory GetStreamCaptionLanguageResult.fromMap(Map<String, dynamic> map) {
    return GetStreamCaptionLanguageResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generated: (() { final guardedValue = map['generated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
