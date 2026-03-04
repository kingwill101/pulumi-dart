import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_premier_add_on_args.dart';

/// Premier add-on.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppPremierAddOn myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/premieraddons/{premierAddOnName}
/// ```
class WebAppPremierAddOn extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;

  /// Resource Location.
  late final pulumi.Output<String> location;

  /// Premier add on Marketplace offer.
  late final pulumi.Output<String?> marketplaceOffer;

  /// Premier add on Marketplace publisher.
  late final pulumi.Output<String?> marketplacePublisher;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// Premier add on Product.
  late final pulumi.Output<String?> product;

  /// Premier add on SKU.
  late final pulumi.Output<String?> sku;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Premier add on Vendor.
  late final pulumi.Output<String?> vendor;

  /// Creates a new [WebAppPremierAddOn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppPremierAddOn]. {@macro pulumi_web_web_app_premier_add_on_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppPremierAddOn(
    String name, {
    WebAppPremierAddOnArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:WebAppPremierAddOn',
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vendor = registerOutput<String?>('vendor');
  }
}
