import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'vnet_route_response.dart';
import 'web_app_vnet_connection_slot_args.dart';

/// Virtual Network information ARM resource.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppVnetConnectionSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/virtualNetworkConnections/{vnetName}
/// ```
class WebAppVnetConnectionSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A certificate file (.cer) blob containing the public key of the private key used to authenticate a \nPoint-To-Site VPN connection.
  late final pulumi.Output<String?> certBlob;
  /// The client certificate thumbprint.
  late final pulumi.Output<String> certThumbprint;
  /// DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  late final pulumi.Output<String?> dnsServers;
  /// Flag that is used to denote if this is VNET injection
  late final pulumi.Output<bool?> isSwift;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// &lt;code&gt;true&lt;/code&gt; if a resync is required; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool> resyncRequired;
  /// The routes that this Virtual Network connection uses.
  late final pulumi.Output<List<VnetRouteResponse>> routes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The Virtual Network's resource ID.
  late final pulumi.Output<String?> vnetResourceId;

  /// Creates a new [WebAppVnetConnectionSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppVnetConnectionSlot]. {@macro pulumi_web_web_app_vnet_connection_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppVnetConnectionSlot(
    String name, {
    WebAppVnetConnectionSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppVnetConnectionSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certBlob = registerOutput<String?>('certBlob');
    certThumbprint = registerOutput<String>('certThumbprint');
    dnsServers = registerOutput<String?>('dnsServers');
    isSwift = registerOutput<bool?>('isSwift');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    resyncRequired = registerOutput<bool>('resyncRequired');
    routes = registerOutput<List<VnetRouteResponse>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VnetRouteResponse>(guardedValue, (value) => VnetRouteResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vnetResourceId = registerOutput<String?>('vnetResourceId');
  }

  /// Creates a typed reference to an existing [WebAppVnetConnectionSlot] resource.
  WebAppVnetConnectionSlot.reference(String urn)
    : super(
        'azure-native:web:WebAppVnetConnectionSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certBlob = registerOutput<String?>('certBlob');
    certThumbprint = registerOutput<String>('certThumbprint');
    dnsServers = registerOutput<String?>('dnsServers');
    isSwift = registerOutput<bool?>('isSwift');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    resyncRequired = registerOutput<bool>('resyncRequired');
    routes = registerOutput<List<VnetRouteResponse>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VnetRouteResponse>(guardedValue, (value) => VnetRouteResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vnetResourceId = registerOutput<String?>('vnetResourceId');
  }
}
