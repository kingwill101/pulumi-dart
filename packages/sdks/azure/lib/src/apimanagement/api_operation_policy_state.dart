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
  const ApiOperationPolicyState({
    this.apiManagementName,
    this.apiName,
    this.operationId,
    this.resourceGroupName,
    this.xmlContent,
    this.xmlLink,
  });

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
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiName: (() { final guardedValue = map['apiName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlContent: (() { final guardedValue = map['xmlContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlLink: (() { final guardedValue = map['xmlLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
