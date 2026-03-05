import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootsite_args.dart';
import 'springbootsites_model_response_extended_location.dart';
import 'springbootsites_properties_response.dart';
import 'system_data_response.dart';

/// The springbootsites envelope resource definition.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazurespringboot [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### springbootsites_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var springbootsite = new AzureNative.OffAzureSpringBoot.Springbootsite("springbootsite", new()
///     {
///         ExtendedLocation = new AzureNative.OffAzureSpringBoot.Inputs.SpringbootsitesModelExtendedLocationArgs
///         {
///             Name = "rywvpbfsqovhlfirtwisugsdsfsgf",
///             Type = "lvsb",
///         },
///         Location = "tgobtvxktootwhhvjtsmpddvlqlrq",
///         Properties = new AzureNative.OffAzureSpringBoot.Inputs.SpringbootsitesPropertiesArgs
///         {
///             MasterSiteId = "xsoimrgshsactearljwuljmi",
///             MigrateProjectId = "wwuattybgco",
///         },
///         ResourceGroupName = "rgspringbootsites",
///         SpringbootsitesName = "xrmzlavpewxtfeitghdrj",
///         Tags =
///         {
///             { "key3558", "xeuhtglamqzj" },
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
/// 	offazurespringboot "github.com/pulumi/pulumi-azure-native-sdk/offazurespringboot/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazurespringboot.NewSpringbootsite(ctx, "springbootsite", &offazurespringboot.SpringbootsiteArgs{
/// 			ExtendedLocation: &offazurespringboot.SpringbootsitesModelExtendedLocationArgs{
/// 				Name: pulumi.String("rywvpbfsqovhlfirtwisugsdsfsgf"),
/// 				Type: pulumi.String("lvsb"),
/// 			},
/// 			Location: pulumi.String("tgobtvxktootwhhvjtsmpddvlqlrq"),
/// 			Properties: &offazurespringboot.SpringbootsitesPropertiesArgs{
/// 				MasterSiteId:     pulumi.String("xsoimrgshsactearljwuljmi"),
/// 				MigrateProjectId: pulumi.String("wwuattybgco"),
/// 			},
/// 			ResourceGroupName:   pulumi.String("rgspringbootsites"),
/// 			SpringbootsitesName: pulumi.String("xrmzlavpewxtfeitghdrj"),
/// 			Tags: pulumi.StringMap{
/// 				"key3558": pulumi.String("xeuhtglamqzj"),
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
/// import com.pulumi.azurenative.offazurespringboot.Springbootsite;
/// import com.pulumi.azurenative.offazurespringboot.SpringbootsiteArgs;
/// import com.pulumi.azurenative.offazurespringboot.inputs.SpringbootsitesModelExtendedLocationArgs;
/// import com.pulumi.azurenative.offazurespringboot.inputs.SpringbootsitesPropertiesArgs;
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
///         var springbootsite = new Springbootsite("springbootsite", SpringbootsiteArgs.builder()
///             .extendedLocation(SpringbootsitesModelExtendedLocationArgs.builder()
///                 .name("rywvpbfsqovhlfirtwisugsdsfsgf")
///                 .type("lvsb")
///                 .build())
///             .location("tgobtvxktootwhhvjtsmpddvlqlrq")
///             .properties(SpringbootsitesPropertiesArgs.builder()
///                 .masterSiteId("xsoimrgshsactearljwuljmi")
///                 .migrateProjectId("wwuattybgco")
///                 .build())
///             .resourceGroupName("rgspringbootsites")
///             .springbootsitesName("xrmzlavpewxtfeitghdrj")
///             .tags(Map.of("key3558", "xeuhtglamqzj"))
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
/// const springbootsite = new azure_native.offazurespringboot.Springbootsite("springbootsite", {
///     extendedLocation: {
///         name: "rywvpbfsqovhlfirtwisugsdsfsgf",
///         type: "lvsb",
///     },
///     location: "tgobtvxktootwhhvjtsmpddvlqlrq",
///     properties: {
///         masterSiteId: "xsoimrgshsactearljwuljmi",
///         migrateProjectId: "wwuattybgco",
///     },
///     resourceGroupName: "rgspringbootsites",
///     springbootsitesName: "xrmzlavpewxtfeitghdrj",
///     tags: {
///         key3558: "xeuhtglamqzj",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// springbootsite = azure_native.offazurespringboot.Springbootsite("springbootsite",
///     extended_location={
///         "name": "rywvpbfsqovhlfirtwisugsdsfsgf",
///         "type": "lvsb",
///     },
///     location="tgobtvxktootwhhvjtsmpddvlqlrq",
///     properties={
///         "master_site_id": "xsoimrgshsactearljwuljmi",
///         "migrate_project_id": "wwuattybgco",
///     },
///     resource_group_name="rgspringbootsites",
///     springbootsites_name="xrmzlavpewxtfeitghdrj",
///     tags={
///         "key3558": "xeuhtglamqzj",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   springbootsite:
///     type: azure-native:offazurespringboot:Springbootsite
///     properties:
///       extendedLocation:
///         name: rywvpbfsqovhlfirtwisugsdsfsgf
///         type: lvsb
///       location: tgobtvxktootwhhvjtsmpddvlqlrq
///       properties:
///         masterSiteId: xsoimrgshsactearljwuljmi
///         migrateProjectId: wwuattybgco
///       resourceGroupName: rgspringbootsites
///       springbootsitesName: xrmzlavpewxtfeitghdrj
///       tags:
///         key3558: xeuhtglamqzj
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### springbootsites_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var springbootsite = new AzureNative.OffAzureSpringBoot.Springbootsite("springbootsite", new()
///     {
///         Location = "tgobtvxktootwhhvjtsmpddvlqlrq",
///         ResourceGroupName = "rgspringbootsites",
///         SpringbootsitesName = "xrmzlavpewxtfeitghdrj",
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
/// 	offazurespringboot "github.com/pulumi/pulumi-azure-native-sdk/offazurespringboot/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazurespringboot.NewSpringbootsite(ctx, "springbootsite", &offazurespringboot.SpringbootsiteArgs{
/// 			Location:            pulumi.String("tgobtvxktootwhhvjtsmpddvlqlrq"),
/// 			ResourceGroupName:   pulumi.String("rgspringbootsites"),
/// 			SpringbootsitesName: pulumi.String("xrmzlavpewxtfeitghdrj"),
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
/// import com.pulumi.azurenative.offazurespringboot.Springbootsite;
/// import com.pulumi.azurenative.offazurespringboot.SpringbootsiteArgs;
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
///         var springbootsite = new Springbootsite("springbootsite", SpringbootsiteArgs.builder()
///             .location("tgobtvxktootwhhvjtsmpddvlqlrq")
///             .resourceGroupName("rgspringbootsites")
///             .springbootsitesName("xrmzlavpewxtfeitghdrj")
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
/// const springbootsite = new azure_native.offazurespringboot.Springbootsite("springbootsite", {
///     location: "tgobtvxktootwhhvjtsmpddvlqlrq",
///     resourceGroupName: "rgspringbootsites",
///     springbootsitesName: "xrmzlavpewxtfeitghdrj",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// springbootsite = azure_native.offazurespringboot.Springbootsite("springbootsite",
///     location="tgobtvxktootwhhvjtsmpddvlqlrq",
///     resource_group_name="rgspringbootsites",
///     springbootsites_name="xrmzlavpewxtfeitghdrj")
///
/// ```
///
/// ```yaml
/// resources:
///   springbootsite:
///     type: azure-native:offazurespringboot:Springbootsite
///     properties:
///       location: tgobtvxktootwhhvjtsmpddvlqlrq
///       resourceGroupName: rgspringbootsites
///       springbootsitesName: xrmzlavpewxtfeitghdrj
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
/// $ pulumi import azure-native:offazurespringboot:Springbootsite jjyngfg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzureSpringBoot/springbootsites/{springbootsitesName}
/// ```
class Springbootsite extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extended location definition.
  late final pulumi.Output<SpringbootsitesModelResponseExtendedLocation?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The springbootsites resource definition.
  late final pulumi.Output<SpringbootsitesPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Springbootsite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Springbootsite]. {@macro pulumi_offazurespringboot_springbootsite_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Springbootsite(
    String name, {
    SpringbootsiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazurespringboot:Springbootsite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<SpringbootsitesModelResponseExtendedLocation?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringbootsitesModelResponseExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SpringbootsitesPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringbootsitesPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
