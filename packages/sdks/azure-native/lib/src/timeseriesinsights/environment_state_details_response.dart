// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object that contains the details about an environment's state.
class EnvironmentStateDetailsResponse {
  /// Contains the code that represents the reason of an environment being in a particular state. Can be used to programmatically handle specific cases.
  final pulumi.Input<String>? code;
  /// A message that describes the state in detail.
  final pulumi.Input<String>? message;

  /// Creates a new [EnvironmentStateDetailsResponse].
  /// [code] Contains the code that represents the reason of an environment being in a particular state. Can be used to programmatically handle specific cases.
  /// [message] A message that describes the state in detail.
  EnvironmentStateDetailsResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory EnvironmentStateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentStateDetailsResponse(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

