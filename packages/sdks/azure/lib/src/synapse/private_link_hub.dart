import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_hub_args.dart';
import 'private_link_hub_state.dart';

/// Manages a Synapse Private Link Hub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.synapse.PrivateLinkHub("example", {
///     name: "example",
///     resourceGroupName: "example-rg",
///     location: "West Europe",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.synapse.PrivateLinkHub("example",
///     name="example",
///     resource_group_name="example-rg",
///     location="West Europe")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Synapse.PrivateLinkHub("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-rg",
///         Location = "West Europe",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewPrivateLinkHub(ctx, "example", &synapse.PrivateLinkHubArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Location:          pulumi.String("West Europe"),
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
/// resource "azure_synapse_privatelinkhub" "example" {
///   name                = "example"
///   resource_group_name = "example-rg"
///   location            = "West Europe"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.synapse.PrivateLinkHub;
/// import com.pulumi.azure.synapse.PrivateLinkHubArgs;
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
///         var example = new PrivateLinkHub("example", PrivateLinkHubArgs.builder()
///             .name("example")
///             .resourceGroupName("example-rg")
///             .location("West Europe")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:synapse:PrivateLinkHub
///     properties:
///       name: example
///       resourceGroupName: example-rg
///       location: West Europe
/// ```
///
///
/// ## Import
///
/// Synapse Private Link Hub can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/privateLinkHub:PrivateLinkHub example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/privateLinkHubs/privateLinkHub1
/// ```
class PrivateLinkHub extends pulumi.CustomResource {
  /// Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Synapse Private Link Hub.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PrivateLinkHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkHub]. {@macro pulumi_synapse_private_link_hub_private_link_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkHub(
    String name, {
    PrivateLinkHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/privateLinkHub:PrivateLinkHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [PrivateLinkHub] resource's state with the given [name] and [id].
  static PrivateLinkHub get(
    String name,
    pulumi.Input<String> id, {
    PrivateLinkHubState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PrivateLinkHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PrivateLinkHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/privateLinkHub:PrivateLinkHub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [PrivateLinkHub] resource.
  PrivateLinkHub.reference(String urn)
    : super(
        'azure:synapse/privateLinkHub:PrivateLinkHub',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
