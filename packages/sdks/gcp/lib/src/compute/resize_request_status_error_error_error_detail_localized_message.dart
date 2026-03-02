// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage {
  /// (Output)
  /// The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  final pulumi.Input<String>? locale;
  /// (Output)
  /// The localized error message in the above locale.
  final pulumi.Input<String>? message;

  /// Creates a new [ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage].
  /// [locale] (Output)
  /// [message] (Output)
  ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage({
    this.locale,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': ?locale,
      'message': ?message,
    };
  }

  factory ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage(
      locale: map['locale'] == null ? null : (map['locale'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

