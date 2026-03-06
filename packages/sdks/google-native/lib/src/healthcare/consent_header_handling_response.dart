// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// How the server handles the consent header.
class ConsentHeaderHandlingResponse {
  /// Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
  final pulumi.Input<String> profile;

  /// Creates a new [ConsentHeaderHandlingResponse].
  /// [profile] Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
  const ConsentHeaderHandlingResponse({
    required this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profile': profile,
    };
  }

  factory ConsentHeaderHandlingResponse.fromMap(Map<String, dynamic> map) {
    return ConsentHeaderHandlingResponse(
      profile: pulumi.Input.fromValue(map['profile'] as String),
    );
  }
}

