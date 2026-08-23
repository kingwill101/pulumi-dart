import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_args.dart';
import 'spring_cloud_app_identity.dart';
import 'spring_cloud_app_ingress_settings.dart';
import 'spring_cloud_app_persistent_disk.dart';
import 'spring_cloud_app_state.dart';

/// Manage an Azure Spring Cloud Application.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudApp` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example-springcloudapp",
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example-springcloudapp",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name,
///     identity={
///         "type": "SystemAssigned",
///     })
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
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example-springcloudapp",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
///         Identity = new Azure.AppPlatform.Inputs.SpringCloudAppIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
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
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example-springcloudapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 			Identity: &appplatform.SpringCloudAppIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
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
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
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
///   identity = {
///     type = "SystemAssigned"
///   }
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudAppIdentityArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example-springcloudapp")
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .identity(SpringCloudAppIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
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
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example-springcloudapp
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
///       identity:
///         type: SystemAssigned
/// ```
///
///
/// ## Import
///
/// Spring Cloud Application can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudApp:SpringCloudApp example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.AppPlatform/spring/myservice/apps/myapp
/// ```
class SpringCloudApp extends pulumi.CustomResource {
  /// A JSON object that contains the addon configurations of the Spring Cloud Service.
  late final pulumi.Output<String> addonJson;
  /// A `customPersistentDisk` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customPersistentDisks;
  /// The Fully Qualified DNS Name of the Spring Application in the service.
  late final pulumi.Output<String> fqdn;
  /// Is only HTTPS allowed? Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as defined below.
  late final pulumi.Output<SpringCloudAppIdentity?> identity;
  /// An `ingressSettings` block as defined below.
  late final pulumi.Output<SpringCloudAppIngressSettings> ingressSettings;
  /// Does the Spring Cloud Application have public endpoint? Defaults to `false`.
  late final pulumi.Output<bool?> isPublic;
  /// Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// An `persistentDisk` block as defined below.
  late final pulumi.Output<SpringCloudAppPersistentDisk> persistentDisk;
  /// Should the App in vnet injection instance exposes endpoint which could be accessed from Internet?
  late final pulumi.Output<bool?> publicEndpointEnabled;
  /// Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serviceName;
  /// Is End to End TLS Enabled? Defaults to `false`.
  late final pulumi.Output<bool?> tlsEnabled;
  /// The public endpoint of the Spring Cloud Application.
  late final pulumi.Output<String> url;

  /// Creates a new [SpringCloudApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudApp]. {@macro pulumi_appplatform_spring_cloud_app_spring_cloud_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudApp(
    String name, {
    SpringCloudAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApp:SpringCloudApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonJson = registerOutput<String>('addonJson');
    customPersistentDisks = registerOutput<List<Map<String, dynamic>>?>('customPersistentDisks');
    fqdn = registerOutput<String>('fqdn');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<SpringCloudAppIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudAppIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingressSettings = registerOutput<SpringCloudAppIngressSettings>('ingressSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudAppIngressSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isPublic = registerOutput<bool?>('isPublic');
    this.name = registerOutput<String>('name');
    persistentDisk = registerOutput<SpringCloudAppPersistentDisk>('persistentDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudAppPersistentDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicEndpointEnabled = registerOutput<bool?>('publicEndpointEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceName = registerOutput<String>('serviceName');
    tlsEnabled = registerOutput<bool?>('tlsEnabled');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [SpringCloudApp] resource's state with the given [name] and [id].
  static SpringCloudApp get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudAppState? state,
  }) {
    return SpringCloudApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApp:SpringCloudApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonJson = registerOutput<String>('addonJson');
    customPersistentDisks = registerOutput<List<Map<String, dynamic>>?>('customPersistentDisks');
    fqdn = registerOutput<String>('fqdn');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<SpringCloudAppIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudAppIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingressSettings = registerOutput<SpringCloudAppIngressSettings>('ingressSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudAppIngressSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isPublic = registerOutput<bool?>('isPublic');
    this.name = registerOutput<String>('name');
    persistentDisk = registerOutput<SpringCloudAppPersistentDisk>('persistentDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudAppPersistentDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicEndpointEnabled = registerOutput<bool?>('publicEndpointEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceName = registerOutput<String>('serviceName');
    tlsEnabled = registerOutput<bool?>('tlsEnabled');
    url = registerOutput<String>('url');
  }
}
