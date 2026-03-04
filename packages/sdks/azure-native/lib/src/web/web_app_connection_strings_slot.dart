import 'package:pulumi/pulumi.dart' as pulumi;
import 'conn_string_value_type_pair_response.dart';
import 'web_app_connection_strings_slot_args.dart';

/// String dictionary resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppConnectionStringsSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/config/connectionstrings
/// ```
class WebAppConnectionStringsSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Kind of resource.
  late final pulumi.Output<String?> kind;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// Connection strings.
  late final pulumi.Output<Map<String, ConnStringValueTypePairResponse>>
  properties;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppConnectionStringsSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppConnectionStringsSlot]. {@macro pulumi_web_web_app_connection_strings_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppConnectionStringsSlot(
    String name, {
    WebAppConnectionStringsSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:WebAppConnectionStringsSlot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, ConnStringValueTypePairResponse>>(
      'properties',
    );
    type = registerOutput<String>('type');
  }
}
