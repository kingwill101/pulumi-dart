// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppServiceSiteConfigCor {
  /// A list of origins which are able to make cross-origin calls.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Are credentials supported?
  final pulumi.Input<bool> supportCredentials;

  /// Creates a new [GetAppServiceSiteConfigCor].
  /// [allowedOrigins] A list of origins which are able to make cross-origin calls.
  /// [supportCredentials] Are credentials supported?
  GetAppServiceSiteConfigCor({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetAppServiceSiteConfigCor.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteConfigCor(
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      supportCredentials: (map['supportCredentials'] as bool).input(),
    );
  }
}

