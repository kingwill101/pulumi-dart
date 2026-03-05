// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_tag_api_tag_args_doc}
/// The set of arguments for ApiTag.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_tag_api_tag_args_doc}
class ApiTagArgs {
  /// The ID of the API Management API. Changing this forces a new API Management API Tag to be created.
  final pulumi.Input<String> apiId;
  /// The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [ApiTagArgs].
  /// [apiId] The ID of the API Management API. Changing this forces a new API Management API Tag to be created.
  /// [name] The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created.
  ApiTagArgs({
    required this.apiId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'name': ?name,
    };
  }

  factory ApiTagArgs.fromMap(Map<String, dynamic> map) {
    return ApiTagArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

