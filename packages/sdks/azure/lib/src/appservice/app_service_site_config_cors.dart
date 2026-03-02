// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceSiteConfigCors {
  /// A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Are credentials supported?
  final pulumi.Input<bool>? supportCredentials;

  /// Creates a new [AppServiceSiteConfigCors].
  /// [allowedOrigins] A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  /// [supportCredentials] Are credentials supported?
  AppServiceSiteConfigCors({
    required this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory AppServiceSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return AppServiceSiteConfigCors(
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      supportCredentials: map['supportCredentials'] == null ? null : (map['supportCredentials'] as bool).input(),
    );
  }
}

