// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage {
  /// (Output)
  /// The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  final pulumi.Input<String>? locale;
  /// (Output)
  /// The localized error message in the above locale.
  final pulumi.Input<String>? message;

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage].
  /// [locale] (Output)
  /// [message] (Output)
  const RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage({
    this.locale,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': ?locale,
      'message': ?message,
    };
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage(
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
