// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A restriction for a specific service and optionally one or multiple specific methods. Both fields are case insensitive.
class ApiTargetResponse {
  /// Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  final pulumi.Input<List<String>> methods;
  /// The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use [`gcloud services list`](/sdk/gcloud/reference/services/list) to get a list of services that are enabled in the project.
  final pulumi.Input<String> service;

  /// Creates a new [ApiTargetResponse].
  /// [methods] Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  /// [service] The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use [`gcloud services list`](/sdk/gcloud/reference/services/list) to get a list of services that are enabled in the project.
  const ApiTargetResponse({
    required this.methods,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': methods,
      'service': service,
    };
  }

  factory ApiTargetResponse.fromMap(Map<String, dynamic> map) {
    return ApiTargetResponse(
      methods: pulumi.Input.fromValue((map['methods'] as List).cast<String>()),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

