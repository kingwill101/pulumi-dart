// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MAB workload-specific Health Details.
class MABContainerHealthDetailsResponse {
  /// Health Code
  final pulumi.Input<int>? code;
  /// Health Message
  final pulumi.Input<String>? message;
  /// Health Recommended Actions
  final pulumi.Input<List<String>>? recommendations;
  /// Health Title
  final pulumi.Input<String>? title;

  /// Creates a new [MABContainerHealthDetailsResponse].
  /// [code] Health Code
  /// [message] Health Message
  /// [recommendations] Health Recommended Actions
  /// [title] Health Title
  MABContainerHealthDetailsResponse({
    this.code,
    this.message,
    this.recommendations,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'recommendations': ?recommendations,
      'title': ?title,
    };
  }

  factory MABContainerHealthDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MABContainerHealthDetailsResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommendations: (() { final guardedValue = map['recommendations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

