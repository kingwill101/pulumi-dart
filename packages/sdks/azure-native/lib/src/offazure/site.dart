import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_args.dart';
import 'site_properties_response.dart';
import 'system_data_response.dart';

/// Site REST Resource.
///
/// Uses Azure REST API version 2020-07-07. In version 2.x of the Azure Native provider, it used API version 2020-07-07.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create VMware site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var site = new AzureNative.OffAzure.Site("site", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.OffAzure.Inputs.SitePropertiesArgs
///         {
///             ServicePrincipalIdentityDetails = new AzureNative.OffAzure.Inputs.SiteSpnPropertiesArgs
///             {
///                 AadAuthority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 ApplicationId = "e9f013df-2a2a-4871-b766-e79867f30348",
///                 Audience = "https://72f988bf-86f1-41af-91ab-2d7cd011db47/MaheshSite17ac9agentauthaadapp",
///                 ObjectId = "2cd492bc-7ef3-4ee0-b301-59a88108b47b",
///                 TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         ResourceGroupName = "pajindTest",
///         SiteName = "appliance1e39site",
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
/// 	offazure "github.com/pulumi/pulumi-azure-native-sdk/offazure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazure.NewSite(ctx, "site", &offazure.SiteArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &offazure.SitePropertiesArgs{
/// 				ServicePrincipalIdentityDetails: &offazure.SiteSpnPropertiesArgs{
/// 					AadAuthority:  pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					ApplicationId: pulumi.String("e9f013df-2a2a-4871-b766-e79867f30348"),
/// 					Audience:      pulumi.String("https://72f988bf-86f1-41af-91ab-2d7cd011db47/MaheshSite17ac9agentauthaadapp"),
/// 					ObjectId:      pulumi.String("2cd492bc-7ef3-4ee0-b301-59a88108b47b"),
/// 					TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("pajindTest"),
/// 			SiteName:          pulumi.String("appliance1e39site"),
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
/// import com.pulumi.azurenative.offazure.Site;
/// import com.pulumi.azurenative.offazure.SiteArgs;
/// import com.pulumi.azurenative.offazure.inputs.SitePropertiesArgs;
/// import com.pulumi.azurenative.offazure.inputs.SiteSpnPropertiesArgs;
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
///         var site = new Site("site", SiteArgs.builder()
///             .location("eastus")
///             .properties(SitePropertiesArgs.builder()
///                 .servicePrincipalIdentityDetails(SiteSpnPropertiesArgs.builder()
///                     .aadAuthority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .applicationId("e9f013df-2a2a-4871-b766-e79867f30348")
///                     .audience("https://72f988bf-86f1-41af-91ab-2d7cd011db47/MaheshSite17ac9agentauthaadapp")
///                     .objectId("2cd492bc-7ef3-4ee0-b301-59a88108b47b")
///                     .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .build())
///                 .build())
///             .resourceGroupName("pajindTest")
///             .siteName("appliance1e39site")
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
/// const site = new azure_native.offazure.Site("site", {
///     location: "eastus",
///     properties: {
///         servicePrincipalIdentityDetails: {
///             aadAuthority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             applicationId: "e9f013df-2a2a-4871-b766-e79867f30348",
///             audience: "https://72f988bf-86f1-41af-91ab-2d7cd011db47/MaheshSite17ac9agentauthaadapp",
///             objectId: "2cd492bc-7ef3-4ee0-b301-59a88108b47b",
///             tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     resourceGroupName: "pajindTest",
///     siteName: "appliance1e39site",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// site = azure_native.offazure.Site("site",
///     location="eastus",
///     properties={
///         "service_principal_identity_details": {
///             "aad_authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             "application_id": "e9f013df-2a2a-4871-b766-e79867f30348",
///             "audience": "https://72f988bf-86f1-41af-91ab-2d7cd011db47/MaheshSite17ac9agentauthaadapp",
///             "object_id": "2cd492bc-7ef3-4ee0-b301-59a88108b47b",
///             "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     resource_group_name="pajindTest",
///     site_name="appliance1e39site")
///
/// ```
///
/// ```yaml
/// resources:
///   site:
///     type: azure-native:offazure:Site
///     properties:
///       location: eastus
///       properties:
///         servicePrincipalIdentityDetails:
///           aadAuthority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///           applicationId: e9f013df-2a2a-4871-b766-e79867f30348
///           audience: https://72f988bf-86f1-41af-91ab-2d7cd011db47/MaheshSite17ac9agentauthaadapp
///           objectId: 2cd492bc-7ef3-4ee0-b301-59a88108b47b
///           tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///       resourceGroupName: pajindTest
///       siteName: appliance1e39site
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
/// $ pulumi import azure-native:offazure:Site appliance1e39site /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/VMwareSites/{siteName}
/// ```
class Site extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// eTag for concurrency control.
  late final pulumi.Output<String?> eTag;

  /// Azure location in which Sites is created.
  late final pulumi.Output<String?> location;

  /// Name of the VMware site.
  late final pulumi.Output<String?> name;

  /// Nested properties of VMWare site.
  late final pulumi.Output<SitePropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<Map<String, String>?> tags;

  /// Type of resource. Type = Microsoft.OffAzure/VMWareSites.
  late final pulumi.Output<String> type;

  /// Creates a new [Site].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Site]. {@macro pulumi_offazure_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Site(String name, {SiteArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:offazure:Site',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    properties = registerOutput<SitePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SitePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
