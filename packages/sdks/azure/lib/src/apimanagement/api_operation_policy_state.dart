// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiOperationPolicy resources.
class ApiOperationPolicyState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiName;
  /// The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? operationId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The XML Content for this Policy.
  final pulumi.Input<String>? xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  final pulumi.Input<String>? xmlLink;

  /// Creates a new [ApiOperationPolicyState].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [apiName] The name of the API within the API Management Service where the Operation exists. Changing this forces a new resource to be created.
  /// [operationId] The operation identifier within an API. Must be unique in the current API Management service instance. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [xmlContent] The XML Content for this Policy.
  /// [xmlLink] A link to a Policy XML Document, which must be publicly available.
  ApiOperationPolicyState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? apiName,
    pulumi.Output<String>? operationId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? xmlContent,
    pulumi.Output<String>? xmlLink,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      apiName = pulumi.Input.asOptionalInput<String>(apiName),
      operationId = pulumi.Input.asOptionalInput<String>(operationId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      xmlContent = pulumi.Input.asOptionalInput<String>(xmlContent),
      xmlLink = pulumi.Input.asOptionalInput<String>(xmlLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'apiName': ?apiName,
      'operationId': ?operationId,
      'resourceGroupName': ?resourceGroupName,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory ApiOperationPolicyState.fromMap(Map<String, dynamic> map) {
    return ApiOperationPolicyState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      apiName: map['apiName'] == null ? null : pulumi.Output.create<String>(map['apiName'] as String),
      operationId: map['operationId'] == null ? null : pulumi.Output.create<String>(map['operationId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      xmlContent: map['xmlContent'] == null ? null : pulumi.Output.create<String>(map['xmlContent'] as String),
      xmlLink: map['xmlLink'] == null ? null : pulumi.Output.create<String>(map['xmlLink'] as String),
    );
  }
}

