// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiKeyRestrictionsApiTarget {
  /// Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  final pulumi.Input<List<String>>? methods;
  /// The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project.
  final pulumi.Input<String> service;

  /// Creates a new [ApiKeyRestrictionsApiTarget].
  /// [methods] Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  /// [service] The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project.
  const ApiKeyRestrictionsApiTarget({
    this.methods,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': ?methods,
      'service': service,
    };
  }

  factory ApiKeyRestrictionsApiTarget.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictionsApiTarget(
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
