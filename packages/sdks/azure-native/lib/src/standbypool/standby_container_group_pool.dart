import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_properties_response.dart';
import 'standby_container_group_pool_args.dart';
import 'standby_container_group_pool_elasticity_profile_response.dart';
import 'system_data_response.dart';

/// A StandbyContainerGroupPoolResource.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-12-01-preview.
///
/// Other available API versions: 2023-12-01-preview, 2024-03-01-preview, 2025-03-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native standbypool [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StandbyContainerGroupPools_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var standbyContainerGroupPool = new AzureNative.StandbyPool.StandbyContainerGroupPool("standbyContainerGroupPool", new()
///     {
///         ContainerGroupProperties = new AzureNative.StandbyPool.Inputs.ContainerGroupPropertiesArgs
///         {
///             ContainerGroupProfile = new AzureNative.StandbyPool.Inputs.ContainerGroupProfileArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.ContainerInstance/containerGroupProfiles/cgProfile",
///                 Revision = 1,
///             },
///             SubnetIds = new[]
///             {
///                 new AzureNative.StandbyPool.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Network/virtualNetworks/cgSubnet/subnets/cgSubnet",
///                 },
///             },
///         },
///         ElasticityProfile = new AzureNative.StandbyPool.Inputs.StandbyContainerGroupPoolElasticityProfileArgs
///         {
///             MaxReadyCapacity = 688,
///             RefillPolicy = AzureNative.StandbyPool.RefillPolicy.Always,
///         },
///         Location = "West US",
///         ResourceGroupName = "rgstandbypool",
///         StandbyContainerGroupPoolName = "pool",
///         Tags = null,
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
/// 	standbypool "github.com/pulumi/pulumi-azure-native-sdk/standbypool/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := standbypool.NewStandbyContainerGroupPool(ctx, "standbyContainerGroupPool", &standbypool.StandbyContainerGroupPoolArgs{
/// 			ContainerGroupProperties: &standbypool.ContainerGroupPropertiesArgs{
/// 				ContainerGroupProfile: &standbypool.ContainerGroupProfileArgs{
/// 					Id:       pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.ContainerInstance/containerGroupProfiles/cgProfile"),
/// 					Revision: pulumi.Float64(1),
/// 				},
/// 				SubnetIds: standbypool.SubnetArray{
/// 					&standbypool.SubnetArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Network/virtualNetworks/cgSubnet/subnets/cgSubnet"),
/// 					},
/// 				},
/// 			},
/// 			ElasticityProfile: &standbypool.StandbyContainerGroupPoolElasticityProfileArgs{
/// 				MaxReadyCapacity: pulumi.Float64(688),
/// 				RefillPolicy:     pulumi.String(standbypool.RefillPolicyAlways),
/// 			},
/// 			Location:                      pulumi.String("West US"),
/// 			ResourceGroupName:             pulumi.String("rgstandbypool"),
/// 			StandbyContainerGroupPoolName: pulumi.String("pool"),
/// 			Tags:                          pulumi.StringMap{},
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
/// import com.pulumi.azurenative.standbypool.StandbyContainerGroupPool;
/// import com.pulumi.azurenative.standbypool.StandbyContainerGroupPoolArgs;
/// import com.pulumi.azurenative.standbypool.inputs.ContainerGroupPropertiesArgs;
/// import com.pulumi.azurenative.standbypool.inputs.ContainerGroupProfileArgs;
/// import com.pulumi.azurenative.standbypool.inputs.StandbyContainerGroupPoolElasticityProfileArgs;
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
///         var standbyContainerGroupPool = new StandbyContainerGroupPool("standbyContainerGroupPool", StandbyContainerGroupPoolArgs.builder()
///             .containerGroupProperties(ContainerGroupPropertiesArgs.builder()
///                 .containerGroupProfile(ContainerGroupProfileArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.ContainerInstance/containerGroupProfiles/cgProfile")
///                     .revision(1.0)
///                     .build())
///                 .subnetIds(SubnetArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Network/virtualNetworks/cgSubnet/subnets/cgSubnet")
///                     .build())
///                 .build())
///             .elasticityProfile(StandbyContainerGroupPoolElasticityProfileArgs.builder()
///                 .maxReadyCapacity(688.0)
///                 .refillPolicy("always")
///                 .build())
///             .location("West US")
///             .resourceGroupName("rgstandbypool")
///             .standbyContainerGroupPoolName("pool")
///             .tags(Map.ofEntries(
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
/// const standbyContainerGroupPool = new azure_native.standbypool.StandbyContainerGroupPool("standbyContainerGroupPool", {
///     containerGroupProperties: {
///         containerGroupProfile: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.ContainerInstance/containerGroupProfiles/cgProfile",
///             revision: 1,
///         },
///         subnetIds: [{
///             id: "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Network/virtualNetworks/cgSubnet/subnets/cgSubnet",
///         }],
///     },
///     elasticityProfile: {
///         maxReadyCapacity: 688,
///         refillPolicy: azure_native.standbypool.RefillPolicy.Always,
///     },
///     location: "West US",
///     resourceGroupName: "rgstandbypool",
///     standbyContainerGroupPoolName: "pool",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// standby_container_group_pool = azure_native.standbypool.StandbyContainerGroupPool("standbyContainerGroupPool",
///     container_group_properties={
///         "container_group_profile": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.ContainerInstance/containerGroupProfiles/cgProfile",
///             "revision": 1,
///         },
///         "subnet_ids": [{
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Network/virtualNetworks/cgSubnet/subnets/cgSubnet",
///         }],
///     },
///     elasticity_profile={
///         "max_ready_capacity": 688,
///         "refill_policy": azure_native.standbypool.RefillPolicy.ALWAYS,
///     },
///     location="West US",
///     resource_group_name="rgstandbypool",
///     standby_container_group_pool_name="pool",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   standbyContainerGroupPool:
///     type: azure-native:standbypool:StandbyContainerGroupPool
///     properties:
///       containerGroupProperties:
///         containerGroupProfile:
///           id: /subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.ContainerInstance/containerGroupProfiles/cgProfile
///           revision: 1
///         subnetIds:
///           - id: /subscriptions/00000000-0000-0000-0000-000000000009/resourceGroups/rgstandbypool/providers/Microsoft.Network/virtualNetworks/cgSubnet/subnets/cgSubnet
///       elasticityProfile:
///         maxReadyCapacity: 688
///         refillPolicy: always
///       location: West US
///       resourceGroupName: rgstandbypool
///       standbyContainerGroupPoolName: pool
///       tags: {}
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
/// $ pulumi import azure-native:standbypool:StandbyContainerGroupPool pool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StandbyPool/standbyContainerGroupPools/{standbyContainerGroupPoolName}
/// ```
class StandbyContainerGroupPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Specifies container group properties of standby container group pools.
  late final pulumi.Output<ContainerGroupPropertiesResponse>
  containerGroupProperties;

  /// Specifies elasticity profile of standby container group pools.
  late final pulumi.Output<StandbyContainerGroupPoolElasticityProfileResponse>
  elasticityProfile;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StandbyContainerGroupPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandbyContainerGroupPool]. {@macro pulumi_standbypool_standby_container_group_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandbyContainerGroupPool(
    String name, {
    StandbyContainerGroupPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:standbypool:StandbyContainerGroupPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerGroupProperties = registerOutput<ContainerGroupPropertiesResponse>(
      'containerGroupProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerGroupPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    elasticityProfile =
        registerOutput<StandbyContainerGroupPoolElasticityProfileResponse>(
          'elasticityProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return StandbyContainerGroupPoolElasticityProfileResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
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
