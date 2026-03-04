import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_linked_backend_args.dart';

/// Static Site Linked Backend ARM resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Link a backend to a static site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticSiteLinkedBackend = new AzureNative.Web.StaticSiteLinkedBackend("staticSiteLinkedBackend", new()
///     {
///         BackendResourceId = "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/backendRg/providers/Microsoft.Web/sites/testBackend",
///         LinkedBackendName = "testBackend",
///         Name = "testStaticSite0",
///         Region = "West US 2",
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
/// 		_, err := web.NewStaticSiteLinkedBackend(ctx, "staticSiteLinkedBackend", &web.StaticSiteLinkedBackendArgs{
/// 			BackendResourceId: pulumi.String("/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/backendRg/providers/Microsoft.Web/sites/testBackend"),
/// 			LinkedBackendName: pulumi.String("testBackend"),
/// 			Name:              pulumi.String("testStaticSite0"),
/// 			Region:            pulumi.String("West US 2"),
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
/// import com.pulumi.azurenative.web.StaticSiteLinkedBackend;
/// import com.pulumi.azurenative.web.StaticSiteLinkedBackendArgs;
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
///         var staticSiteLinkedBackend = new StaticSiteLinkedBackend("staticSiteLinkedBackend", StaticSiteLinkedBackendArgs.builder()
///             .backendResourceId("/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/backendRg/providers/Microsoft.Web/sites/testBackend")
///             .linkedBackendName("testBackend")
///             .name("testStaticSite0")
///             .region("West US 2")
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
/// const staticSiteLinkedBackend = new azure_native.web.StaticSiteLinkedBackend("staticSiteLinkedBackend", {
///     backendResourceId: "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/backendRg/providers/Microsoft.Web/sites/testBackend",
///     linkedBackendName: "testBackend",
///     name: "testStaticSite0",
///     region: "West US 2",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// static_site_linked_backend = azure_native.web.StaticSiteLinkedBackend("staticSiteLinkedBackend",
///     backend_resource_id="/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/backendRg/providers/Microsoft.Web/sites/testBackend",
///     linked_backend_name="testBackend",
///     name="testStaticSite0",
///     region="West US 2",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   staticSiteLinkedBackend:
///     type: azure-native:web:StaticSiteLinkedBackend
///     properties:
///       backendResourceId: /subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/backendRg/providers/Microsoft.Web/sites/testBackend
///       linkedBackendName: testBackend
///       name: testStaticSite0
///       region: West US 2
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
/// $ pulumi import azure-native:web:StaticSiteLinkedBackend testBackend /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/staticSites/{name}/linkedBackends/{linkedBackendName}
/// ```
class StaticSiteLinkedBackend extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource id of the backend linked to the static site
  late final pulumi.Output<String?> backendResourceId;

  /// The date and time on which the backend was linked to the static site.
  late final pulumi.Output<String> createdOn;

  /// Kind of resource.
  late final pulumi.Output<String?> kind;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the linking process.
  late final pulumi.Output<String> provisioningState;

  /// The region of the backend linked to the static site
  late final pulumi.Output<String?> region;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [StaticSiteLinkedBackend].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSiteLinkedBackend]. {@macro pulumi_web_static_site_linked_backend_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSiteLinkedBackend(
    String name, {
    StaticSiteLinkedBackendArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:StaticSiteLinkedBackend',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendResourceId = registerOutput<String?>('backendResourceId');
    createdOn = registerOutput<String>('createdOn');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    region = registerOutput<String?>('region');
    type = registerOutput<String>('type');
  }
}
