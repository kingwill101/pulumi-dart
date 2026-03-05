// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppSiteConfigCor {
  /// A list of origins that should be allowed to make cross-origin calls.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Are credentials allows in CORS requests?.
  final pulumi.Input<bool> supportCredentials;

  /// Creates a new [GetWindowsFunctionAppSiteConfigCor].
  /// [allowedOrigins] A list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Are credentials allows in CORS requests?.
  GetWindowsFunctionAppSiteConfigCor({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetWindowsFunctionAppSiteConfigCor.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigCor(
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      supportCredentials: pulumi.Input.fromValue(map['supportCredentials'] as bool),
    );
  }
}

