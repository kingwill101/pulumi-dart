// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request.dart';
import 'api_operation_response.dart';
import 'api_operation_template_parameter.dart';

/// {@template pulumi_apimanagement_api_operation_api_operation_args_doc}
/// The set of arguments for ApiOperation.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_operation_api_operation_args_doc}
class ApiOperationArgs {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiName;
  /// A description for this API Operation, which may include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// The Display Name for this API Management Operation.
  final pulumi.Input<String> displayName;
  /// The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `PUT` or `POST` - but not limited to these values.
  final pulumi.Input<String> method;
  /// A unique identifier for this API Operation. Changing this forces a new resource to be created.
  final pulumi.Input<String> operationId;
  /// A `request` block as defined below.
  final pulumi.Input<ApiOperationRequest>? request;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `response` blocks as defined below.
  final pulumi.Input<List<ApiOperationResponse>>? responses;
  /// One or more `template_parameter` blocks as defined below. Required if `url_template` contains one or more parameters.
  final pulumi.Input<List<ApiOperationTemplateParameter>>? templateParameters;
  /// The relative URL Template identifying the target resource for this operation, which may include parameters.
  final pulumi.Input<String> urlTemplate;

  /// Creates a new [ApiOperationArgs].
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
  ApiOperationArgs({
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> apiName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> method,
    required pulumi.Output<String> operationId,
    pulumi.Output<ApiOperationRequest>? request,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<ApiOperationResponse>>? responses,
    pulumi.Output<List<ApiOperationTemplateParameter>>? templateParameters,
    required pulumi.Output<String> urlTemplate,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      apiName = pulumi.Input.asInput<String>(apiName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      method = pulumi.Input.asInput<String>(method),
      operationId = pulumi.Input.asInput<String>(operationId),
      request = pulumi.Input.asOptionalInput<ApiOperationRequest>(request),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      responses = pulumi.Input.asOptionalInput<List<ApiOperationResponse>>(responses),
      templateParameters = pulumi.Input.asOptionalInput<List<ApiOperationTemplateParameter>>(templateParameters),
      urlTemplate = pulumi.Input.asInput<String>(urlTemplate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'apiName': apiName,
      'description': ?description,
      'displayName': displayName,
      'method': method,
      'operationId': operationId,
      'request': ?pulumi.Input.mapOptionalInputValue<ApiOperationRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'responses': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationResponse>, List<Map<String, dynamic>>>(responses, (value) => pulumi.Input.encodeList<ApiOperationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateParameters': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationTemplateParameter>, List<Map<String, dynamic>>>(templateParameters, (value) => pulumi.Input.encodeList<ApiOperationTemplateParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlTemplate': urlTemplate,
    };
  }

  factory ApiOperationArgs.fromMap(Map<String, dynamic> map) {
    return ApiOperationArgs(
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      apiName: pulumi.Output.create<String>(map['apiName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      method: pulumi.Output.create<String>(map['method'] as String),
      operationId: pulumi.Output.create<String>(map['operationId'] as String),
      request: map['request'] == null ? null : pulumi.Output.create<ApiOperationRequest>(ApiOperationRequest.fromMap((map['request'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      responses: map['responses'] == null ? null : pulumi.Output.create<List<ApiOperationResponse>>(pulumi.Input.decodeList<ApiOperationResponse>(map['responses'], (value) => ApiOperationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      templateParameters: map['templateParameters'] == null ? null : pulumi.Output.create<List<ApiOperationTemplateParameter>>(pulumi.Input.decodeList<ApiOperationTemplateParameter>(map['templateParameters'], (value) => ApiOperationTemplateParameter.fromMap((value as Map).cast<String, dynamic>()))),
      urlTemplate: pulumi.Output.create<String>(map['urlTemplate'] as String),
    );
  }
}

