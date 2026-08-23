import 'package:pulumi/pulumi.dart' as pulumi;
import 'lication_load_balancer_args.dart';
import 'lication_load_balancer_state.dart';

/// Manages an Application Gateway for Containers (ALB).
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
/// const exampleLicationLoadBalancer = new azure.appconfiguration.LicationLoadBalancer("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_lication_load_balancer = azure.appconfiguration.LicationLoadBalancer("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
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
///     var exampleLicationLoadBalancer = new Azure.AppConfiguration.LicationLoadBalancer("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
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
/// 		_, err = appconfiguration.NewLicationLoadBalancer(ctx, "example", &appconfiguration.LicationLoadBalancerArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// resource "azure_appconfiguration_licationloadbalancer" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
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
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancer;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerArgs;
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
///         var exampleLicationLoadBalancer = new LicationLoadBalancer("exampleLicationLoadBalancer", LicationLoadBalancerArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///   exampleLicationLoadBalancer:
///     type: azure:appconfiguration:LicationLoadBalancer
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceNetworking` - 2025-01-01
///
/// ## Import
///
/// Application Gateway for Containers (ALB) can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appconfiguration/licationLoadBalancer:LicationLoadBalancer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ServiceNetworking/trafficControllers/alb1
/// ```
class LicationLoadBalancer extends pulumi.CustomResource {
  /// The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The primary configuration endpoints of the Application Gateway for Containers (ALB).
  late final pulumi.Output<String> primaryConfigurationEndpoint;
  /// The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers (ALB).
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [LicationLoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicationLoadBalancer]. {@macro pulumi_appconfiguration_lication_load_balancer_lication_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicationLoadBalancer(
    String name, {
    LicationLoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/licationLoadBalancer:LicationLoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryConfigurationEndpoint = registerOutput<String>('primaryConfigurationEndpoint');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [LicationLoadBalancer] resource's state with the given [name] and [id].
  static LicationLoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LicationLoadBalancerState? state,
  }) {
    return LicationLoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LicationLoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/licationLoadBalancer:LicationLoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryConfigurationEndpoint = registerOutput<String>('primaryConfigurationEndpoint');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
