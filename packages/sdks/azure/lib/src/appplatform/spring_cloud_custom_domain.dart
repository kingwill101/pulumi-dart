import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_custom_domain_args.dart';
import 'spring_cloud_custom_domain_state.dart';

/// Manages an Azure Spring Cloud Custom Domain.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudCustomDomain` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const example = azure.dns.getZoneOutput({
///     name: "mydomain.com",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example-springcloudapp",
///     resourceGroupName: exampleResourceGroup.name,
///     serviceName: exampleSpringCloudService.name,
/// });
/// const exampleCNameRecord = new azure.dns.CNameRecord("example", {
///     name: "record1",
///     zoneName: example.name,
///     resourceGroupName: example.resourceGroupName,
///     ttl: 300,
///     record: exampleSpringCloudApp.fqdn,
/// });
/// const exampleSpringCloudCustomDomain = new azure.appplatform.SpringCloudCustomDomain("example", {
///     name: std.joinOutput({
///         separator: ".",
///         input: [
///             exampleCNameRecord.name,
///             exampleCNameRecord.zoneName,
///         ],
///     }).result,
///     springCloudAppId: exampleSpringCloudApp.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example = azure.dns.get_zone_output(name="mydomain.com",
///     resource_group_name=example_resource_group.name)
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example-springcloudapp",
///     resource_group_name=example_resource_group.name,
///     service_name=example_spring_cloud_service.name)
/// example_c_name_record = azure.dns.CNameRecord("example",
///     name="record1",
///     zone_name=example.name,
///     resource_group_name=example.resource_group_name,
///     ttl=300,
///     record=example_spring_cloud_app.fqdn)
/// example_spring_cloud_custom_domain = azure.appplatform.SpringCloudCustomDomain("example",
///     name=std.join_output(separator=".",
///         input=[
///             example_c_name_record.name,
///             example_c_name_record.zone_name,
///         ]).result,
///     spring_cloud_app_id=example_spring_cloud_app.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var example = Azure.Dns.GetZone.Invoke(new()
///     {
///         Name = "mydomain.com",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example-springcloudapp",
///         ResourceGroupName = exampleResourceGroup.Name,
///         ServiceName = exampleSpringCloudService.Name,
///     });
///
///     var exampleCNameRecord = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "record1",
///         ZoneName = example.Apply(getZoneResult => getZoneResult.Name),
///         ResourceGroupName = example.Apply(getZoneResult => getZoneResult.ResourceGroupName),
///         Ttl = 300,
///         Record = exampleSpringCloudApp.Fqdn,
///     });
///
///     var exampleSpringCloudCustomDomain = new Azure.AppPlatform.SpringCloudCustomDomain("example", new()
///     {
///         Name = Std.Join.Invoke(new()
///         {
///             Separator = ".",
///             Input = new[]
///             {
///                 exampleCNameRecord.Name,
///                 exampleCNameRecord.ZoneName,
///             },
///         }).Apply(invoke => invoke.Result),
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := dns.LookupZoneOutput(ctx, dns.GetZoneOutputArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example-springcloudapp"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCNameRecord, err := dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String("record1"),
/// 			ZoneName:          example.Name(),
/// 			ResourceGroupName: example.ResourceGroupName(),
/// 			Ttl:               pulumi.Int(300),
/// 			Record:            exampleSpringCloudApp.Fqdn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudCustomDomain(ctx, "example", &appplatform.SpringCloudCustomDomainArgs{
/// 			Name: std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("."),
/// 				Input: pulumi.StringArray{
/// 					exampleCNameRecord.Name,
/// 					exampleCNameRecord.ZoneName,
/// 				},
/// 			}, nil).Result(),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "azure_dns_getzone" "example" {
///   name                = "mydomain.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "rg-example"
///   location = "West Europe"
/// }
/// resource "azure_appplatform_springcloudservice" "example" {
///   name                = "example-springcloud"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_appplatform_springcloudapp" "example" {
///   name                = "example-springcloudapp"
///   resource_group_name = azure_core_resourcegroup.example.name
///   service_name        = azure_appplatform_springcloudservice.example.name
/// }
/// resource "azure_dns_cnamerecord" "example" {
///   name                = "record1"
///   zone_name           = data.azure_dns_getzone.example.name
///   resource_group_name = data.azure_dns_getzone.example.resource_group_name
///   ttl                 = 300
///   record              = azure_appplatform_springcloudapp.example.fqdn
/// }
/// resource "azure_appplatform_springcloudcustomdomain" "example" {
///   name                = join(".", [azure_dns_cnamerecord.example.name, azure_dns_cnamerecord.example.zone_name])
///   spring_cloud_app_id = azure_appplatform_springcloudapp.example.id
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
/// import com.pulumi.azure.dns.DnsFunctions;
/// import com.pulumi.azure.dns.inputs.GetZoneArgs;
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
/// import com.pulumi.azure.appplatform.SpringCloudCustomDomain;
/// import com.pulumi.azure.appplatform.SpringCloudCustomDomainArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         final var example = DnsFunctions.getZone(GetZoneArgs.builder()
///             .name("mydomain.com")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example-springcloudapp")
///             .resourceGroupName(exampleResourceGroup.name())
///             .serviceName(exampleSpringCloudService.name())
///             .build());
///
///         var exampleCNameRecord = new CNameRecord("exampleCNameRecord", CNameRecordArgs.builder()
///             .name("record1")
///             .zoneName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .ttl(300)
///             .record(exampleSpringCloudApp.fqdn())
///             .build());
///
///         var exampleSpringCloudCustomDomain = new SpringCloudCustomDomain("exampleSpringCloudCustomDomain", SpringCloudCustomDomainArgs.builder()
///             .name(StdFunctions.join(JoinArgs.builder()
///                 .separator(".")
///                 .input(
///                     exampleCNameRecord.name(),
///                     exampleCNameRecord.zoneName())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: rg-example
///       location: West Europe
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example-springcloudapp
///       resourceGroupName: ${exampleResourceGroup.name}
///       serviceName: ${exampleSpringCloudService.name}
///   exampleCNameRecord:
///     type: azure:dns:CNameRecord
///     name: example
///     properties:
///       name: record1
///       zoneName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       ttl: 300
///       record: ${exampleSpringCloudApp.fqdn}
///   exampleSpringCloudCustomDomain:
///     type: azure:appplatform:SpringCloudCustomDomain
///     name: example
///     properties:
///       name:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: .
///             input:
///               - ${exampleCNameRecord.name}
///               - ${exampleCNameRecord.zoneName}
///           return: result
///       springCloudAppId: ${exampleSpringCloudApp.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dns:getZone
///       arguments:
///         name: mydomain.com
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## Import
///
/// Spring Cloud Custom Domain can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudCustomDomain:SpringCloudCustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.AppPlatform/spring/spring1/apps/app1/domains/domain.com
/// ```
class SpringCloudCustomDomain extends pulumi.CustomResource {
  /// Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `thumbprint` is specified
  late final pulumi.Output<String?> certificateName;
  /// Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudAppId;
  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `certificateName` is specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> thumbprint;

  /// Creates a new [SpringCloudCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudCustomDomain]. {@macro pulumi_appplatform_spring_cloud_custom_domain_spring_cloud_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudCustomDomain(
    String name, {
    SpringCloudCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudCustomDomain:SpringCloudCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    certificateName = registerOutput<String?>('certificateName');
    this.name = registerOutput<String>('name');
    springCloudAppId = registerOutput<String>('springCloudAppId');
    thumbprint = registerOutput<String?>('thumbprint');
  }

  /// Gets an existing [SpringCloudCustomDomain] resource's state with the given [name] and [id].
  static SpringCloudCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudCustomDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudCustomDomain:SpringCloudCustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateName = registerOutput<String?>('certificateName');
    this.name = registerOutput<String>('name');
    springCloudAppId = registerOutput<String>('springCloudAppId');
    thumbprint = registerOutput<String?>('thumbprint');
  }

  /// Creates a typed reference to an existing [SpringCloudCustomDomain] resource.
  SpringCloudCustomDomain.reference(String urn)
    : super(
        'azure:appplatform/springCloudCustomDomain:SpringCloudCustomDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateName = registerOutput<String?>('certificateName');
    this.name = registerOutput<String>('name');
    springCloudAppId = registerOutput<String>('springCloudAppId');
    thumbprint = registerOutput<String?>('thumbprint');
  }
}
