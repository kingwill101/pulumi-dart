// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountCors {
  /// A list of origins that should be allowed to make cross-origin calls.
  final pulumi.Input<List<String>> allowedOrigins;

  /// Creates a new [AccountCors].
  /// [allowedOrigins] A list of origins that should be allowed to make cross-origin calls.
  AccountCors({
    required this.allowedOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
    };
  }

  factory AccountCors.fromMap(Map<String, dynamic> map) {
    return AccountCors(
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
    );
  }
}

