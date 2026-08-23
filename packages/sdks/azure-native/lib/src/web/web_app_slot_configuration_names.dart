import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_slot_configuration_names_args.dart';

/// Slot Config names azure resource.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppSlotConfigurationNames myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/slotConfigNames
/// ```
class WebAppSlotConfigurationNames extends pulumi.CustomResource {
  /// List of application settings names.
  late final pulumi.Output<List<String>?> appSettingNames;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of external Azure storage account identifiers.
  late final pulumi.Output<List<String>?> azureStorageConfigNames;
  /// List of connection string names.
  late final pulumi.Output<List<String>?> connectionStringNames;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppSlotConfigurationNames].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSlotConfigurationNames]. {@macro pulumi_web_web_app_slot_configuration_names_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSlotConfigurationNames(
    String name, {
    WebAppSlotConfigurationNamesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSlotConfigurationNames',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appSettingNames = registerOutput<List<String>?>('appSettingNames');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureStorageConfigNames = registerOutput<List<String>?>('azureStorageConfigNames');
    connectionStringNames = registerOutput<List<String>?>('connectionStringNames');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
