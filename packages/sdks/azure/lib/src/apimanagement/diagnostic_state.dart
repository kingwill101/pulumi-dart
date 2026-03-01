// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_backend_request.dart';
import 'diagnostic_backend_response.dart';
import 'diagnostic_frontend_request.dart';
import 'diagnostic_frontend_response.dart';

/// Input properties used for looking up and filtering Diagnostic resources.
class DiagnosticState {
  /// Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings.
  final pulumi.Input<bool>? alwaysLogErrors;
  /// The id of the target API Management Logger where the API Management Diagnostic should be saved.
  final pulumi.Input<String>? apiManagementLoggerId;
  /// The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
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
  final pulumi.Input<String>? identifier;
  /// Log client IP address.
  final pulumi.Input<bool>? logClientIp;
  /// The format of the Operation Name for Application Insights telemetries. Possible values are `Name`, and `Url`.
  final pulumi.Input<String>? operationNameFormat;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between `0.0` and `100.0`.
  final pulumi.Input<double>? samplingPercentage;
  /// Logging verbosity. Possible values are `verbose`, `information` or `error`.
  final pulumi.Input<String>? verbosity;

  /// Creates a new [DiagnosticState].
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
  DiagnosticState({
    pulumi.Output<bool>? alwaysLogErrors,
    pulumi.Output<String>? apiManagementLoggerId,
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<DiagnosticBackendRequest>? backendRequest,
    pulumi.Output<DiagnosticBackendResponse>? backendResponse,
    pulumi.Output<DiagnosticFrontendRequest>? frontendRequest,
    pulumi.Output<DiagnosticFrontendResponse>? frontendResponse,
    pulumi.Output<String>? httpCorrelationProtocol,
    pulumi.Output<String>? identifier,
    pulumi.Output<bool>? logClientIp,
    pulumi.Output<String>? operationNameFormat,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<double>? samplingPercentage,
    pulumi.Output<String>? verbosity,
  }) :
      alwaysLogErrors = pulumi.Input.asOptionalInput<bool>(alwaysLogErrors),
      apiManagementLoggerId = pulumi.Input.asOptionalInput<String>(apiManagementLoggerId),
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      backendRequest = pulumi.Input.asOptionalInput<DiagnosticBackendRequest>(backendRequest),
      backendResponse = pulumi.Input.asOptionalInput<DiagnosticBackendResponse>(backendResponse),
      frontendRequest = pulumi.Input.asOptionalInput<DiagnosticFrontendRequest>(frontendRequest),
      frontendResponse = pulumi.Input.asOptionalInput<DiagnosticFrontendResponse>(frontendResponse),
      httpCorrelationProtocol = pulumi.Input.asOptionalInput<String>(httpCorrelationProtocol),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      logClientIp = pulumi.Input.asOptionalInput<bool>(logClientIp),
      operationNameFormat = pulumi.Input.asOptionalInput<String>(operationNameFormat),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      samplingPercentage = pulumi.Input.asOptionalInput<double>(samplingPercentage),
      verbosity = pulumi.Input.asOptionalInput<String>(verbosity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysLogErrors': ?alwaysLogErrors,
      'apiManagementLoggerId': ?apiManagementLoggerId,
      'apiManagementName': ?apiManagementName,
      'backendRequest': ?pulumi.Input.mapOptionalInputValue<DiagnosticBackendRequest, Map<String, dynamic>>(backendRequest, (value) => value.toMap()),
      'backendResponse': ?pulumi.Input.mapOptionalInputValue<DiagnosticBackendResponse, Map<String, dynamic>>(backendResponse, (value) => value.toMap()),
      'frontendRequest': ?pulumi.Input.mapOptionalInputValue<DiagnosticFrontendRequest, Map<String, dynamic>>(frontendRequest, (value) => value.toMap()),
      'frontendResponse': ?pulumi.Input.mapOptionalInputValue<DiagnosticFrontendResponse, Map<String, dynamic>>(frontendResponse, (value) => value.toMap()),
      'httpCorrelationProtocol': ?httpCorrelationProtocol,
      'identifier': ?identifier,
      'logClientIp': ?logClientIp,
      'operationNameFormat': ?operationNameFormat,
      'resourceGroupName': ?resourceGroupName,
      'samplingPercentage': ?samplingPercentage,
      'verbosity': ?verbosity,
    };
  }

  factory DiagnosticState.fromMap(Map<String, dynamic> map) {
    return DiagnosticState(
      alwaysLogErrors: map['alwaysLogErrors'] == null ? null : pulumi.Output.create<bool>(map['alwaysLogErrors'] as bool),
      apiManagementLoggerId: map['apiManagementLoggerId'] == null ? null : pulumi.Output.create<String>(map['apiManagementLoggerId'] as String),
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      backendRequest: map['backendRequest'] == null ? null : pulumi.Output.create<DiagnosticBackendRequest>(DiagnosticBackendRequest.fromMap((map['backendRequest'] as Map).cast<String, dynamic>())),
      backendResponse: map['backendResponse'] == null ? null : pulumi.Output.create<DiagnosticBackendResponse>(DiagnosticBackendResponse.fromMap((map['backendResponse'] as Map).cast<String, dynamic>())),
      frontendRequest: map['frontendRequest'] == null ? null : pulumi.Output.create<DiagnosticFrontendRequest>(DiagnosticFrontendRequest.fromMap((map['frontendRequest'] as Map).cast<String, dynamic>())),
      frontendResponse: map['frontendResponse'] == null ? null : pulumi.Output.create<DiagnosticFrontendResponse>(DiagnosticFrontendResponse.fromMap((map['frontendResponse'] as Map).cast<String, dynamic>())),
      httpCorrelationProtocol: map['httpCorrelationProtocol'] == null ? null : pulumi.Output.create<String>(map['httpCorrelationProtocol'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      logClientIp: map['logClientIp'] == null ? null : pulumi.Output.create<bool>(map['logClientIp'] as bool),
      operationNameFormat: map['operationNameFormat'] == null ? null : pulumi.Output.create<String>(map['operationNameFormat'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      samplingPercentage: map['samplingPercentage'] == null ? null : pulumi.Output.create<double>(map['samplingPercentage'] as double),
      verbosity: map['verbosity'] == null ? null : pulumi.Output.create<String>(map['verbosity'] as String),
    );
  }
}

