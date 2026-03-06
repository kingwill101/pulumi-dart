// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request.dart';
import 'api_operation_response.dart';
import 'api_operation_template_parameter.dart';

/// Input properties used for looking up and filtering ApiOperation resources.
class ApiOperationState {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiName;
  /// A description for this API Operation, which may include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// The Display Name for this API Management Operation.
  final pulumi.Input<String>? displayName;
  /// The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `PUT` or `POST` - but not limited to these values.
  final pulumi.Input<String>? method;
  /// A unique identifier for this API Operation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? operationId;
  /// A `request` block as defined below.
  final pulumi.Input<ApiOperationRequest>? request;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `response` blocks as defined below.
  final pulumi.Input<List<ApiOperationResponse>>? responses;
  /// One or more `template_parameter` blocks as defined below. Required if `url_template` contains one or more parameters.
  final pulumi.Input<List<ApiOperationTemplateParameter>>? templateParameters;
  /// The relative URL Template identifying the target resource for this operation, which may include parameters.
  final pulumi.Input<String>? urlTemplate;

  /// Creates a new [ApiOperationState].
  /// [apiManagementName] The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  /// [apiName] The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created.
  /// [description] A description for this API Operation, which may include HTML formatting tags.
  /// [displayName] The Display Name for this API Management Operation.
  /// [method] The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `PUT` or `POST` - but not limited to these values.
  /// [operationId] A unique identifier for this API Operation. Changing this forces a new resource to be created.
  /// [request] A `request` block as defined below.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [responses] One or more `response` blocks as defined below.
  /// [templateParameters] One or more `template_parameter` blocks as defined below. Required if `url_template` contains one or more parameters.
  /// [urlTemplate] The relative URL Template identifying the target resource for this operation, which may include parameters.
  const ApiOperationState({
    this.apiManagementName,
    this.apiName,
    this.description,
    this.displayName,
    this.method,
    this.operationId,
    this.request,
    this.resourceGroupName,
    this.responses,
    this.templateParameters,
    this.urlTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'apiName': ?apiName,
      'description': ?description,
      'displayName': ?displayName,
      'method': ?method,
      'operationId': ?operationId,
      'request': ?pulumi.Input.mapOptionalInputValue<ApiOperationRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'responses': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationResponse>, List<Map<String, dynamic>>>(responses, (value) => pulumi.Input.encodeList<ApiOperationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationTemplateParameter>, List<Map<String, dynamic>>>(templateParameters, (value) => pulumi.Input.encodeList<ApiOperationTemplateParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlTemplate': ?urlTemplate,
    };
  }

  factory ApiOperationState.fromMap(Map<String, dynamic> map) {
    return ApiOperationState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiName: (() { final guardedValue = map['apiName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiOperationRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responses: (() { final guardedValue = map['responses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationResponse>(guardedValue, (value) => ApiOperationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateParameters: (() { final guardedValue = map['templateParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiOperationTemplateParameter>(guardedValue, (value) => ApiOperationTemplateParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlTemplate: (() { final guardedValue = map['urlTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

