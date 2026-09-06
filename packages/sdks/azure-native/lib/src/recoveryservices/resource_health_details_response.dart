// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health Details for backup items.
class ResourceHealthDetailsResponse {
  /// Health Code
  final pulumi.Input<int> code;
  /// Health Message
  final pulumi.Input<String> message;
  /// Health Recommended Actions
  final pulumi.Input<List<String>> recommendations;
  /// Health Title
  final pulumi.Input<String> title;

  /// Creates a new [ResourceHealthDetailsResponse].
  /// [code] Health Code
  /// [message] Health Message
  /// [recommendations] Health Recommended Actions
  /// [title] Health Title
  const ResourceHealthDetailsResponse({
    required this.code,
    required this.message,
    required this.recommendations,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'recommendations': recommendations,
      'title': title,
    };
  }

  factory ResourceHealthDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceHealthDetailsResponse(
      code: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['code'])),
      message: pulumi.Input.fromValue(map['message'] as String),
      recommendations: pulumi.Input.fromValue((map['recommendations'] as List).cast<String>()),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
