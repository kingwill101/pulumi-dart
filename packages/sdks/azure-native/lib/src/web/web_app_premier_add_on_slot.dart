import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_premier_add_on_slot_args.dart';

/// Premier add-on.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppPremierAddOnSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/premieraddons/{premierAddOnName}
/// ```
class WebAppPremierAddOnSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Premier add on Marketplace offer.
  late final pulumi.Output<String?> marketplaceOffer;
  /// Premier add on Marketplace publisher.
  late final pulumi.Output<String?> marketplacePublisher;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Premier add on Product.
  late final pulumi.Output<String?> product;
  /// Premier add on SKU.
  late final pulumi.Output<String?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Premier add on Vendor.
  late final pulumi.Output<String?> vendor;

  /// Creates a new [WebAppPremierAddOnSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppPremierAddOnSlot]. {@macro pulumi_web_web_app_premier_add_on_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppPremierAddOnSlot(
    String name, {
    WebAppPremierAddOnSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppPremierAddOnSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    marketplaceOffer = registerOutput<String?>('marketplaceOffer');
    marketplacePublisher = registerOutput<String?>('marketplacePublisher');
    this.name = registerOutput<String>('name');
    product = registerOutput<String?>('product');
    sku = registerOutput<String?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vendor = registerOutput<String?>('vendor');
  }
}
