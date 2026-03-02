// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_operation_policy_api_operation_policy_args_doc}
/// The set of arguments for ApiOperationPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_operation_policy_api_operation_policy_args_doc}
class ApiOperationPolicyArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiName;
  /// The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> operationId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The XML Content for this Policy.
  final pulumi.Input<String>? xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  final pulumi.Input<String>? xmlLink;

  /// Creates a new [ApiOperationPolicyArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [apiName] The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created.
  /// [operationId] The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [xmlContent] The XML Content for this Policy.
  /// [xmlLink] A link to a Policy XML Document, which must be publicly available.
  ApiOperationPolicyArgs({
    required this.apiManagementName,
    required this.apiName,
    required this.operationId,
    required this.resourceGroupName,
    this.xmlContent,
    this.xmlLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'apiName': apiName,
      'operationId': operationId,
      'resourceGroupName': resourceGroupName,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory ApiOperationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ApiOperationPolicyArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      apiName: (map['apiName'] as String).input(),
      operationId: (map['operationId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      xmlContent: map['xmlContent'] == null ? null : (map['xmlContent']! as String).input(),
      xmlLink: map['xmlLink'] == null ? null : (map['xmlLink']! as String).input(),
    );
  }
}

