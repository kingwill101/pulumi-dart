import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_plan_route_for_vnet_args.dart';

/// Virtual Network route contract used to pass routing information for a Virtual Network.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:AppServicePlanRouteForVnet myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/serverfarms/{name}/virtualNetworkConnections/{vnetName}/routes/{routeName}
/// ```
class AppServicePlanRouteForVnet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ending address for this route. If the start address is specified in CIDR notation, this must be omitted.
  late final pulumi.Output<String?> endAddress;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// The type of route this is:
  /// DEFAULT - By default, every app has routes to the local address ranges specified by RFC1918
  /// INHERITED - Routes inherited from the real Virtual Network routes
  /// STATIC - Static route set on the app only
  ///
  /// These values will be used for syncing an app's routes with those from a Virtual Network.
  late final pulumi.Output<String?> routeType;
  /// The starting address for this route. This may also include a CIDR notation, in which case the end address must not be specified.
  late final pulumi.Output<String?> startAddress;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [AppServicePlanRouteForVnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppServicePlanRouteForVnet]. {@macro pulumi_web_app_service_plan_route_for_vnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppServicePlanRouteForVnet(
    String name, {
    AppServicePlanRouteForVnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:AppServicePlanRouteForVnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endAddress = registerOutput<String?>('endAddress');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    routeType = registerOutput<String?>('routeType');
    startAddress = registerOutput<String?>('startAddress');
    type = registerOutput<String>('type');
  }
}
