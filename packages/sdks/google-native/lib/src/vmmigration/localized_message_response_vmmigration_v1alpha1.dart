// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides a localized error message that is safe to return to the user which can be attached to an RPC error.
class LocalizedMessageResponseVmmigrationV1alpha1 {
  /// The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  final pulumi.Input<String> locale;
  /// The localized error message in the above locale.
  final pulumi.Input<String> message;

  /// Creates a new [LocalizedMessageResponseVmmigrationV1alpha1].
  /// [locale] The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  /// [message] The localized error message in the above locale.
  LocalizedMessageResponseVmmigrationV1alpha1({
    required this.locale,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': locale,
      'message': message,
    };
  }

  factory LocalizedMessageResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return LocalizedMessageResponseVmmigrationV1alpha1(
      locale: pulumi.Input.fromValue(map['locale'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

