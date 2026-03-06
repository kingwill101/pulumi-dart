// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStandardSiteConfigCors {
  /// A list of origins which should be able to make cross-origin calls.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Are credentials supported?
  final pulumi.Input<bool> supportCredentials;

  /// Creates a new [GetStandardSiteConfigCors].
  /// [allowedOrigins] A list of origins which should be able to make cross-origin calls.
  /// [supportCredentials] Are credentials supported?
  const GetStandardSiteConfigCors({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetStandardSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return GetStandardSiteConfigCors(
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      supportCredentials: pulumi.Input.fromValue(map['supportCredentials'] as bool),
    );
  }
}

