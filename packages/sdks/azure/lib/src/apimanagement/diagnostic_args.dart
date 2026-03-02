// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_backend_request.dart';
import 'diagnostic_backend_response.dart';
import 'diagnostic_frontend_request.dart';
import 'diagnostic_frontend_response.dart';

/// {@template pulumi_apimanagement_diagnostic_diagnostic_args_doc}
/// The set of arguments for Diagnostic.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_diagnostic_diagnostic_args_doc}
class DiagnosticArgs {
  /// Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  final pulumi.Input<bool>? alwaysLogErrors;
  /// The id of the target API Management Logger where the API Management Diagnostic should be saved.
  final pulumi.Input<String> apiManagementLoggerId;
  /// The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// A `backend_request` block as defined below.
  final pulumi.Input<DiagnosticBackendRequest>? backendRequest;
  /// A `backend_response` block as defined below.
  final pulumi.Input<DiagnosticBackendResponse>? backendResponse;
  /// A `frontend_request` block as defined below.
  final pulumi.Input<DiagnosticFrontendRequest>? frontendRequest;
  /// A `frontend_response` block as defined below.
  final pulumi.Input<DiagnosticFrontendResponse>? frontendResponse;
  /// The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  final pulumi.Input<String>? httpCorrelationProtocol;
  /// The diagnostic identifier for the API Management Service. At this time the supported values are `applicationinsights` and `azuremonitor`. Changing this forces a new resource to be created.
  final pulumi.Input<String> identifier;
  /// Log client IP address.
  final pulumi.Input<bool>? logClientIp;
  /// The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`.
  final pulumi.Input<String>? operationNameFormat;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  final pulumi.Input<double>? samplingPercentage;
  /// Logging verbosity. Possible values are `verbose`, `information` or `error`.
  final pulumi.Input<String>? verbosity;

  /// Creates a new [DiagnosticArgs].
  /// [alwaysLogErrors] Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  /// [apiManagementLoggerId] The id of the target API Management Logger where the API Management Diagnostic should be saved.
  /// [apiManagementName] The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created.
  /// [backendRequest] A `backend_request` block as defined below.
  /// [backendResponse] A `backend_response` block as defined below.
  /// [frontendRequest] A `frontend_request` block as defined below.
  /// [frontendResponse] A `frontend_response` block as defined below.
  /// [httpCorrelationProtocol] The HTTP Correlation Protocol to use. Possible values are `None`, `Legacy` or `W3C`.
  /// [identifier] The diagnostic identifier for the API Management Service. At this time the supported values are `applicationinsights` and `azuremonitor`. Changing this forces a new resource to be created.
  /// [logClientIp] Log client IP address.
  /// [operationNameFormat] The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [samplingPercentage] Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  /// [verbosity] Logging verbosity. Possible values are `verbose`, `information` or `error`.
  DiagnosticArgs({
    this.alwaysLogErrors,
    required this.apiManagementLoggerId,
    required this.apiManagementName,
    this.backendRequest,
    this.backendResponse,
    this.frontendRequest,
    this.frontendResponse,
    this.httpCorrelationProtocol,
    required this.identifier,
    this.logClientIp,
    this.operationNameFormat,
    required this.resourceGroupName,
    this.samplingPercentage,
    this.verbosity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLogErrors': ?alwaysLogErrors,
      'apiManagementLoggerId': apiManagementLoggerId,
      'apiManagementName': apiManagementName,
      'backendRequest': ?pulumi.Input.mapOptionalInputValue<DiagnosticBackendRequest, Map<String, dynamic>>(backendRequest, (value) => value.toMap()),
      'backendResponse': ?pulumi.Input.mapOptionalInputValue<DiagnosticBackendResponse, Map<String, dynamic>>(backendResponse, (value) => value.toMap()),
      'frontendRequest': ?pulumi.Input.mapOptionalInputValue<DiagnosticFrontendRequest, Map<String, dynamic>>(frontendRequest, (value) => value.toMap()),
      'frontendResponse': ?pulumi.Input.mapOptionalInputValue<DiagnosticFrontendResponse, Map<String, dynamic>>(frontendResponse, (value) => value.toMap()),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'identifier': identifier,
      'logClientIp': ?logClientIp,
      'operationNameFormat': ?operationNameFormat,
      'resourceGroupName': resourceGroupName,
      'samplingPercentage': ?samplingPercentage,
      'verbosity': ?verbosity,
    };
  }

  factory DiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticArgs(
      alwaysLogErrors: map['alwaysLogErrors'] == null ? null : (map['alwaysLogErrors']! as bool).input(),
      apiManagementLoggerId: (map['apiManagementLoggerId'] as String).input(),
      apiManagementName: (map['apiManagementName'] as String).input(),
      backendRequest: map['backendRequest'] == null ? null : (DiagnosticBackendRequest.fromMap((map['backendRequest']! as Map).cast<String, dynamic>())).input(),
      backendResponse: map['backendResponse'] == null ? null : (DiagnosticBackendResponse.fromMap((map['backendResponse']! as Map).cast<String, dynamic>())).input(),
      frontendRequest: map['frontendRequest'] == null ? null : (DiagnosticFrontendRequest.fromMap((map['frontendRequest']! as Map).cast<String, dynamic>())).input(),
      frontendResponse: map['frontendResponse'] == null ? null : (DiagnosticFrontendResponse.fromMap((map['frontendResponse']! as Map).cast<String, dynamic>())).input(),
      httpCorrelationProtocol: map['httpCorrelationProtocol'] == null ? null : (map['httpCorrelationProtocol']! as String).input(),
      identifier: (map['identifier'] as String).input(),
      logClientIp: map['logClientIp'] == null ? null : (map['logClientIp']! as bool).input(),
      operationNameFormat: map['operationNameFormat'] == null ? null : (map['operationNameFormat']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      samplingPercentage: map['samplingPercentage'] == null ? null : (map['samplingPercentage']! as double).input(),
      verbosity: map['verbosity'] == null ? null : (map['verbosity']! as String).input(),
    );
  }
}

