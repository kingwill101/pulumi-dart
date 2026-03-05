import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';
import 'monitor_identity.dart';
import 'monitor_plan.dart';
import 'monitor_state.dart';
import 'monitor_user.dart';

/// Manages an Azure Native New Relic Monitor.
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
///     location: "East US",
/// });
/// const exampleMonitor = new azure.newrelic.Monitor("example", {
///     name: "example-nrm",
///     resourceGroupName: example.name,
///     location: example.location,
///     plan: {
///         effectiveDate: "2023-06-06T00:00:00Z",
///     },
///     user: {
///         email: "user@example.com",
///         firstName: "Example",
///         lastName: "User",
///         phoneNumber: "+12313803556",
///     },
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
///     location="East US")
/// example_monitor = azure.newrelic.Monitor("example",
///     name="example-nrm",
///     resource_group_name=example.name,
///     location=example.location,
///     plan={
///         "effective_date": "2023-06-06T00:00:00Z",
///     },
///     user={
///         "email": "user@example.com",
///         "first_name": "Example",
///         "last_name": "User",
///         "phone_number": "+12313803556",
///     },
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
///         Location = "East US",
///     });
///
///     var exampleMonitor = new Azure.NewRelic.Monitor("example", new()
///     {
///         Name = "example-nrm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Plan = new Azure.NewRelic.Inputs.MonitorPlanArgs
///         {
///             EffectiveDate = "2023-06-06T00:00:00Z",
///         },
///         User = new Azure.NewRelic.Inputs.MonitorUserArgs
///         {
///             Email = "user@example.com",
///             FirstName = "Example",
///             LastName = "User",
///             PhoneNumber = "+12313803556",
///         },
///         Identity = new Azure.NewRelic.Inputs.MonitorIdentityArgs
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewMonitor(ctx, "example", &newrelic.MonitorArgs{
/// 			Name:              pulumi.String("example-nrm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Plan: &newrelic.MonitorPlanArgs{
/// 				EffectiveDate: pulumi.String("2023-06-06T00:00:00Z"),
/// 			},
/// 			User: &newrelic.MonitorUserArgs{
/// 				Email:       pulumi.String("user@example.com"),
/// 				FirstName:   pulumi.String("Example"),
/// 				LastName:    pulumi.String("User"),
/// 				PhoneNumber: pulumi.String("+12313803556"),
/// 			},
/// 			Identity: &newrelic.MonitorIdentityArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.newrelic.Monitor;
/// import com.pulumi.azure.newrelic.MonitorArgs;
/// import com.pulumi.azure.newrelic.inputs.MonitorPlanArgs;
/// import com.pulumi.azure.newrelic.inputs.MonitorUserArgs;
/// import com.pulumi.azure.newrelic.inputs.MonitorIdentityArgs;
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
///             .name("example-resources")
///             .location("East US")
///             .build());
///
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .name("example-nrm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .plan(MonitorPlanArgs.builder()
///                 .effectiveDate("2023-06-06T00:00:00Z")
///                 .build())
///             .user(MonitorUserArgs.builder()
///                 .email("user@example.com")
///                 .firstName("Example")
///                 .lastName("User")
///                 .phoneNumber("+12313803556")
///                 .build())
///             .identity(MonitorIdentityArgs.builder()
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
///       location: East US
///   exampleMonitor:
///     type: azure:newrelic:Monitor
///     name: example
///     properties:
///       name: example-nrm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       plan:
///         effectiveDate: 2023-06-06T00:00:00Z
///       user:
///         email: user@example.com
///         firstName: Example
///         lastName: User
///         phoneNumber: '+12313803556'
///       identity:
///         type: SystemAssigned
/// ```
///
///
/// ## Role Assignment
///
/// To enable metrics flow, perform role assignment on the identity created above. `Monitoring reader(43d0d8ad-25c7-4714-9337-8ba259a9fe05)` role is required .
///
/// ### Role assignment on the monitor created
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const monitoringReader = azure.authorization.getRoleDefinition({
///     name: "Monitoring Reader",
/// });
/// const example = new azure.authorization.Assignment("example", {
///     scope: primary.then(primary => primary.id),
///     roleDefinitionId: Promise.all([primary, monitoringReader]).then(([primary, monitoringReader]) => `${primary.id}${monitoringReader.id}`),
///     principalId: exampleAzurermNewRelicMonitor.identity[0].principalId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// monitoring_reader = azure.authorization.get_role_definition(name="Monitoring Reader")
/// example = azure.authorization.Assignment("example",
///     scope=primary.id,
///     role_definition_id=f"{primary.id}{monitoring_reader.id}",
///     principal_id=example_azurerm_new_relic_monitor["identity"][0]["principalId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var monitoringReader = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Monitoring Reader",
///     });
///
///     var example = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionId = Output.Tuple(primary, monitoringReader).Apply(values =>
///         {
///             var primary = values.Item1;
///             var monitoringReader = values.Item2;
///             return $"{primary.Apply(getSubscriptionResult => getSubscriptionResult.Id)}{monitoringReader.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id)}";
///         }),
///         PrincipalId = exampleAzurermNewRelicMonitor.Identity[0].PrincipalId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		monitoringReader, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Monitoring Reader"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:            pulumi.String(primary.Id),
/// 			RoleDefinitionId: pulumi.Sprintf("%v%v", primary.Id, monitoringReader.Id),
/// 			PrincipalId:      pulumi.Any(exampleAzurermNewRelicMonitor.Identity[0].PrincipalId),
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
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var monitoringReader = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Monitoring Reader")
///             .build());
///
///         var example = new Assignment("example", AssignmentArgs.builder()
///             .scope(primary.id())
///             .roleDefinitionId(String.format("%s%s", primary.id(),monitoringReader.id()))
///             .principalId(exampleAzurermNewRelicMonitor.identity()[0].principalId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${primary.id}
///       roleDefinitionId: ${primary.id}${monitoringReader.id}
///       principalId: ${exampleAzurermNewRelicMonitor.identity[0].principalId}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   monitoringReader:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Monitoring Reader
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `NewRelic.Observability` - 2024-03-01
///
/// ## Import
///
/// Azure Native New Relic Monitor can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:newrelic/monitor:Monitor example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/NewRelic.Observability/monitors/monitor1
/// ```
class Monitor extends pulumi.CustomResource {
  /// Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<String?> accountCreationSource;

  /// Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created.
  ///
  /// &gt; **Note:** The value of `account_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
  late final pulumi.Output<String> accountId;

  /// An `identity` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<MonitorIdentity?> identity;

  /// Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<String?> ingestionKey;

  /// Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<String> name;

  /// Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<String?> orgCreationSource;

  /// Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created.
  ///
  /// &gt; **Note:** The value of `organization_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
  late final pulumi.Output<String> organizationId;

  /// A `plan` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<MonitorPlan> plan;

  /// Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `user` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<MonitorUser> user;

  /// Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created.
  late final pulumi.Output<String?> userId;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_newrelic_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:newrelic/monitor:Monitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountCreationSource = registerOutput<String?>('accountCreationSource');
    accountId = registerOutput<String>('accountId');
    identity = registerOutput<MonitorIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitorIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ingestionKey = registerOutput<String?>('ingestionKey');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgCreationSource = registerOutput<String?>('orgCreationSource');
    organizationId = registerOutput<String>('organizationId');
    plan = registerOutput<MonitorPlan>(
      'plan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitorPlan.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    user = registerOutput<MonitorUser>(
      'user',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitorUser.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    userId = registerOutput<String?>('userId');
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
         'azure:newrelic/monitor:Monitor',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountCreationSource = registerOutput<String?>('accountCreationSource');
    accountId = registerOutput<String>('accountId');
    identity = registerOutput<MonitorIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitorIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ingestionKey = registerOutput<String?>('ingestionKey');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgCreationSource = registerOutput<String?>('orgCreationSource');
    organizationId = registerOutput<String>('organizationId');
    plan = registerOutput<MonitorPlan>(
      'plan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitorPlan.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    user = registerOutput<MonitorUser>(
      'user',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MonitorUser.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    userId = registerOutput<String?>('userId');
  }
}
