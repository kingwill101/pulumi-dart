// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_backend_request.dart';
import 'api_diagnostic_backend_response.dart';
import 'api_diagnostic_frontend_request.dart';
import 'api_diagnostic_frontend_response.dart';

/// Input properties used for looking up and filtering ApiDiagnostic resources.
class ApiDiagnosticState {
  /// Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  final pulumi.Input<bool>? alwaysLogErrors;
  /// The ID (name) of the Diagnostics Logger.
  final pulumi.Input<String>? apiManagementLoggerId;
  /// The name of the API Management Service instance. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The name of the API on which to configure the Diagnostics Logs. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String>? apiName;
  /// A `backend_request` block as defined below.
  final pulumi.Input<ApiDiagnosticBackendRequest>? backendRequest;
  /// A `backend_response` block as defined below.
  final pulumi.Input<ApiDiagnosticBackendResponse>? backendResponse;
  /// A `frontend_request` block as defined below.
  final pulumi.Input<ApiDiagnosticFrontendRequest>? frontendRequest;
  /// A `frontend_response` block as defined below.
  final pulumi.Input<ApiDiagnosticFrontendResponse>? frontendResponse;
  /// The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  final pulumi.Input<String>? httpCorrelationProtocol;
  /// Identifier of the Diagnostics Logs. Possible values are `applicationinsights` and `azuremonitor`. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String>? identifier;
  /// Log client IP address.
  final pulumi.Input<bool>? logClientIp;
  /// The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`.
  final pulumi.Input<String>? operationNameFormat;
  /// The name of the Resource Group where the API Management Service API Diagnostics Logs should exist. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  final pulumi.Input<double>? samplingPercentage;
  /// Logging verbosity. Possible values are `verbose`, `information` or `error`.
  final pulumi.Input<String>? verbosity;

  /// Creates a new [ApiDiagnosticState].
  /// [alwaysLogErrors] Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  /// [apiManagementLoggerId] The ID (name) of the Diagnostics Logger.
  /// [apiManagementName] The name of the API Management Service instance. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [apiName] The name of the API on which to configure the Diagnostics Logs. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [backendRequest] A `backend_request` block as defined below.
  /// [backendResponse] A `backend_response` block as defined below.
  /// [frontendRequest] A `frontend_request` block as defined below.
  /// [frontendResponse] A `frontend_response` block as defined below.
  /// [httpCorrelationProtocol] The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  /// [identifier] Identifier of the Diagnostics Logs. Possible values are `applicationinsights` and `azuremonitor`. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [logClientIp] Log client IP address.
  /// [operationNameFormat] The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`. Defaults to `Name`.
  /// [resourceGroupName] The name of the Resource Group where the API Management Service API Diagnostics Logs should exist. Changing this forces a new API Management Service API Diagnostics Logs to be created.
  /// [samplingPercentage] Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  /// [verbosity] Logging verbosity. Possible values are `verbose`, `information` or `error`.
  ApiDiagnosticState({
    this.alwaysLogErrors,
    this.apiManagementLoggerId,
    this.apiManagementName,
    this.apiName,
    this.backendRequest,
    this.backendResponse,
    this.frontendRequest,
    this.frontendResponse,
    this.httpCorrelationProtocol,
    this.identifier,
    this.logClientIp,
    this.operationNameFormat,
    this.resourceGroupName,
    this.samplingPercentage,
    this.verbosity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLogErrors': ?alwaysLogErrors,
      'apiManagementLoggerId': ?apiManagementLoggerId,
      'apiManagementName': ?apiManagementName,
      'apiName': ?apiName,
      'backendRequest': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticBackendRequest, Map<String, dynamic>>(backendRequest, (value) => value.toMap()),
      'backendResponse': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticBackendResponse, Map<String, dynamic>>(backendResponse, (value) => value.toMap()),
      'frontendRequest': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticFrontendRequest, Map<String, dynamic>>(frontendRequest, (value) => value.toMap()),
      'frontendResponse': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticFrontendResponse, Map<String, dynamic>>(frontendResponse, (value) => value.toMap()),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'identifier': ?identifier,
      'logClientIp': ?logClientIp,
      'operationNameFormat': ?operationNameFormat,
      'resourceGroupName': ?resourceGroupName,
      'samplingPercentage': ?samplingPercentage,
      'verbosity': ?verbosity,
    };
  }

  factory ApiDiagnosticState.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticState(
      alwaysLogErrors: map['alwaysLogErrors'] == null ? null : (map['alwaysLogErrors']! as bool).input(),
      apiManagementLoggerId: map['apiManagementLoggerId'] == null ? null : (map['apiManagementLoggerId']! as String).input(),
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName']! as String).input(),
      apiName: map['apiName'] == null ? null : (map['apiName']! as String).input(),
      backendRequest: map['backendRequest'] == null ? null : (ApiDiagnosticBackendRequest.fromMap((map['backendRequest']! as Map).cast<String, dynamic>())).input(),
      backendResponse: map['backendResponse'] == null ? null : (ApiDiagnosticBackendResponse.fromMap((map['backendResponse']! as Map).cast<String, dynamic>())).input(),
      frontendRequest: map['frontendRequest'] == null ? null : (ApiDiagnosticFrontendRequest.fromMap((map['frontendRequest']! as Map).cast<String, dynamic>())).input(),
      frontendResponse: map['frontendResponse'] == null ? null : (ApiDiagnosticFrontendResponse.fromMap((map['frontendResponse']! as Map).cast<String, dynamic>())).input(),
      httpCorrelationProtocol: map['httpCorrelationProtocol'] == null ? null : (map['httpCorrelationProtocol']! as String).input(),
      identifier: map['identifier'] == null ? null : (map['identifier']! as String).input(),
      logClientIp: map['logClientIp'] == null ? null : (map['logClientIp']! as bool).input(),
      operationNameFormat: map['operationNameFormat'] == null ? null : (map['operationNameFormat']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      samplingPercentage: map['samplingPercentage'] == null ? null : (map['samplingPercentage']! as double).input(),
      verbosity: map['verbosity'] == null ? null : (map['verbosity']! as String).input(),
    );
  }
}

