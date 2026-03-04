import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_order_args.dart';
import 'certificate_order_state.dart';

/// Manages an App Service Certificate Order.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCertificateOrder = new azure.appservice.CertificateOrder("example", {
///     name: "example-cert-order",
///     resourceGroupName: example.name,
///     location: "global",
///     distinguishedName: "CN=example.com",
///     productType: "Standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_certificate_order = azure.appservice.CertificateOrder("example",
///     name="example-cert-order",
///     resource_group_name=example.name,
///     location="global",
///     distinguished_name="CN=example.com",
///     product_type="Standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCertificateOrder = new Azure.AppService.CertificateOrder("example", new()
///     {
///         Name = "example-cert-order",
///         ResourceGroupName = example.Name,
///         Location = "global",
///         DistinguishedName = "CN=example.com",
///         ProductType = "Standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewCertificateOrder(ctx, "example", &appservice.CertificateOrderArgs{
/// 			Name:              pulumi.String("example-cert-order"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("global"),
/// 			DistinguishedName: pulumi.String("CN=example.com"),
/// 			ProductType:       pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.CertificateOrder;
/// import com.pulumi.azure.appservice.CertificateOrderArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCertificateOrder = new CertificateOrder("exampleCertificateOrder", CertificateOrderArgs.builder()
///             .name("example-cert-order")
///             .resourceGroupName(example.name())
///             .location("global")
///             .distinguishedName("CN=example.com")
///             .productType("Standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleCertificateOrder:
///     type: azure:appservice:CertificateOrder
///     name: example
///     properties:
///       name: example-cert-order
///       resourceGroupName: ${example.name}
///       location: global
///       distinguishedName: CN=example.com
///       productType: Standard
/// ```
///
///
/// ## Import
///
/// App Service Certificate Orders can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/certificateOrder:CertificateOrder example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.CertificateRegistration/certificateOrders/certificateorder1
/// ```
class CertificateOrder extends pulumi.CustomResource {
  /// Reasons why App Service Certificate is not renewable at the current moment.
  late final pulumi.Output<List<String>>
  appServiceCertificateNotRenewableReasons;

  /// true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`.
  late final pulumi.Output<bool?> autoRenew;

  /// State of the Key Vault secret. A `certificates` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> certificates;

  /// Last CSR that was created for this order.
  late final pulumi.Output<String> csr;

  /// The Distinguished Name for the App Service Certificate Order.
  ///
  /// &gt; **Note:** Either `csr` or `distinguished_name` must be set - but not both.
  late final pulumi.Output<String> distinguishedName;

  /// Domain verification token.
  late final pulumi.Output<String> domainVerificationToken;

  /// Certificate expiration time.
  late final pulumi.Output<String> expirationTime;

  /// Certificate thumbprint intermediate certificate.
  late final pulumi.Output<String> intermediateThumbprint;

  /// Whether the private key is external or not.
  late final pulumi.Output<bool> isPrivateKeyExternal;

  /// Certificate key size. Defaults to `2048`.
  late final pulumi.Output<int?> keySize;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`.
  late final pulumi.Output<String> location;

  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`.
  late final pulumi.Output<String?> productType;

  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Certificate thumbprint for root certificate.
  late final pulumi.Output<String> rootThumbprint;

  /// Certificate thumbprint for signed certificate.
  late final pulumi.Output<String> signedCertificateThumbprint;

  /// Current order status.
  late final pulumi.Output<String> status;

  /// (Optional) A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Duration in years (must be between `1` and `3`). Defaults to `1`.
  late final pulumi.Output<int?> validityInYears;

  /// Creates a new [CertificateOrder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateOrder]. {@macro pulumi_appservice_certificate_order_certificate_order_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateOrder(
    String name, {
    CertificateOrderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/certificateOrder:CertificateOrder',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceCertificateNotRenewableReasons = registerOutput<List<String>>(
      'appServiceCertificateNotRenewableReasons',
    );
    autoRenew = registerOutput<bool?>('autoRenew');
    certificates = registerOutput<List<Map<String, dynamic>>>('certificates');
    csr = registerOutput<String>('csr');
    distinguishedName = registerOutput<String>('distinguishedName');
    domainVerificationToken = registerOutput<String>('domainVerificationToken');
    expirationTime = registerOutput<String>('expirationTime');
    intermediateThumbprint = registerOutput<String>('intermediateThumbprint');
    isPrivateKeyExternal = registerOutput<bool>('isPrivateKeyExternal');
    keySize = registerOutput<int?>('keySize');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    productType = registerOutput<String?>('productType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rootThumbprint = registerOutput<String>('rootThumbprint');
    signedCertificateThumbprint = registerOutput<String>(
      'signedCertificateThumbprint',
    );
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    validityInYears = registerOutput<int?>('validityInYears');
  }

  /// Gets an existing [CertificateOrder] resource's state with the given [name] and [id].
  static CertificateOrder get(
    String name,
    pulumi.Input<String> id, {
    CertificateOrderState? state,
  }) {
    return CertificateOrder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CertificateOrder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/certificateOrder:CertificateOrder',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServiceCertificateNotRenewableReasons = registerOutput<List<String>>(
      'appServiceCertificateNotRenewableReasons',
    );
    autoRenew = registerOutput<bool?>('autoRenew');
    certificates = registerOutput<List<Map<String, dynamic>>>('certificates');
    csr = registerOutput<String>('csr');
    distinguishedName = registerOutput<String>('distinguishedName');
    domainVerificationToken = registerOutput<String>('domainVerificationToken');
    expirationTime = registerOutput<String>('expirationTime');
    intermediateThumbprint = registerOutput<String>('intermediateThumbprint');
    isPrivateKeyExternal = registerOutput<bool>('isPrivateKeyExternal');
    keySize = registerOutput<int?>('keySize');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    productType = registerOutput<String?>('productType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rootThumbprint = registerOutput<String>('rootThumbprint');
    signedCertificateThumbprint = registerOutput<String>(
      'signedCertificateThumbprint',
    );
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    validityInYears = registerOutput<int?>('validityInYears');
  }
}
