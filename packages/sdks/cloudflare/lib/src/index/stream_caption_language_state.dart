// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamCaptionLanguage resources.
class StreamCaptionLanguageState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The WebVTT file containing the caption or subtitle content.
  final pulumi.Input<String?>? file;
  /// Whether the caption was generated via AI.
  final pulumi.Input<bool?>? generated;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String?>? identifier;
  /// The language label displayed in the native language to users.
  final pulumi.Input<String?>? label;
  /// The language tag in BCP 47 format.
  final pulumi.Input<String?>? language;
  /// The status of a generated caption.
  /// Available values: "ready", "inprogress", "error".
  final pulumi.Input<String?>? status;

  /// Creates a new [StreamCaptionLanguageState].
  /// [accountId] Identifier.
  /// [file] The WebVTT file containing the caption or subtitle content.
  /// [generated] Whether the caption was generated via AI.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [label] The language label displayed in the native language to users.
  /// [language] The language tag in BCP 47 format.
  /// [status] The status of a generated caption.
  const StreamCaptionLanguageState({
    this.accountId,
    this.file,
    this.generated,
    this.identifier,
    this.label,
    this.language,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'file': ?file,
      'generated': ?generated,
      'identifier': ?identifier,
      'label': ?label,
      'language': ?language,
      'status': ?status,
    };
  }

  factory StreamCaptionLanguageState.fromMap(Map<String, dynamic> map) {
    return StreamCaptionLanguageState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generated: (() { final guardedValue = map['generated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
