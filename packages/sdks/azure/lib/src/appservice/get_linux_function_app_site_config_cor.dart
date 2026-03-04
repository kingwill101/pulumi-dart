// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppSiteConfigCor {
  /// A list of origins that are allowed to make cross-origin calls.
  final pulumi.Input<List<String>> allowedOrigins;

  /// Are credentials allowed in CORS requests?
  final pulumi.Input<bool> supportCredentials;

  /// Creates a new [GetLinuxFunctionAppSiteConfigCor].
  /// [allowedOrigins] A list of origins that are allowed to make cross-origin calls.
  /// [supportCredentials] Are credentials allowed in CORS requests?
  GetLinuxFunctionAppSiteConfigCor({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetLinuxFunctionAppSiteConfigCor.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigCor(
      allowedOrigins: pulumi.Input.fromValue(
        (map['allowedOrigins'] as List).cast<String>(),
      ),
      supportCredentials: pulumi.Input.fromValue(
        map['supportCredentials'] as bool,
      ),
    );
  }
}
