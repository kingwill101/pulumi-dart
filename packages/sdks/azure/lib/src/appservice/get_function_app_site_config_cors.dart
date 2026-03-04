// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionAppSiteConfigCors {
  final pulumi.Input<List<String>> allowedOrigins;
  final pulumi.Input<bool>? supportCredentials;

  /// Creates a new [GetFunctionAppSiteConfigCors].
  /// [allowedOrigins] Required.
  /// [supportCredentials] Optional.
  GetFunctionAppSiteConfigCors({
    required this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory GetFunctionAppSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppSiteConfigCors(
      allowedOrigins: pulumi.Input.fromValue(
        (map['allowedOrigins'] as List).cast<String>(),
      ),
      supportCredentials: (() {
        final guardedValue = map['supportCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
