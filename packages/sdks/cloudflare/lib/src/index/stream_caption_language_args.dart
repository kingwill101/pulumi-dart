// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stream_caption_language_stream_caption_language_args_doc}
/// The set of arguments for StreamCaptionLanguage.
/// {@endtemplate}
/// {@macro pulumi_index_stream_caption_language_stream_caption_language_args_doc}
class StreamCaptionLanguageArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The WebVTT file containing the caption or subtitle content.
  final pulumi.Input<String?>? file;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> identifier;
  /// The language tag in BCP 47 format.
  final pulumi.Input<String> language;

  /// Creates a new [StreamCaptionLanguageArgs].
  /// [accountId] Identifier.
  /// [file] The WebVTT file containing the caption or subtitle content.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [language] The language tag in BCP 47 format.
  const StreamCaptionLanguageArgs({
    required this.accountId,
    this.file,
    required this.identifier,
    required this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'file': ?file,
      'identifier': identifier,
      'language': language,
    };
  }

  factory StreamCaptionLanguageArgs.fromMap(Map<String, dynamic> map) {
    return StreamCaptionLanguageArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      language: pulumi.Input.fromValue(map['language'] as String),
    );
  }
}
