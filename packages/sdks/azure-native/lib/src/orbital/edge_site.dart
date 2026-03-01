import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_site_args.dart';
import 'edge_sites_properties_response_global_communications_site.dart';
import 'system_data_response.dart';

/// A customer's reference to a global communications site site.
///
/// Uses Azure REST API version 2024-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Edge Site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeSite = new AzureNative.Orbital.EdgeSite("edgeSite", new()
///     {
///         EdgeSiteName = "es1",
///         GlobalCommunicationsSite = new AzureNative.Orbital.Inputs.EdgeSitesPropertiesGlobalCommunicationsSiteArgs
///         {
///             Id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon",
///         },
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
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
/// 	orbital "github.com/pulumi/pulumi-azure-native-sdk/orbital/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := orbital.NewEdgeSite(ctx, "edgeSite", &orbital.EdgeSiteArgs{
/// 			EdgeSiteName: pulumi.String("es1"),
/// 			GlobalCommunicationsSite: &orbital.EdgeSitesPropertiesGlobalCommunicationsSiteArgs{
/// 				Id: pulumi.String("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
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
/// import com.pulumi.azurenative.orbital.EdgeSite;
/// import com.pulumi.azurenative.orbital.EdgeSiteArgs;
/// import com.pulumi.azurenative.orbital.inputs.EdgeSitesPropertiesGlobalCommunicationsSiteArgs;
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
///         var edgeSite = new EdgeSite("edgeSite", EdgeSiteArgs.builder()
///             .edgeSiteName("es1")
///             .globalCommunicationsSite(EdgeSitesPropertiesGlobalCommunicationsSiteArgs.builder()
///                 .id("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon")
///                 .build())
///             .location("westus")
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
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
/// const edgeSite = new azure_native.orbital.EdgeSite("edgeSite", {
///     edgeSiteName: "es1",
///     globalCommunicationsSite: {
///         id: "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon",
///     },
///     location: "westus",
///     resourceGroupName: "rg1",
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_site = azure_native.orbital.EdgeSite("edgeSite",
///     edge_site_name="es1",
///     global_communications_site={
///         "id": "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon",
///     },
///     location="westus",
///     resource_group_name="rg1",
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   edgeSite:
///     type: azure-native:orbital:EdgeSite
///     properties:
///       edgeSiteName: es1
///       globalCommunicationsSite:
///         id: /subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/providers/Microsoft.Orbital/globalCommunicationsSites/contoso-Vernon
///       location: westus
///       resourceGroupName: rg1
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:orbital:EdgeSite es1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Orbital/edgeSites/{edgeSiteName}
/// ```
class EdgeSite extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A reference to global communications site.
  late final pulumi.Output<EdgeSitesPropertiesResponseGlobalCommunicationsSite> globalCommunicationsSite;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EdgeSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeSite]. {@macro pulumi_orbital_edge_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeSite(
    String name, {
    EdgeSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:orbital:EdgeSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.globalCommunicationsSite = registerOutput<EdgeSitesPropertiesResponseGlobalCommunicationsSite>('globalCommunicationsSite');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
