import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_private_link_resource_args.dart';
import 'shared_private_link_resource_state.dart';

/// Manages the Shared Private Link Resource for a Signalr service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "terraform-signalr",
///     location: "east us",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         certificatePermissions: ["ManageContacts"],
///         keyPermissions: ["Create"],
///         secretPermissions: ["Set"],
///     }],
/// });
/// const test = new azure.signalr.Service("test", {
///     name: "tfex-signalr",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     sku: {
///         name: "Standard_S1",
///         capacity: 1,
///     },
/// });
/// const exampleSharedPrivateLinkResource = new azure.signalr.SharedPrivateLinkResource("example", {
///     name: "tfex-signalr-splr",
///     signalrServiceId: exampleAzurermSignalrService.id,
///     subResourceName: "vault",
///     targetResourceId: exampleKeyVault.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="terraform-signalr",
///     location="east us")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "certificate_permissions": ["ManageContacts"],
///         "key_permissions": ["Create"],
///         "secret_permissions": ["Set"],
///     }])
/// test = azure.signalr.Service("test",
///     name="tfex-signalr",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     sku={
///         "name": "Standard_S1",
///         "capacity": 1,
///     })
/// example_shared_private_link_resource = azure.signalr.SharedPrivateLinkResource("example",
///     name="tfex-signalr-splr",
///     signalr_service_id=example_azurerm_signalr_service["id"],
///     sub_resource_name="vault",
///     target_resource_id=example_key_vault.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "terraform-signalr",
///         Location = "east us",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         SoftDeleteRetentionDays = 7,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 CertificatePermissions = new[]
///                 {
///                     "ManageContacts",
///                 },
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                 },
///             },
///         },
///     });
///
///     var test = new Azure.SignalR.Service("test", new()
///     {
///         Name = "tfex-signalr",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Sku = new Azure.SignalR.Inputs.ServiceSkuArgs
///         {
///             Name = "Standard_S1",
///             Capacity = 1,
///         },
///     });
///
///     var exampleSharedPrivateLinkResource = new Azure.SignalR.SharedPrivateLinkResource("example", new()
///     {
///         Name = "tfex-signalr-splr",
///         SignalrServiceId = exampleAzurermSignalrService.Id,
///         SubResourceName = "vault",
///         TargetResourceId = exampleKeyVault.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/signalr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("terraform-signalr"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("examplekeyvault"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("standard"),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					CertificatePermissions: pulumi.StringArray{
/// 						pulumi.String("ManageContacts"),
/// 					},
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signalr.NewService(ctx, "test", &signalr.ServiceArgs{
/// 			Name:              pulumi.String("tfex-signalr"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			Sku: &signalr.ServiceSkuArgs{
/// 				Name:     pulumi.String("Standard_S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signalr.NewSharedPrivateLinkResource(ctx, "example", &signalr.SharedPrivateLinkResourceArgs{
/// 			Name:             pulumi.String("tfex-signalr-splr"),
/// 			SignalrServiceId: pulumi.Any(exampleAzurermSignalrService.Id),
/// 			SubResourceName:  pulumi.String("vault"),
/// 			TargetResourceId: exampleKeyVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.signalr.Service;
/// import com.pulumi.azure.signalr.ServiceArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceSkuArgs;
/// import com.pulumi.azure.signalr.SharedPrivateLinkResource;
/// import com.pulumi.azure.signalr.SharedPrivateLinkResourceArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("terraform-signalr")
///             .location("east us")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .certificatePermissions("ManageContacts")
///                 .keyPermissions("Create")
///                 .secretPermissions("Set")
///                 .build())
///             .build());
///
///         var test = new Service("test", ServiceArgs.builder()
///             .name("tfex-signalr")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .sku(ServiceSkuArgs.builder()
///                 .name("Standard_S1")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleSharedPrivateLinkResource = new SharedPrivateLinkResource("exampleSharedPrivateLinkResource", SharedPrivateLinkResourceArgs.builder()
///             .name("tfex-signalr-splr")
///             .signalrServiceId(exampleAzurermSignalrService.id())
///             .subResourceName("vault")
///             .targetResourceId(exampleKeyVault.id())
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
///       name: terraform-signalr
///       location: east us
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           certificatePermissions:
///             - ManageContacts
///           keyPermissions:
///             - Create
///           secretPermissions:
///             - Set
///   test:
///     type: azure:signalr:Service
///     properties:
///       name: tfex-signalr
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       sku:
///         name: Standard_S1
///         capacity: 1
///   exampleSharedPrivateLinkResource:
///     type: azure:signalr:SharedPrivateLinkResource
///     name: example
///     properties:
///       name: tfex-signalr-splr
///       signalrServiceId: ${exampleAzurermSignalrService.id}
///       subResourceName: vault
///       targetResourceId: ${exampleKeyVault.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
///
/// ## Import
///
/// Signalr Shared Private Link Resource can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:signalr/sharedPrivateLinkResource:SharedPrivateLinkResource example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/signalR/signalr1/sharedPrivateLinkResources/resource1
/// ```
class SharedPrivateLinkResource extends pulumi.CustomResource {
  /// The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  late final pulumi.Output<String?> requestMessage;

  /// The id of the Signalr Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> signalrServiceId;

  /// The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`.
  late final pulumi.Output<String> status;

  /// The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subResourceName;

  /// The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `sub_resource_name` should match with the type of the `target_resource_id` that's being specified.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [SharedPrivateLinkResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedPrivateLinkResource]. {@macro pulumi_signalr_shared_private_link_resource_shared_private_link_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedPrivateLinkResource(
    String name, {
    SharedPrivateLinkResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:signalr/sharedPrivateLinkResource:SharedPrivateLinkResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    requestMessage = registerOutput<String?>('requestMessage');
    signalrServiceId = registerOutput<String>('signalrServiceId');
    status = registerOutput<String>('status');
    subResourceName = registerOutput<String>('subResourceName');
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [SharedPrivateLinkResource] resource's state with the given [name] and [id].
  static SharedPrivateLinkResource get(
    String name,
    pulumi.Input<String> id, {
    SharedPrivateLinkResourceState? state,
  }) {
    return SharedPrivateLinkResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedPrivateLinkResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:signalr/sharedPrivateLinkResource:SharedPrivateLinkResource',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    requestMessage = registerOutput<String?>('requestMessage');
    signalrServiceId = registerOutput<String>('signalrServiceId');
    status = registerOutput<String>('status');
    subResourceName = registerOutput<String>('subResourceName');
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}
