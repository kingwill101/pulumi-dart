import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';
import 'monitor_identity.dart';
import 'monitor_plan.dart';
import 'monitor_state.dart';
import 'monitor_user.dart';

/// Manages a Dynatrace monitor.
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
/// const exampleMonitor = new azure.dynatrace.Monitor("example", {
///     name: "exmpledynatracemonitor",
///     resourceGroupName: example.name,
///     location: test.location,
///     monitoringEnabled: true,
///     marketplaceSubscriptionStatus: "Active",
///     identity: {
///         type: "SystemAssigned",
///     },
///     user: {
///         firstName: "Alice",
///         lastName: "Bobab",
///         email: "alice@microsoft.com",
///         phoneNumber: "123456",
///         country: "westus",
///     },
///     plan: {
///         usageType: "COMMITTED",
///         billingCycle: "MONTHLY",
///         plan: "azureportalintegration_privatepreview@TIDhjdtn7tfnxcy",
///         effectiveDate: "2019-08-30T15:14:33Z",
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
/// example_monitor = azure.dynatrace.Monitor("example",
///     name="exmpledynatracemonitor",
///     resource_group_name=example.name,
///     location=test["location"],
///     monitoring_enabled=True,
///     marketplace_subscription_status="Active",
///     identity={
///         "type": "SystemAssigned",
///     },
///     user={
///         "first_name": "Alice",
///         "last_name": "Bobab",
///         "email": "alice@microsoft.com",
///         "phone_number": "123456",
///         "country": "westus",
///     },
///     plan={
///         "usage_type": "COMMITTED",
///         "billing_cycle": "MONTHLY",
///         "plan": "azureportalintegration_privatepreview@TIDhjdtn7tfnxcy",
///         "effective_date": "2019-08-30T15:14:33Z",
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
///     var exampleMonitor = new Azure.Dynatrace.Monitor("example", new()
///     {
///         Name = "exmpledynatracemonitor",
///         ResourceGroupName = example.Name,
///         Location = test.Location,
///         MonitoringEnabled = true,
///         MarketplaceSubscriptionStatus = "Active",
///         Identity = new Azure.Dynatrace.Inputs.MonitorIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         User = new Azure.Dynatrace.Inputs.MonitorUserArgs
///         {
///             FirstName = "Alice",
///             LastName = "Bobab",
///             Email = "alice@microsoft.com",
///             PhoneNumber = "123456",
///             Country = "westus",
///         },
///         Plan = new Azure.Dynatrace.Inputs.MonitorPlanArgs
///         {
///             UsageType = "COMMITTED",
///             BillingCycle = "MONTHLY",
///             Plan = "azureportalintegration_privatepreview@TIDhjdtn7tfnxcy",
///             EffectiveDate = "2019-08-30T15:14:33Z",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dynatrace"
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
/// 		_, err = dynatrace.NewMonitor(ctx, "example", &dynatrace.MonitorArgs{
/// 			Name:                          pulumi.String("exmpledynatracemonitor"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      pulumi.Any(test.Location),
/// 			MonitoringEnabled:             pulumi.Bool(true),
/// 			MarketplaceSubscriptionStatus: "Active",
/// 			Identity: &dynatrace.MonitorIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			User: &dynatrace.MonitorUserArgs{
/// 				FirstName:   pulumi.String("Alice"),
/// 				LastName:    pulumi.String("Bobab"),
/// 				Email:       pulumi.String("alice@microsoft.com"),
/// 				PhoneNumber: pulumi.String("123456"),
/// 				Country:     pulumi.String("westus"),
/// 			},
/// 			Plan: &dynatrace.MonitorPlanArgs{
/// 				UsageType:     pulumi.String("COMMITTED"),
/// 				BillingCycle:  pulumi.String("MONTHLY"),
/// 				Plan:          pulumi.String("azureportalintegration_privatepreview@TIDhjdtn7tfnxcy"),
/// 				EffectiveDate: pulumi.String("2019-08-30T15:14:33Z"),
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
/// resource "azure_dynatrace_monitor" "example" {
///   name                            = "exmpledynatracemonitor"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = test.location
///   monitoring_enabled              = true
///   marketplace_subscription_status = "Active"
///   identity = {
///     type = "SystemAssigned"
///   }
///   user = {
///     first_name   = "Alice"
///     last_name    = "Bobab"
///     email        = "alice@microsoft.com"
///     phone_number = "123456"
///     country      = "westus"
///   }
///   plan = {
///     usage_type     = "COMMITTED"
///     billing_cycle  = "MONTHLY"
///     plan           = "azureportalintegration_privatepreview@TIDhjdtn7tfnxcy"
///     effective_date = "2019-08-30T15:14:33Z"
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
/// import com.pulumi.azure.dynatrace.Monitor;
/// import com.pulumi.azure.dynatrace.MonitorArgs;
/// import com.pulumi.azure.dynatrace.inputs.MonitorIdentityArgs;
/// import com.pulumi.azure.dynatrace.inputs.MonitorUserArgs;
/// import com.pulumi.azure.dynatrace.inputs.MonitorPlanArgs;
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
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .name("exmpledynatracemonitor")
///             .resourceGroupName(example.name())
///             .location(test.location())
///             .monitoringEnabled(true)
///             .marketplaceSubscriptionStatus("Active")
///             .identity(MonitorIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .user(MonitorUserArgs.builder()
///                 .firstName("Alice")
///                 .lastName("Bobab")
///                 .email("alice@microsoft.com")
///                 .phoneNumber("123456")
///                 .country("westus")
///                 .build())
///             .plan(MonitorPlanArgs.builder()
///                 .usageType("COMMITTED")
///                 .billingCycle("MONTHLY")
///                 .plan("azureportalintegration_privatepreview@TIDhjdtn7tfnxcy")
///                 .effectiveDate("2019-08-30T15:14:33Z")
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
///   exampleMonitor:
///     type: azure:dynatrace:Monitor
///     name: example
///     properties:
///       name: exmpledynatracemonitor
///       resourceGroupName: ${example.name}
///       location: ${test.location}
///       monitoringEnabled: true
///       marketplaceSubscriptionStatus: Active
///       identity:
///         type: SystemAssigned
///       user:
///         firstName: Alice
///         lastName: Bobab
///         email: alice@microsoft.com
///         phoneNumber: '123456'
///         country: westus
///       plan:
///         usageType: COMMITTED
///         billingCycle: MONTHLY
///         plan: azureportalintegration_privatepreview@TIDhjdtn7tfnxcy
///         effectiveDate: 2019-08-30T15:14:33Z
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Dynatrace.Observability` - 2023-04-27
///
/// ## Import
///
/// Dynatrace monitor can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dynatrace/monitor:Monitor example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Dynatrace.Observability/monitors/monitor1
/// ```
class Monitor extends pulumi.CustomResource {
  /// Properties of the Dynatrace environment. An `environmentProperties` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> environmentProperties;
  /// The kind of managed identity assigned to this resource. A `identity` block as defined below.
  late final pulumi.Output<MonitorIdentity> identity;
  /// The Azure Region where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state. Possible values are `Active` and `Suspended`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> marketplaceSubscription;
  /// Flag specifying if the resource monitoring is enabled or disabled. Default is `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> monitoringEnabled;
  /// Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Billing plan information. A `plan` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<MonitorPlan> plan;
  /// The name of the Resource Group where the Dynatrace monitor should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// User's information. A `user` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<MonitorUser> user;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_dynatrace_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dynatrace/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    environmentProperties = registerOutput<List<Map<String, dynamic>>?>('environmentProperties');
    identity = registerOutput<MonitorIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    marketplaceSubscription = registerOutput<String>('marketplaceSubscription');
    monitoringEnabled = registerOutput<bool?>('monitoringEnabled');
    this.name = registerOutput<String>('name');
    plan = registerOutput<MonitorPlan>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    user = registerOutput<MonitorUser>('user', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Monitor] resource's state with the given [name] and [id].
  static Monitor get(
    String name,
    pulumi.Input<String> id, {
    MonitorState? state,
  }) {
    return Monitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Monitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dynatrace/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    environmentProperties = registerOutput<List<Map<String, dynamic>>?>('environmentProperties');
    identity = registerOutput<MonitorIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    marketplaceSubscription = registerOutput<String>('marketplaceSubscription');
    monitoringEnabled = registerOutput<bool?>('monitoringEnabled');
    this.name = registerOutput<String>('name');
    plan = registerOutput<MonitorPlan>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    user = registerOutput<MonitorUser>('user', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
