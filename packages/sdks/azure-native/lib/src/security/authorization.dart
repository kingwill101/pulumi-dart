// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization payload.
class Authorization {
  /// Gets or sets one-time OAuth code to exchange for refresh and access tokens.
  ///
  /// Only used during PUT/PATCH operations. The secret is cleared during GET.
  final pulumi.Input<String>? code;

  /// Creates a new [Authorization].
  /// [code] Gets or sets one-time OAuth code to exchange for refresh and access tokens.
  const Authorization({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory Authorization.fromMap(Map<String, dynamic> map) {
    return Authorization(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

