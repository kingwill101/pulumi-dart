// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppSlotSiteConfigCors {
  /// A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  final pulumi.Input<List<String>> allowedOrigins;

  /// Are credentials supported?
  final pulumi.Input<bool>? supportCredentials;

  /// Creates a new [FunctionAppSlotSiteConfigCors].
  /// [allowedOrigins] A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  /// [supportCredentials] Are credentials supported?
  FunctionAppSlotSiteConfigCors({
    required this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory FunctionAppSlotSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotSiteConfigCors(
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
