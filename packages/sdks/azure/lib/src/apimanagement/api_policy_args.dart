// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_policy_api_policy_args_doc}
/// The set of arguments for ApiPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_policy_api_policy_args_doc}
class ApiPolicyArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The ID of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiName;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The XML Content for this Policy as a string.
  final pulumi.Input<String>? xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  final pulumi.Input<String>? xmlLink;

  /// Creates a new [ApiPolicyArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [apiName] The ID of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [xmlContent] The XML Content for this Policy as a string.
  /// [xmlLink] A link to a Policy XML Document, which must be publicly available.
  ApiPolicyArgs({
    required this.apiManagementName,
    required this.apiName,
    required this.resourceGroupName,
    this.xmlContent,
    this.xmlLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'apiName': apiName,
      'resourceGroupName': resourceGroupName,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory ApiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ApiPolicyArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      apiName: (map['apiName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      xmlContent: map['xmlContent'] == null ? null : (map['xmlContent']! as String).input(),
      xmlLink: map['xmlLink'] == null ? null : (map['xmlLink']! as String).input(),
    );
  }
}

