import 'package:pulumi/pulumi.dart' as pulumi;
import 'manangement_lock_args.dart';
import 'manangement_lock_state.dart';

/// Manages a Management Lock which is scoped to a Subscription, Resource Group or Resource.
///
/// ## Example Usage
///
/// ### Subscription Level Lock)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// const subscription_level = new azure.management.Lock("subscription-level", {
///     name: "subscription-level",
///     scope: current.then(current => current.id),
///     lockLevel: "CanNotDelete",
///     notes: "Items can't be deleted in this subscription!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_subscription()
/// subscription_level = azure.management.Lock("subscription-level",
///     name="subscription-level",
///     scope=current.id,
///     lock_level="CanNotDelete",
///     notes="Items can't be deleted in this subscription!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var subscription_level = new Azure.Management.Lock("subscription-level", new()
///     {
///         Name = "subscription-level",
///         Scope = current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         LockLevel = "CanNotDelete",
///         Notes = "Items can't be deleted in this subscription!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewLock(ctx, "subscription-level", &management.LockArgs{
/// 			Name:      pulumi.String("subscription-level"),
/// 			Scope:     pulumi.String(current.Id),
/// 			LockLevel: pulumi.String("CanNotDelete"),
/// 			Notes:     pulumi.String("Items can't be deleted in this subscription!"),
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
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.management.Lock;
/// import com.pulumi.azure.management.LockArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var subscription_level = new Lock("subscription-level", LockArgs.builder()
///             .name("subscription-level")
///             .scope(current.id())
///             .lockLevel("CanNotDelete")
///             .notes("Items can't be deleted in this subscription!")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription-level:
///     type: azure:management:Lock
///     properties:
///       name: subscription-level
///       scope: ${current.id}
///       lockLevel: CanNotDelete
///       notes: Items can't be deleted in this subscription!
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
///
/// ### Resource Group Level Lock)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "locked-resource-group",
///     location: "West Europe",
/// });
/// const resource_group_level = new azure.management.Lock("resource-group-level", {
///     name: "resource-group-level",
///     scope: example.id,
///     lockLevel: "ReadOnly",
///     notes: "This Resource Group is Read-Only",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="locked-resource-group",
///     location="West Europe")
/// resource_group_level = azure.management.Lock("resource-group-level",
///     name="resource-group-level",
///     scope=example.id,
///     lock_level="ReadOnly",
///     notes="This Resource Group is Read-Only")
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
///         Name = "locked-resource-group",
///         Location = "West Europe",
///     });
///
///     var resource_group_level = new Azure.Management.Lock("resource-group-level", new()
///     {
///         Name = "resource-group-level",
///         Scope = example.Id,
///         LockLevel = "ReadOnly",
///         Notes = "This Resource Group is Read-Only",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("locked-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewLock(ctx, "resource-group-level", &management.LockArgs{
/// 			Name:      pulumi.String("resource-group-level"),
/// 			Scope:     example.ID(),
/// 			LockLevel: pulumi.String("ReadOnly"),
/// 			Notes:     pulumi.String("This Resource Group is Read-Only"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.management.Lock;
/// import com.pulumi.azure.management.LockArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("locked-resource-group")
///             .location("West Europe")
///             .build());
///
///         var resource_group_level = new Lock("resource-group-level", LockArgs.builder()
///             .name("resource-group-level")
///             .scope(example.id())
///             .lockLevel("ReadOnly")
///             .notes("This Resource Group is Read-Only")
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
///       name: locked-resource-group
///       location: West Europe
///   resource-group-level:
///     type: azure:management:Lock
///     properties:
///       name: resource-group-level
///       scope: ${example.id}
///       lockLevel: ReadOnly
///       notes: This Resource Group is Read-Only
/// ```
///
///
///
/// ### Resource Level Lock)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "locked-resource-group",
///     location: "West Europe",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "locked-publicip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     idleTimeoutInMinutes: 30,
/// });
/// const public_ip = new azure.management.Lock("public-ip", {
///     name: "resource-ip",
///     scope: examplePublicIp.id,
///     lockLevel: "CanNotDelete",
///     notes: "Locked because it's needed by a third-party",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="locked-resource-group",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="locked-publicip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     idle_timeout_in_minutes=30)
/// public_ip = azure.management.Lock("public-ip",
///     name="resource-ip",
///     scope=example_public_ip.id,
///     lock_level="CanNotDelete",
///     notes="Locked because it's needed by a third-party")
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
///         Name = "locked-resource-group",
///         Location = "West Europe",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "locked-publicip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         IdleTimeoutInMinutes = 30,
///     });
///
///     var public_ip = new Azure.Management.Lock("public-ip", new()
///     {
///         Name = "resource-ip",
///         Scope = examplePublicIp.Id,
///         LockLevel = "CanNotDelete",
///         Notes = "Locked because it's needed by a third-party",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("locked-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:                 pulumi.String("locked-publicip"),
/// 			Location:             example.Location,
/// 			ResourceGroupName:    example.Name,
/// 			AllocationMethod:     pulumi.String("Static"),
/// 			IdleTimeoutInMinutes: pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewLock(ctx, "public-ip", &management.LockArgs{
/// 			Name:      pulumi.String("resource-ip"),
/// 			Scope:     examplePublicIp.ID(),
/// 			LockLevel: pulumi.String("CanNotDelete"),
/// 			Notes:     pulumi.String("Locked because it's needed by a third-party"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.management.Lock;
/// import com.pulumi.azure.management.LockArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("locked-resource-group")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("locked-publicip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .idleTimeoutInMinutes(30)
///             .build());
///
///         var public_ip = new Lock("public-ip", LockArgs.builder()
///             .name("resource-ip")
///             .scope(examplePublicIp.id())
///             .lockLevel("CanNotDelete")
///             .notes("Locked because it's needed by a third-party")
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
///       name: locked-resource-group
///       location: West Europe
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: locked-publicip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       idleTimeoutInMinutes: 30
///   public-ip:
///     type: azure:management:Lock
///     properties:
///       name: resource-ip
///       scope: ${examplePublicIp.id}
///       lockLevel: CanNotDelete
///       notes: Locked because it's needed by a third-party
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2020-05-01
///
/// ## Import
///
/// Management Locks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managementresource/manangementLock:ManangementLock lock1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Authorization/locks/lock1
/// ```
class ManangementLock extends pulumi.CustomResource {
  /// Specifies the Level to be used for this Lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `CanNotDelete` means authorized users are able to read and modify the resources, but not delete. `ReadOnly` means authorized users can only read from a resource, but they can't modify or delete it.
  late final pulumi.Output<String> lockLevel;
  /// Specifies the name of the Management Lock. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> notes;
  /// Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;

  /// Creates a new [ManangementLock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManangementLock]. {@macro pulumi_managementresource_manangement_lock_manangement_lock_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManangementLock(
    String name, {
    ManangementLockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managementresource/manangementLock:ManangementLock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.lockLevel = registerOutput<String>('lockLevel');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
    this.scope = registerOutput<String>('scope');
  }

  /// Gets an existing [ManangementLock] resource's state with the given [name] and [id].
  static ManangementLock get(
    String name,
    pulumi.Input<String> id, {
    ManangementLockState? state,
  }) {
    return ManangementLock._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManangementLock._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managementresource/manangementLock:ManangementLock',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.lockLevel = registerOutput<String>('lockLevel');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
    this.scope = registerOutput<String>('scope');
  }
}
