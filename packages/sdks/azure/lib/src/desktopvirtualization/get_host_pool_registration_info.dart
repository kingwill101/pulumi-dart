import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_pool_registration_info_args.dart';
import 'get_host_pool_registration_info_state.dart';

/// Manages the Registration Info for a Virtual Desktop Host Pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-hostpool",
///     location: "westeurope",
/// });
/// const exampleHostPool = new azure.desktopvirtualization.HostPool("example", {
///     name: "example-HP",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Pooled",
///     validateEnvironment: true,
///     loadBalancerType: "BreadthFirst",
/// });
/// const exampleGetHostPoolRegistrationInfo = new azure.desktopvirtualization.GetHostPoolRegistrationInfo("example", {
///     hostpoolId: exampleHostPool.id,
///     expirationDate: "2022-01-01T23:40:52Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-hostpool",
///     location="westeurope")
/// example_host_pool = azure.desktopvirtualization.HostPool("example",
///     name="example-HP",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Pooled",
///     validate_environment=True,
///     load_balancer_type="BreadthFirst")
/// example_get_host_pool_registration_info = azure.desktopvirtualization.GetHostPoolRegistrationInfo("example",
///     hostpool_id=example_host_pool.id,
///     expiration_date="2022-01-01T23:40:52Z")
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
///         Name = "example-hostpool",
///         Location = "westeurope",
///     });
///
///     var exampleHostPool = new Azure.DesktopVirtualization.HostPool("example", new()
///     {
///         Name = "example-HP",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Pooled",
///         ValidateEnvironment = true,
///         LoadBalancerType = "BreadthFirst",
///     });
///
///     var exampleGetHostPoolRegistrationInfo = new Azure.DesktopVirtualization.GetHostPoolRegistrationInfo("example", new()
///     {
///         HostpoolId = exampleHostPool.Id,
///         ExpirationDate = "2022-01-01T23:40:52Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/desktopvirtualization"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-hostpool"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHostPool, err := desktopvirtualization.NewHostPool(ctx, "example", &desktopvirtualization.HostPoolArgs{
/// 			Name:                pulumi.String("example-HP"),
/// 			Location:            example.Location,
/// 			ResourceGroupName:   example.Name,
/// 			Type:                pulumi.String("Pooled"),
/// 			ValidateEnvironment: pulumi.Bool(true),
/// 			LoadBalancerType:    pulumi.String("BreadthFirst"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = desktopvirtualization.NewGetHostPoolRegistrationInfo(ctx, "example", &desktopvirtualization.GetHostPoolRegistrationInfoArgs{
/// 			HostpoolId:     exampleHostPool.ID().ToIDOutput().ToStringOutput(),
/// 			ExpirationDate: pulumi.String("2022-01-01T23:40:52Z"),
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
///   name     = "example-hostpool"
///   location = "westeurope"
/// }
/// resource "azure_desktopvirtualization_hostpool" "example" {
///   name                 = "example-HP"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   type                 = "Pooled"
///   validate_environment = true
///   load_balancer_type   = "BreadthFirst"
/// }
/// resource "azure_desktopvirtualization_gethostpoolregistrationinfo" "example" {
///   hostpool_id     = azure_desktopvirtualization_hostpool.example.id
///   expiration_date = "2022-01-01T23:40:52Z"
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
/// import com.pulumi.azure.desktopvirtualization.HostPool;
/// import com.pulumi.azure.desktopvirtualization.HostPoolArgs;
/// import com.pulumi.azure.desktopvirtualization.getHostPoolRegistrationInfo;
/// import com.pulumi.azure.desktopvirtualization.getHostPoolRegistrationInfoArgs;
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
///             .name("example-hostpool")
///             .location("westeurope")
///             .build());
///
///         var exampleHostPool = new HostPool("exampleHostPool", HostPoolArgs.builder()
///             .name("example-HP")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Pooled")
///             .validateEnvironment(true)
///             .loadBalancerType("BreadthFirst")
///             .build());
///
///         var exampleGetHostPoolRegistrationInfo = new GetHostPoolRegistrationInfo("exampleGetHostPoolRegistrationInfo", GetHostPoolRegistrationInfoArgs.builder()
///             .hostpoolId(exampleHostPool.id())
///             .expirationDate("2022-01-01T23:40:52Z")
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
///       name: example-hostpool
///       location: westeurope
///   exampleHostPool:
///     type: azure:desktopvirtualization:HostPool
///     name: example
///     properties:
///       name: example-HP
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Pooled
///       validateEnvironment: true
///       loadBalancerType: BreadthFirst
///   exampleGetHostPoolRegistrationInfo:
///     type: azure:desktopvirtualization:getHostPoolRegistrationInfo
///     name: example
///     properties:
///       hostpoolId: ${exampleHostPool.id}
///       expirationDate: 2022-01-01T23:40:52Z
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DesktopVirtualization` - 2025-10-10
///
/// ## Import
///
/// AVD Registration Infos can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/getHostPoolRegistrationInfo:getHostPoolRegistrationInfo example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.DesktopVirtualization/hostPools/pool1/registrationInfo/default
/// ```
class GetHostPoolRegistrationInfo extends pulumi.CustomResource {
  /// A valid `RFC3339Time` for the expiration of the token..
  late final pulumi.Output<String> expirationDate;
  /// The ID of the Virtual Desktop Host Pool to link the Registration Info to. Changing this forces a new Registration Info resource to be created. Only a single virtualDesktopHostPoolRegistrationInfo resource should be associated with a given hostpool. Assigning multiple resources will produce inconsistent results.
  late final pulumi.Output<String> hostpoolId;
  /// The registration token generated by the Virtual Desktop Host Pool for registration of session hosts.
  late final pulumi.Output<String> token;

  /// Creates a new [GetHostPoolRegistrationInfo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GetHostPoolRegistrationInfo]. {@macro pulumi_desktopvirtualization_get_host_pool_registration_info_get_host_pool_registration_info_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GetHostPoolRegistrationInfo(
    String name, {
    GetHostPoolRegistrationInfoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/getHostPoolRegistrationInfo:getHostPoolRegistrationInfo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['token'],
        ) {
    expirationDate = registerOutput<String>('expirationDate');
    hostpoolId = registerOutput<String>('hostpoolId');
    token = registerOutput<String>('token', isSecret: true);
  }

  /// Gets an existing [GetHostPoolRegistrationInfo] resource's state with the given [name] and [id].
  static GetHostPoolRegistrationInfo get(
    String name,
    pulumi.Input<String> id, {
    GetHostPoolRegistrationInfoState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GetHostPoolRegistrationInfo._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GetHostPoolRegistrationInfo._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/getHostPoolRegistrationInfo:getHostPoolRegistrationInfo',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    expirationDate = registerOutput<String>('expirationDate');
    hostpoolId = registerOutput<String>('hostpoolId');
    token = registerOutput<String>('token', isSecret: true);
  }

  /// Creates a typed reference to an existing [GetHostPoolRegistrationInfo] resource.
  GetHostPoolRegistrationInfo.reference(String urn)
    : super(
        'azure:desktopvirtualization/getHostPoolRegistrationInfo:getHostPoolRegistrationInfo',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['token'],
        isResourceReference: true,
      ) {
    expirationDate = registerOutput<String>('expirationDate');
    hostpoolId = registerOutput<String>('hostpoolId');
    token = registerOutput<String>('token', isSecret: true);
  }
}
