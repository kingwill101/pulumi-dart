import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_domain_ownership_identifier_slot_args.dart';

/// A domain specific resource identifier.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppDomainOwnershipIdentifierSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/domainOwnershipIdentifiers/{domainOwnershipIdentifierName}
/// ```
class WebAppDomainOwnershipIdentifierSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// String representation of the identity.
  late final pulumi.Output<String?> value;

  /// Creates a new [WebAppDomainOwnershipIdentifierSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppDomainOwnershipIdentifierSlot]. {@macro pulumi_web_web_app_domain_ownership_identifier_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppDomainOwnershipIdentifierSlot(
    String name, {
    WebAppDomainOwnershipIdentifierSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppDomainOwnershipIdentifierSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
