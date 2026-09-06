import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_relay_service_connection_slot_args.dart';

/// Hybrid Connection for an App Service app.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppRelayServiceConnectionSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/hybridconnection/{entityName}
/// ```
class WebAppRelayServiceConnectionSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> biztalkUri;
  late final pulumi.Output<String?> entityConnectionString;
  late final pulumi.Output<String?> entityName;
  late final pulumi.Output<String?> hostname;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<int?> port;
  late final pulumi.Output<String?> resourceConnectionString;
  late final pulumi.Output<String?> resourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppRelayServiceConnectionSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppRelayServiceConnectionSlot]. {@macro pulumi_web_web_app_relay_service_connection_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppRelayServiceConnectionSlot(
    String name, {
    WebAppRelayServiceConnectionSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppRelayServiceConnectionSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    biztalkUri = registerOutput<String?>('biztalkUri');
    entityConnectionString = registerOutput<String?>('entityConnectionString');
    entityName = registerOutput<String?>('entityName');
    hostname = registerOutput<String?>('hostname');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    resourceConnectionString = registerOutput<String?>('resourceConnectionString');
    resourceType = registerOutput<String?>('resourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAppRelayServiceConnectionSlot] resource.
  WebAppRelayServiceConnectionSlot.reference(String urn)
    : super(
        'azure-native:web:WebAppRelayServiceConnectionSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    biztalkUri = registerOutput<String?>('biztalkUri');
    entityConnectionString = registerOutput<String?>('entityConnectionString');
    entityName = registerOutput<String?>('entityName');
    hostname = registerOutput<String?>('hostname');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    resourceConnectionString = registerOutput<String?>('resourceConnectionString');
    resourceType = registerOutput<String?>('resourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
