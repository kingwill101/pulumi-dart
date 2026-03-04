import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_sso_configuration_args.dart';
import 'monitor_sso_configuration_state.dart';

/// Manages SingleSignOn on the datadog Monitor.
///
/// ## Example Usage
///
/// ### Enabling SSO on monitor
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-datadog",
///     location: "West US 2",
/// });
/// const exampleMonitor = new azure.datadog.Monitor("example", {
///     name: "example-monitor",
///     resourceGroupName: example.name,
///     location: example.location,
///     datadogOrganization: {
///         apiKey: "XXXX",
///         applicationKey: "XXXX",
///     },
///     user: {
///         name: "Example",
///         email: "abc@xyz.com",
///     },
///     skuName: "Linked",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleMonitorSsoConfiguration = new azure.datadog.MonitorSsoConfiguration("example", {
///     datadogMonitorId: exampleMonitor.id,
///     singleSignOn: "Enable",
///     enterpriseApplicationId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-datadog",
///     location="West US 2")
/// example_monitor = azure.datadog.Monitor("example",
///     name="example-monitor",
///     resource_group_name=example.name,
///     location=example.location,
///     datadog_organization={
///         "api_key": "XXXX",
///         "application_key": "XXXX",
///     },
///     user={
///         "name": "Example",
///         "email": "abc@xyz.com",
///     },
///     sku_name="Linked",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_monitor_sso_configuration = azure.datadog.MonitorSsoConfiguration("example",
///     datadog_monitor_id=example_monitor.id,
///     single_sign_on="Enable",
///     enterprise_application_id="00000000-0000-0000-0000-000000000000")
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
///         Name = "example-datadog",
///         Location = "West US 2",
///     });
///
///     var exampleMonitor = new Azure.Datadog.Monitor("example", new()
///     {
///         Name = "example-monitor",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatadogOrganization = new Azure.Datadog.Inputs.MonitorDatadogOrganizationArgs
///         {
///             ApiKey = "XXXX",
///             ApplicationKey = "XXXX",
///         },
///         User = new Azure.Datadog.Inputs.MonitorUserArgs
///         {
///             Name = "Example",
///             Email = "abc@xyz.com",
///         },
///         SkuName = "Linked",
///         Identity = new Azure.Datadog.Inputs.MonitorIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleMonitorSsoConfiguration = new Azure.Datadog.MonitorSsoConfiguration("example", new()
///     {
///         DatadogMonitorId = exampleMonitor.Id,
///         SingleSignOn = "Enable",
///         EnterpriseApplicationId = "00000000-0000-0000-0000-000000000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datadog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-datadog"),
/// 			Location: pulumi.String("West US 2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMonitor, err := datadog.NewMonitor(ctx, "example", &datadog.MonitorArgs{
/// 			Name:              pulumi.String("example-monitor"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatadogOrganization: &datadog.MonitorDatadogOrganizationArgs{
/// 				ApiKey:         pulumi.String("XXXX"),
/// 				ApplicationKey: pulumi.String("XXXX"),
/// 			},
/// 			User: &datadog.MonitorUserArgs{
/// 				Name:  pulumi.String("Example"),
/// 				Email: pulumi.String("abc@xyz.com"),
/// 			},
/// 			SkuName: pulumi.String("Linked"),
/// 			Identity: &datadog.MonitorIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datadog.NewMonitorSsoConfiguration(ctx, "example", &datadog.MonitorSsoConfigurationArgs{
/// 			DatadogMonitorId:        exampleMonitor.ID(),
/// 			SingleSignOn:            pulumi.String("Enable"),
/// 			EnterpriseApplicationId: pulumi.String("00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azure.datadog.Monitor;
/// import com.pulumi.azure.datadog.MonitorArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorDatadogOrganizationArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorUserArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorIdentityArgs;
/// import com.pulumi.azure.datadog.MonitorSsoConfiguration;
/// import com.pulumi.azure.datadog.MonitorSsoConfigurationArgs;
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
///             .name("example-datadog")
///             .location("West US 2")
///             .build());
///
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .name("example-monitor")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datadogOrganization(MonitorDatadogOrganizationArgs.builder()
///                 .apiKey("XXXX")
///                 .applicationKey("XXXX")
///                 .build())
///             .user(MonitorUserArgs.builder()
///                 .name("Example")
///                 .email("abc@xyz.com")
///                 .build())
///             .skuName("Linked")
///             .identity(MonitorIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleMonitorSsoConfiguration = new MonitorSsoConfiguration("exampleMonitorSsoConfiguration", MonitorSsoConfigurationArgs.builder()
///             .datadogMonitorId(exampleMonitor.id())
///             .singleSignOn("Enable")
///             .enterpriseApplicationId("00000000-0000-0000-0000-000000000000")
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
///       name: example-datadog
///       location: West US 2
///   exampleMonitor:
///     type: azure:datadog:Monitor
///     name: example
///     properties:
///       name: example-monitor
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datadogOrganization:
///         apiKey: XXXX
///         applicationKey: XXXX
///       user:
///         name: Example
///         email: abc@xyz.com
///       skuName: Linked
///       identity:
///         type: SystemAssigned
///   exampleMonitorSsoConfiguration:
///     type: azure:datadog:MonitorSsoConfiguration
///     name: example
///     properties:
///       datadogMonitorId: ${exampleMonitor.id}
///       singleSignOn: Enable
///       enterpriseApplicationId: 00000000-0000-0000-0000-000000000000
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Datadog` - 2021-03-01
///
/// ## Import
///
/// SingleSignOn on the Datadog Monitor can be imported using the `signle sign on resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datadog/monitorSsoConfiguration:MonitorSsoConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Datadog/monitors/monitor1/singleSignOnConfigurations/default
/// ```
class MonitorSsoConfiguration extends pulumi.CustomResource {
  /// The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created.
  late final pulumi.Output<String> datadogMonitorId;

  /// The application Id to perform SSO operation.
  late final pulumi.Output<String> enterpriseApplicationId;

  /// The SingleSignOn URL to login to Datadog org.
  late final pulumi.Output<String> loginUrl;

  /// The name of the SingleSignOn configuration. Defaults to `default`.
  late final pulumi.Output<String> name;

  /// The state of SingleSignOn configuration. Possible values are `Enable`, `Disable`, `Initial` and `Existing`.
  late final pulumi.Output<String> singleSignOn;
  late final pulumi.Output<String> singleSignOnEnabled;

  /// Creates a new [MonitorSsoConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitorSsoConfiguration]. {@macro pulumi_datadog_monitor_sso_configuration_monitor_sso_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitorSsoConfiguration(
    String name, {
    MonitorSsoConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datadog/monitorSsoConfiguration:MonitorSsoConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    datadogMonitorId = registerOutput<String>('datadogMonitorId');
    enterpriseApplicationId = registerOutput<String>('enterpriseApplicationId');
    loginUrl = registerOutput<String>('loginUrl');
    this.name = registerOutput<String>('name');
    singleSignOn = registerOutput<String>('singleSignOn');
    singleSignOnEnabled = registerOutput<String>('singleSignOnEnabled');
  }

  /// Gets an existing [MonitorSsoConfiguration] resource's state with the given [name] and [id].
  static MonitorSsoConfiguration get(
    String name,
    pulumi.Input<String> id, {
    MonitorSsoConfigurationState? state,
  }) {
    return MonitorSsoConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitorSsoConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datadog/monitorSsoConfiguration:MonitorSsoConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    datadogMonitorId = registerOutput<String>('datadogMonitorId');
    enterpriseApplicationId = registerOutput<String>('enterpriseApplicationId');
    loginUrl = registerOutput<String>('loginUrl');
    this.name = registerOutput<String>('name');
    singleSignOn = registerOutput<String>('singleSignOn');
    singleSignOnEnabled = registerOutput<String>('singleSignOnEnabled');
  }
}
