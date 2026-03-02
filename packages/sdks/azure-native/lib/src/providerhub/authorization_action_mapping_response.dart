// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorizationActionMappingResponse {
  /// The desired action name.
  final pulumi.Input<String>? desired;
  /// The original action name.
  final pulumi.Input<String>? original;

  /// Creates a new [AuthorizationActionMappingResponse].
  /// [desired] The desired action name.
  /// [original] The original action name.
  AuthorizationActionMappingResponse({
    this.desired,
    this.original,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desired': ?desired,
      'original': ?original,
    };
  }

  factory AuthorizationActionMappingResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationActionMappingResponse(
      desired: map['desired'] == null ? null : (map['desired'] as String).input(),
      original: map['original'] == null ? null : (map['original'] as String).input(),
    );
  }
}

