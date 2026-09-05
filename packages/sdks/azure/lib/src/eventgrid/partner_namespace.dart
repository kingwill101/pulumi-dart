import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_namespace_args.dart';
import 'partner_namespace_inbound_ip_rule.dart';
import 'partner_namespace_state.dart';

/// Manages an Event Grid Partner Namespace.
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
/// const examplePartnerRegistration = new azure.eventgrid.PartnerRegistration("example", {
///     name: "example-partner-registration",
///     resourceGroupName: example.name,
/// });
/// const examplePartnerNamespace = new azure.eventgrid.PartnerNamespace("example", {
///     name: "example-partner-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     partnerRegistrationId: examplePartnerRegistration.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_partner_registration = azure.eventgrid.PartnerRegistration("example",
///     name="example-partner-registration",
///     resource_group_name=example.name)
/// example_partner_namespace = azure.eventgrid.PartnerNamespace("example",
///     name="example-partner-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     partner_registration_id=example_partner_registration.id)
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
///     var examplePartnerRegistration = new Azure.EventGrid.PartnerRegistration("example", new()
///     {
///         Name = "example-partner-registration",
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePartnerNamespace = new Azure.EventGrid.PartnerNamespace("example", new()
///     {
///         Name = "example-partner-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PartnerRegistrationId = examplePartnerRegistration.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
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
/// 		examplePartnerRegistration, err := eventgrid.NewPartnerRegistration(ctx, "example", &eventgrid.PartnerRegistrationArgs{
/// 			Name:              pulumi.String("example-partner-registration"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventgrid.NewPartnerNamespace(ctx, "example", &eventgrid.PartnerNamespaceArgs{
/// 			Name:                  pulumi.String("example-partner-namespace"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			PartnerRegistrationId: examplePartnerRegistration.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_eventgrid_partnerregistration" "example" {
///   name                = "example-partner-registration"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_eventgrid_partnernamespace" "example" {
///   name                    = "example-partner-namespace"
///   location                = azure_core_resourcegroup.example.location
///   resource_group_name     = azure_core_resourcegroup.example.name
///   partner_registration_id = azure_eventgrid_partnerregistration.example.id
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
/// import com.pulumi.azure.eventgrid.PartnerRegistration;
/// import com.pulumi.azure.eventgrid.PartnerRegistrationArgs;
/// import com.pulumi.azure.eventgrid.PartnerNamespace;
/// import com.pulumi.azure.eventgrid.PartnerNamespaceArgs;
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
///         var examplePartnerRegistration = new PartnerRegistration("examplePartnerRegistration", PartnerRegistrationArgs.builder()
///             .name("example-partner-registration")
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePartnerNamespace = new PartnerNamespace("examplePartnerNamespace", PartnerNamespaceArgs.builder()
///             .name("example-partner-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .partnerRegistrationId(examplePartnerRegistration.id())
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
///   examplePartnerRegistration:
///     type: azure:eventgrid:PartnerRegistration
///     name: example
///     properties:
///       name: example-partner-registration
///       resourceGroupName: ${example.name}
///   examplePartnerNamespace:
///     type: azure:eventgrid:PartnerNamespace
///     name: example
///     properties:
///       name: example-partner-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       partnerRegistrationId: ${examplePartnerRegistration.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
///
/// ## Import
///
/// Event Grid Partner Namespaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/partnerNamespace:PartnerNamespace example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.EventGrid/partnerNamespaces/example
/// ```
class PartnerNamespace extends pulumi.CustomResource {
  /// The endpoint for the Event Grid Partner Namespace.
  late final pulumi.Output<String> endpoint;
  /// One or more `inboundIpRule` blocks as defined below.
  late final pulumi.Output<List<PartnerNamespaceInboundIpRule>?> inboundIpRules;
  /// Whether local authentication methods are enabled for the Event Grid Partner Namespace. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;
  /// Specifies the Azure Region where the Event Grid Partner Namespace exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Event Grid Partner Namespace. Changing this forces a new Event Grid Partner Namespace to be created.
  late final pulumi.Output<String> name;
  /// The resource Id of the Event Grid Partner Registration that this namespace is associated with. Changing this forces a new Event Grid Partner Namespace to be created.
  late final pulumi.Output<String> partnerRegistrationId;
  /// The partner topic routing mode. Possible values are `ChannelNameHeader` and `SourceEventAttribute`. Defaults to `ChannelNameHeader`. Changing this forces a new Event Grid Partner Namespace to be created.
  late final pulumi.Output<String?> partnerTopicRoutingMode;
  /// Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The name of the Resource Group where the Event Grid Partner Namespace should exist. Changing this forces a new Event Grid Partner Namespace to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Event Grid Partner Namespace.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PartnerNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerNamespace]. {@macro pulumi_eventgrid_partner_namespace_partner_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerNamespace(
    String name, {
    PartnerNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/partnerNamespace:PartnerNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    endpoint = registerOutput<String>('endpoint');
    inboundIpRules = registerOutput<List<PartnerNamespaceInboundIpRule>?>('inboundIpRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PartnerNamespaceInboundIpRule>(guardedValue, (value) => PartnerNamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>())); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerRegistrationId = registerOutput<String>('partnerRegistrationId');
    partnerTopicRoutingMode = registerOutput<String?>('partnerTopicRoutingMode');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [PartnerNamespace] resource's state with the given [name] and [id].
  static PartnerNamespace get(
    String name,
    pulumi.Input<String> id, {
    PartnerNamespaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PartnerNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PartnerNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/partnerNamespace:PartnerNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpoint = registerOutput<String>('endpoint');
    inboundIpRules = registerOutput<List<PartnerNamespaceInboundIpRule>?>('inboundIpRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PartnerNamespaceInboundIpRule>(guardedValue, (value) => PartnerNamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>())); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerRegistrationId = registerOutput<String>('partnerRegistrationId');
    partnerTopicRoutingMode = registerOutput<String?>('partnerTopicRoutingMode');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [PartnerNamespace] resource.
  PartnerNamespace.reference(String urn)
    : super(
        'azure:eventgrid/partnerNamespace:PartnerNamespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    endpoint = registerOutput<String>('endpoint');
    inboundIpRules = registerOutput<List<PartnerNamespaceInboundIpRule>?>('inboundIpRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PartnerNamespaceInboundIpRule>(guardedValue, (value) => PartnerNamespaceInboundIpRule.fromMap((value as Map).cast<String, dynamic>())); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerRegistrationId = registerOutput<String>('partnerRegistrationId');
    partnerTopicRoutingMode = registerOutput<String?>('partnerTopicRoutingMode');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
