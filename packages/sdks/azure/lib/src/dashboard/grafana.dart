import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafana_args.dart';
import 'grafana_identity.dart';
import 'grafana_smtp.dart';
import 'grafana_state.dart';

/// Manages a Dashboard Grafana.
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
/// const exampleGrafana = new azure.dashboard.Grafana("example", {
///     name: "example-dg",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     grafanaMajorVersion: "11",
///     apiKeyEnabled: true,
///     deterministicOutboundIpEnabled: true,
///     publicNetworkAccessEnabled: false,
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         key: "value",
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
/// example_grafana = azure.dashboard.Grafana("example",
///     name="example-dg",
///     resource_group_name=example.name,
///     location="West Europe",
///     grafana_major_version="11",
///     api_key_enabled=True,
///     deterministic_outbound_ip_enabled=True,
///     public_network_access_enabled=False,
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "key": "value",
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
///     var exampleGrafana = new Azure.Dashboard.Grafana("example", new()
///     {
///         Name = "example-dg",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         GrafanaMajorVersion = "11",
///         ApiKeyEnabled = true,
///         DeterministicOutboundIpEnabled = true,
///         PublicNetworkAccessEnabled = false,
///         Identity = new Azure.Dashboard.Inputs.GrafanaIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "key", "value" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dashboard"
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
/// 		_, err = dashboard.NewGrafana(ctx, "example", &dashboard.GrafanaArgs{
/// 			Name:                           pulumi.String("example-dg"),
/// 			ResourceGroupName:              example.Name,
/// 			Location:                       pulumi.String("West Europe"),
/// 			GrafanaMajorVersion:            pulumi.String("11"),
/// 			ApiKeyEnabled:                  pulumi.Bool(true),
/// 			DeterministicOutboundIpEnabled: pulumi.Bool(true),
/// 			PublicNetworkAccessEnabled:     pulumi.Bool(false),
/// 			Identity: &dashboard.GrafanaIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.dashboard.Grafana;
/// import com.pulumi.azure.dashboard.GrafanaArgs;
/// import com.pulumi.azure.dashboard.inputs.GrafanaIdentityArgs;
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
///         var exampleGrafana = new Grafana("exampleGrafana", GrafanaArgs.builder()
///             .name("example-dg")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .grafanaMajorVersion("11")
///             .apiKeyEnabled(true)
///             .deterministicOutboundIpEnabled(true)
///             .publicNetworkAccessEnabled(false)
///             .identity(GrafanaIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("key", "value"))
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
///   exampleGrafana:
///     type: azure:dashboard:Grafana
///     name: example
///     properties:
///       name: example-dg
///       resourceGroupName: ${example.name}
///       location: West Europe
///       grafanaMajorVersion: 11
///       apiKeyEnabled: true
///       deterministicOutboundIpEnabled: true
///       publicNetworkAccessEnabled: false
///       identity:
///         type: SystemAssigned
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Dashboard` - 2025-08-01
///
/// ## Import
///
/// Dashboard Grafana can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dashboard/grafana:Grafana example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Dashboard/grafana/workspace1
/// ```
class Grafana extends pulumi.CustomResource {
  /// Whether to enable the api key setting of the Grafana instance. Defaults to `false`.
  late final pulumi.Output<bool?> apiKeyEnabled;
  /// Scope for dns deterministic name hash calculation. The only possible value is `TenantReuse`. Defaults to `TenantReuse`.
  late final pulumi.Output<String?> autoGeneratedDomainNameLabelScope;
  /// A `azure_monitor_workspace_integrations` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> azureMonitorWorkspaceIntegrations;
  /// Whether to enable the Grafana instance to use deterministic outbound IPs. Defaults to `false`.
  late final pulumi.Output<bool?> deterministicOutboundIpEnabled;
  /// The endpoint of the Grafana instance.
  late final pulumi.Output<String> endpoint;
  /// Which major version of Grafana to deploy. Possible values are `10`, `11`.
  late final pulumi.Output<String> grafanaMajorVersion;
  /// The full Grafana software semantic version deployed.
  late final pulumi.Output<String> grafanaVersion;
  /// An `identity` block as defined below. Changing this forces a new Dashboard Grafana to be created.
  late final pulumi.Output<GrafanaIdentity?> identity;
  /// Specifies the Azure Region where the Dashboard Grafana should exist. Changing this forces a new Dashboard Grafana to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Dashboard Grafana. Changing this forces a new Dashboard Grafana to be created.
  late final pulumi.Output<String> name;
  /// List of outbound IPs if deterministicOutboundIP is enabled.
  late final pulumi.Output<List<String>> outboundIps;
  /// Whether to enable traffic over the public interface. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group where the Dashboard Grafana should exist. Changing this forces a new Dashboard Grafana to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the SKU used for the Grafana instance. Possible values are `Standard` and `Essential`. Defaults to `Standard`. Changing this forces a new Dashboard Grafana to be created.
  late final pulumi.Output<String?> sku;
  /// A `smtp` block as defined below.
  late final pulumi.Output<GrafanaSmtp?> smtp;
  /// A mapping of tags which should be assigned to the Dashboard Grafana.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether to enable the zone redundancy setting of the Grafana instance. Defaults to `false`. Changing this forces a new Dashboard Grafana to be created.
  late final pulumi.Output<bool?> zoneRedundancyEnabled;

  /// Creates a new [Grafana].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Grafana]. {@macro pulumi_dashboard_grafana_grafana_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Grafana(
    String name, {
    GrafanaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dashboard/grafana:Grafana',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKeyEnabled = registerOutput<bool?>('apiKeyEnabled');
    autoGeneratedDomainNameLabelScope = registerOutput<String?>('autoGeneratedDomainNameLabelScope');
    azureMonitorWorkspaceIntegrations = registerOutput<List<Map<String, dynamic>>?>('azureMonitorWorkspaceIntegrations');
    deterministicOutboundIpEnabled = registerOutput<bool?>('deterministicOutboundIpEnabled');
    endpoint = registerOutput<String>('endpoint');
    grafanaMajorVersion = registerOutput<String>('grafanaMajorVersion');
    grafanaVersion = registerOutput<String>('grafanaVersion');
    identity = registerOutput<GrafanaIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GrafanaIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outboundIps = registerOutput<List<String>>('outboundIps');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    smtp = registerOutput<GrafanaSmtp?>('smtp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GrafanaSmtp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
  }

  /// Gets an existing [Grafana] resource's state with the given [name] and [id].
  static Grafana get(
    String name,
    pulumi.Input<String> id, {
    GrafanaState? state,
  }) {
    return Grafana._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Grafana._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dashboard/grafana:Grafana',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKeyEnabled = registerOutput<bool?>('apiKeyEnabled');
    autoGeneratedDomainNameLabelScope = registerOutput<String?>('autoGeneratedDomainNameLabelScope');
    azureMonitorWorkspaceIntegrations = registerOutput<List<Map<String, dynamic>>?>('azureMonitorWorkspaceIntegrations');
    deterministicOutboundIpEnabled = registerOutput<bool?>('deterministicOutboundIpEnabled');
    endpoint = registerOutput<String>('endpoint');
    grafanaMajorVersion = registerOutput<String>('grafanaMajorVersion');
    grafanaVersion = registerOutput<String>('grafanaVersion');
    identity = registerOutput<GrafanaIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GrafanaIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outboundIps = registerOutput<List<String>>('outboundIps');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    smtp = registerOutput<GrafanaSmtp?>('smtp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GrafanaSmtp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
  }
}
