import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_identity.dart';
import 'environment_state.dart';

/// Manages a Container App Environment.
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "my-environment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logsDestination: "log-analytics",
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="my-environment",
///     location=example.location,
///     resource_group_name=example.name,
///     logs_destination="log-analytics",
///     log_analytics_workspace_id=example_analytics_workspace.id)
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "my-environment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogsDestination = "log-analytics",
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("my-environment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogsDestination:         pulumi.String("log-analytics"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
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
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("my-environment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logsDestination("log-analytics")
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: my-environment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logsDestination: log-analytics
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
///
/// ## Import
///
/// A Container App Environment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/environment:Environment example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/managedEnvironments/myEnvironment"
/// ```
class Environment extends pulumi.CustomResource {
  /// The ID of the Custom Domain Verification for this Container App Environment.
  late final pulumi.Output<String> customDomainVerificationId;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> daprApplicationInsightsConnectionString;
  /// The default, publicly resolvable, name of this Container App Environment.
  late final pulumi.Output<String> defaultDomain;
  /// The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation.
  late final pulumi.Output<String> dockerBridgeCidr;
  /// An `identity` block as defined below.
  late final pulumi.Output<EnvironmentIdentity?> identity;
  /// Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only valid if a `workload_profile` is specified. If `infrastructure_subnet_id` is specified, this resource group will be created in the same subscription as `infrastructure_subnet_id`.
  late final pulumi.Output<String?> infrastructureResourceGroupName;
  /// The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Subnet must have a `/21` or larger address space.
  late final pulumi.Output<String?> infrastructureSubnetId;
  /// Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified.
  late final pulumi.Output<bool?> internalLoadBalancerEnabled;
  /// Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to.
  ///
  /// &gt; **Note:** required if `logs_destination` is set to `log-analytics`. Cannot be set if `logs_destination` is set to `azure-monitor`.
  late final pulumi.Output<String?> logAnalyticsWorkspaceId;
  /// Where the application logs will be saved for this Container Apps Managed Environment. Possible values include `log-analytics` and `azure-monitor`. Omitting this value will result in logs being streamed only.
  late final pulumi.Output<String> logsDestination;
  /// Should mutual transport layer security (mTLS) be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This feature is in public preview. Enabling mTLS for your applications may increase response latency and reduce maximum throughput in high-load scenarios.
  late final pulumi.Output<bool?> mutualTlsEnabled;
  /// The name of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses.
  late final pulumi.Output<String> platformReservedCidr;
  /// The IP address from the IP range defined by `platform_reserved_cidr` that is reserved for the internal DNS server.
  late final pulumi.Output<String> platformReservedDnsIpAddress;
  /// The public network access setting for the Container App Environment. Possible values are `Enabled` and `Disabled`.
  late final pulumi.Output<String> publicNetworkAccess;
  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Static IP address of the Environment.
  late final pulumi.Output<String> staticIpAddress;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// One or more `workload_profile` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> workloadProfiles;
  /// Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified.
  late final pulumi.Output<bool?> zoneRedundancyEnabled;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_containerapp_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    daprApplicationInsightsConnectionString = registerOutput<String?>('daprApplicationInsightsConnectionString');
    defaultDomain = registerOutput<String>('defaultDomain');
    dockerBridgeCidr = registerOutput<String>('dockerBridgeCidr');
    identity = registerOutput<EnvironmentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureResourceGroupName = registerOutput<String?>('infrastructureResourceGroupName');
    infrastructureSubnetId = registerOutput<String?>('infrastructureSubnetId');
    internalLoadBalancerEnabled = registerOutput<bool?>('internalLoadBalancerEnabled');
    location = registerOutput<String>('location');
    logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    logsDestination = registerOutput<String>('logsDestination');
    mutualTlsEnabled = registerOutput<bool?>('mutualTlsEnabled');
    this.name = registerOutput<String>('name');
    platformReservedCidr = registerOutput<String>('platformReservedCidr');
    platformReservedDnsIpAddress = registerOutput<String>('platformReservedDnsIpAddress');
    publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    staticIpAddress = registerOutput<String>('staticIpAddress');
    tags = registerOutput<Map<String, String>?>('tags');
    workloadProfiles = registerOutput<List<Map<String, dynamic>>?>('workloadProfiles');
    zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    daprApplicationInsightsConnectionString = registerOutput<String?>('daprApplicationInsightsConnectionString');
    defaultDomain = registerOutput<String>('defaultDomain');
    dockerBridgeCidr = registerOutput<String>('dockerBridgeCidr');
    identity = registerOutput<EnvironmentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureResourceGroupName = registerOutput<String?>('infrastructureResourceGroupName');
    infrastructureSubnetId = registerOutput<String?>('infrastructureSubnetId');
    internalLoadBalancerEnabled = registerOutput<bool?>('internalLoadBalancerEnabled');
    location = registerOutput<String>('location');
    logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    logsDestination = registerOutput<String>('logsDestination');
    mutualTlsEnabled = registerOutput<bool?>('mutualTlsEnabled');
    this.name = registerOutput<String>('name');
    platformReservedCidr = registerOutput<String>('platformReservedCidr');
    platformReservedDnsIpAddress = registerOutput<String>('platformReservedDnsIpAddress');
    publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    staticIpAddress = registerOutput<String>('staticIpAddress');
    tags = registerOutput<Map<String, String>?>('tags');
    workloadProfiles = registerOutput<List<Map<String, dynamic>>?>('workloadProfiles');
    zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
  }
}
