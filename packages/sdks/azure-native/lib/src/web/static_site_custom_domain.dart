import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_custom_domain_args.dart';

/// Static Site Custom Domain Overview ARM resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a custom domain for a static site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticSiteCustomDomain = new AzureNative.Web.StaticSiteCustomDomain("staticSiteCustomDomain", new()
///     {
///         DomainName = "custom.domain.net",
///         Name = "testStaticSite0",
///         ResourceGroupName = "rg",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewStaticSiteCustomDomain(ctx, "staticSiteCustomDomain", &web.StaticSiteCustomDomainArgs{
/// 			DomainName:        pulumi.String("custom.domain.net"),
/// 			Name:              pulumi.String("testStaticSite0"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.StaticSiteCustomDomain;
/// import com.pulumi.azurenative.web.StaticSiteCustomDomainArgs;
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
///         var staticSiteCustomDomain = new StaticSiteCustomDomain("staticSiteCustomDomain", StaticSiteCustomDomainArgs.builder()
///             .domainName("custom.domain.net")
///             .name("testStaticSite0")
///             .resourceGroupName("rg")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const staticSiteCustomDomain = new azure_native.web.StaticSiteCustomDomain("staticSiteCustomDomain", {
///     domainName: "custom.domain.net",
///     name: "testStaticSite0",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// static_site_custom_domain = azure_native.web.StaticSiteCustomDomain("staticSiteCustomDomain",
///     domain_name="custom.domain.net",
///     name="testStaticSite0",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   staticSiteCustomDomain:
///     type: azure-native:web:StaticSiteCustomDomain
///     properties:
///       domainName: custom.domain.net
///       name: testStaticSite0
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:StaticSiteCustomDomain myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/staticSites/{name}/customDomains/{domainName}
/// ```
class StaticSiteCustomDomain extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The date and time on which the custom domain was created for the static site.
  late final pulumi.Output<String> createdOn;

  /// The domain name for the static site custom domain.
  late final pulumi.Output<String> domainName;
  late final pulumi.Output<String> errorMessage;

  /// Kind of resource.
  late final pulumi.Output<String?> kind;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// The status of the custom domain
  late final pulumi.Output<String> status;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The TXT record validation token
  late final pulumi.Output<String> validationToken;

  /// Creates a new [StaticSiteCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSiteCustomDomain]. {@macro pulumi_web_static_site_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSiteCustomDomain(
    String name, {
    StaticSiteCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:StaticSiteCustomDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdOn = registerOutput<String>('createdOn');
    domainName = registerOutput<String>('domainName');
    errorMessage = registerOutput<String>('errorMessage');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    validationToken = registerOutput<String>('validationToken');
  }
}
