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
      code: map['code'] == null ? null : (map['code']! as int).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      recommendations: map['recommendations'] == null ? null : ((map['recommendations']! as List).cast<String>()).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

