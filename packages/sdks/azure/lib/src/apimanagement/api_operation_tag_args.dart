// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_operation_tag_api_operation_tag_args_doc}
/// The set of arguments for ApiOperationTag.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_operation_tag_api_operation_tag_args_doc}
class ApiOperationTagArgs {
  /// The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created.
  final pulumi.Input<String> apiOperationId;
  /// The display name of the API Management API Operation Tag.
  final pulumi.Input<String> displayName;
  /// The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service.
  final pulumi.Input<String>? name;

  /// Creates a new [ApiOperationTagArgs].
  /// [apiOperationId] The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created.
  /// [displayName] The display name of the API Management API Operation Tag.
  /// [name] The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service.
  ApiOperationTagArgs({
    required this.apiOperationId,
    required this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiOperationId': apiOperationId,
      'displayName': displayName,
      'name': ?name,
    };
  }

  factory ApiOperationTagArgs.fromMap(Map<String, dynamic> map) {
    return ApiOperationTagArgs(
      apiOperationId: (map['apiOperationId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

