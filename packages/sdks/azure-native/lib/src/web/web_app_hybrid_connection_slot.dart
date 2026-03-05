import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_hybrid_connection_slot_args.dart';

/// Hybrid Connection contract. This is used to configure a Hybrid Connection.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppHybridConnectionSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/hybridConnectionNamespaces/{namespaceName}/relays/{relayName}
/// ```
class WebAppHybridConnectionSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The hostname of the endpoint.
  late final pulumi.Output<String?> hostname;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// The port of the endpoint.
  late final pulumi.Output<int?> port;
  /// The ARM URI to the Service Bus relay.
  late final pulumi.Output<String?> relayArmUri;
  /// The name of the Service Bus relay.
  late final pulumi.Output<String?> relayName;
  /// The name of the Service Bus key which has Send permissions. This is used to authenticate to Service Bus.
  late final pulumi.Output<String?> sendKeyName;
  /// The value of the Service Bus key. This is used to authenticate to Service Bus. In ARM this key will not be returned
  /// normally, use the POST /listKeys API instead.
  late final pulumi.Output<String?> sendKeyValue;
  /// The name of the Service Bus namespace.
  late final pulumi.Output<String?> serviceBusNamespace;
  /// The suffix for the service bus endpoint. By default this is .servicebus.windows.net
  late final pulumi.Output<String?> serviceBusSuffix;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppHybridConnectionSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppHybridConnectionSlot]. {@macro pulumi_web_web_app_hybrid_connection_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppHybridConnectionSlot(
    String name, {
    WebAppHybridConnectionSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppHybridConnectionSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hostname = registerOutput<String?>('hostname');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    relayArmUri = registerOutput<String?>('relayArmUri');
    relayName = registerOutput<String?>('relayName');
    sendKeyName = registerOutput<String?>('sendKeyName');
    sendKeyValue = registerOutput<String?>('sendKeyValue');
    serviceBusNamespace = registerOutput<String?>('serviceBusNamespace');
    serviceBusSuffix = registerOutput<String?>('serviceBusSuffix');
    type = registerOutput<String>('type');
  }
}
