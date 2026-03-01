// ignore_for_file: unused_element, unnecessary_cast


class ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage {
  /// (Output)
  /// The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  final String? locale;
  /// (Output)
  /// The localized error message in the above locale.
  final String? message;

  /// Creates a new [ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage].
  /// [locale] (Output)
  /// [message] (Output)
  ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage({
    this.locale,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': ?locale,
      'message': ?message,
    };
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage(
      locale: map['locale'] == null ? null : map['locale'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

