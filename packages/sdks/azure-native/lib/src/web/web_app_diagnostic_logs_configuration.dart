import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_logs_config_response.dart';
import 'enabled_config_response.dart';
import 'http_logs_config_response.dart';
import 'system_data_response.dart';
import 'web_app_diagnostic_logs_configuration_args.dart';

/// Configuration of App Service site logs.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppDiagnosticLogsConfiguration myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/logs
/// ```
class WebAppDiagnosticLogsConfiguration extends pulumi.CustomResource {
  /// Application logs configuration.
  late final pulumi.Output<ApplicationLogsConfigResponse?> applicationLogs;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Detailed error messages configuration.
  late final pulumi.Output<EnabledConfigResponse?> detailedErrorMessages;
  /// Failed requests tracing configuration.
  late final pulumi.Output<EnabledConfigResponse?> failedRequestsTracing;
  /// HTTP logs configuration.
  late final pulumi.Output<HttpLogsConfigResponse?> httpLogs;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppDiagnosticLogsConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppDiagnosticLogsConfiguration]. {@macro pulumi_web_web_app_diagnostic_logs_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppDiagnosticLogsConfiguration(
    String name, {
    WebAppDiagnosticLogsConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppDiagnosticLogsConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationLogs = registerOutput<ApplicationLogsConfigResponse?>('applicationLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    detailedErrorMessages = registerOutput<EnabledConfigResponse?>('detailedErrorMessages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failedRequestsTracing = registerOutput<EnabledConfigResponse?>('failedRequestsTracing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpLogs = registerOutput<HttpLogsConfigResponse?>('httpLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAppDiagnosticLogsConfiguration] resource.
  WebAppDiagnosticLogsConfiguration.reference(String urn)
    : super(
        'azure-native:web:WebAppDiagnosticLogsConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationLogs = registerOutput<ApplicationLogsConfigResponse?>('applicationLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    detailedErrorMessages = registerOutput<EnabledConfigResponse?>('detailedErrorMessages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failedRequestsTracing = registerOutput<EnabledConfigResponse?>('failedRequestsTracing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpLogs = registerOutput<HttpLogsConfigResponse?>('httpLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
