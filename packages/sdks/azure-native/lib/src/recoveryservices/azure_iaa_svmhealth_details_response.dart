// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure IaaS VM workload-specific Health Details.
class AzureIaaSVMHealthDetailsResponse {
  /// Health Code
  final pulumi.Input<int> code;
  /// Health Message
  final pulumi.Input<String> message;
  /// Health Recommended Actions
  final pulumi.Input<List<String>> recommendations;
  /// Health Title
  final pulumi.Input<String> title;

  /// Creates a new [AzureIaaSVMHealthDetailsResponse].
  /// [code] Health Code
  /// [message] Health Message
  /// [recommendations] Health Recommended Actions
  /// [title] Health Title
  AzureIaaSVMHealthDetailsResponse({
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

  factory AzureIaaSVMHealthDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMHealthDetailsResponse(
      code: (map['code'] as int).input(),
      message: (map['message'] as String).input(),
      recommendations: ((map['recommendations'] as List).cast<String>()).input(),
      title: (map['title'] as String).input(),
    );
  }
}

