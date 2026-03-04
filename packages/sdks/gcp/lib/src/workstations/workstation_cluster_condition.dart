// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationClusterCondition {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;

  /// (Output)
  /// A list of messages that carry the error details.
  final pulumi.Input<List<Map<String, String>>>? details;

  /// (Output)
  /// Human readable message indicating details about the current status.
  final pulumi.Input<String>? message;

  /// Creates a new [WorkstationClusterCondition].
  /// [code] (Output)
  /// [details] (Output)
  /// [message] (Output)
  WorkstationClusterCondition({this.code, this.details, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?details,
      'message': ?message,
    };
  }

  factory WorkstationClusterCondition.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterCondition(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      details: (() {
        final guardedValue = map['details'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<Map<String, String>>(),
        );
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
