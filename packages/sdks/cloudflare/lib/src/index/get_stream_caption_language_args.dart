// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stream_caption_language_get_stream_caption_language_args_doc}
/// Arguments for getStreamCaptionLanguage.
/// {@endtemplate}
/// {@macro pulumi_index_get_stream_caption_language_get_stream_caption_language_args_doc}
class GetStreamCaptionLanguageArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> identifier;
  /// The language tag in BCP 47 format.
  final pulumi.Input<String> language;

  /// Creates a new [GetStreamCaptionLanguageArgs].
  /// [accountId] Identifier.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [language] The language tag in BCP 47 format.
  const GetStreamCaptionLanguageArgs({
    required this.accountId,
    required this.identifier,
    required this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'identifier': identifier,
      'language': language,
    };
  }

  factory GetStreamCaptionLanguageArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamCaptionLanguageArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      language: pulumi.Input.fromValue(map['language'] as String),
    );
  }
}
