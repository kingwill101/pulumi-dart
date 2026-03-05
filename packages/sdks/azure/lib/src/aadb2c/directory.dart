import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_args.dart';
import 'directory_state.dart';

/// Manages an AAD B2C Directory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.aadb2c.Directory("example", {
///     countryCode: "US",
///     dataResidencyLocation: "United States",
///     displayName: "example-b2c-tenant",
///     domainName: "exampleb2ctenant.onmicrosoft.com",
///     resourceGroupName: "example-rg",
///     skuName: "PremiumP1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.aadb2c.Directory("example",
///     country_code="US",
///     data_residency_location="United States",
///     display_name="example-b2c-tenant",
///     domain_name="exampleb2ctenant.onmicrosoft.com",
///     resource_group_name="example-rg",
///     sku_name="PremiumP1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.AadB2C.Directory("example", new()
///     {
///         CountryCode = "US",
///         DataResidencyLocation = "United States",
///         DisplayName = "example-b2c-tenant",
///         DomainName = "exampleb2ctenant.onmicrosoft.com",
///         ResourceGroupName = "example-rg",
///         SkuName = "PremiumP1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/aadb2c"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aadb2c.NewDirectory(ctx, "example", &aadb2c.DirectoryArgs{
/// 			CountryCode:           pulumi.String("US"),
/// 			DataResidencyLocation: pulumi.String("United States"),
/// 			DisplayName:           pulumi.String("example-b2c-tenant"),
/// 			DomainName:            pulumi.String("exampleb2ctenant.onmicrosoft.com"),
/// 			ResourceGroupName:     pulumi.String("example-rg"),
/// 			SkuName:               pulumi.String("PremiumP1"),
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
/// import com.pulumi.azure.aadb2c.Directory;
/// import com.pulumi.azure.aadb2c.DirectoryArgs;
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
///         var example = new Directory("example", DirectoryArgs.builder()
///             .countryCode("US")
///             .dataResidencyLocation("United States")
///             .displayName("example-b2c-tenant")
///             .domainName("exampleb2ctenant.onmicrosoft.com")
///             .resourceGroupName("example-rg")
///             .skuName("PremiumP1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:aadb2c:Directory
///     properties:
///       countryCode: US
///       dataResidencyLocation: United States
///       displayName: example-b2c-tenant
///       domainName: exampleb2ctenant.onmicrosoft.com
///       resourceGroupName: example-rg
///       skuName: PremiumP1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AzureActiveDirectory` - 2021-04-01-preview
///
/// ## Import
///
/// AAD B2C Directories can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:aadb2c/directory:Directory example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AzureActiveDirectory/b2cDirectories/directory-name
/// ```
class Directory extends pulumi.CustomResource {
  /// The type of billing for the AAD B2C tenant. Possible values include: `MAU` or `Auths`.
  late final pulumi.Output<String> billingType;
  /// Country code of the B2C tenant. The `country_code` should be valid for the specified `data_residency_location`. See [official docs](https://aka.ms/B2CDataResidency) for valid country codes. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created.
  late final pulumi.Output<String> countryCode;
  /// Location in which the B2C tenant is hosted and data resides. The `data_residency_location` should be valid for the specified `country_code`. See [official docs](https://aka.ms/B2CDataResidenc) for more information. Changing this forces a new AAD B2C Directory to be created. Possible values are `Asia Pacific`, `Australia`, `Europe`, `Global` and `United States`.
  late final pulumi.Output<String> dataResidencyLocation;
  /// The initial display name of the B2C tenant. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created.
  late final pulumi.Output<String> displayName;
  /// Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix. Changing this forces a new AAD B2C Directory to be created.
  late final pulumi.Output<String> domainName;
  /// The date from which the billing type took effect. May not be populated until after the first billing cycle.
  late final pulumi.Output<String> effectiveStartDate;
  /// The name of the Resource Group where the AAD B2C Directory should exist. Changing this forces a new AAD B2C Directory to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Billing SKU for the B2C tenant. Must be one of: `PremiumP1` or `PremiumP2` (`Standard` is not supported). See [official docs](https://aka.ms/b2cBilling) for more information.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the AAD B2C Directory.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Tenant ID for the AAD B2C tenant.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [Directory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Directory]. {@macro pulumi_aadb2c_directory_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Directory(
    String name, {
    DirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:aadb2c/directory:Directory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingType = registerOutput<String>('billingType');
    countryCode = registerOutput<String>('countryCode');
    dataResidencyLocation = registerOutput<String>('dataResidencyLocation');
    displayName = registerOutput<String>('displayName');
    domainName = registerOutput<String>('domainName');
    effectiveStartDate = registerOutput<String>('effectiveStartDate');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [Directory] resource's state with the given [name] and [id].
  static Directory get(
    String name,
    pulumi.Input<String> id, {
    DirectoryState? state,
  }) {
    return Directory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Directory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:aadb2c/directory:Directory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingType = registerOutput<String>('billingType');
    countryCode = registerOutput<String>('countryCode');
    dataResidencyLocation = registerOutput<String>('dataResidencyLocation');
    displayName = registerOutput<String>('displayName');
    domainName = registerOutput<String>('domainName');
    effectiveStartDate = registerOutput<String>('effectiveStartDate');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }
}
