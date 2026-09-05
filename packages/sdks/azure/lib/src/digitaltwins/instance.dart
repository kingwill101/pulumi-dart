import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_identity.dart';
import 'instance_state.dart';

/// Manages a Digital Twins instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example_resources",
///     location: "West Europe",
/// });
/// const exampleInstance = new azure.digitaltwins.Instance("example", {
///     name: "example-DT",
///     resourceGroupName: example.name,
///     location: example.location,
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example_resources",
///     location="West Europe")
/// example_instance = azure.digitaltwins.Instance("example",
///     name="example-DT",
///     resource_group_name=example.name,
///     location=example.location,
///     tags={
///         "foo": "bar",
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
///         Name = "example_resources",
///         Location = "West Europe",
///     });
///
///     var exampleInstance = new Azure.DigitalTwins.Instance("example", new()
///     {
///         Name = "example-DT",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/digitaltwins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example_resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitaltwins.NewInstance(ctx, "example", &digitaltwins.InstanceArgs{
/// 			Name:              pulumi.String("example-DT"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
///   name     = "example_resources"
///   location = "West Europe"
/// }
/// resource "azure_digitaltwins_instance" "example" {
///   name                = "example-DT"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   tags = {
///     "foo" = "bar"
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
/// import com.pulumi.azure.digitaltwins.Instance;
/// import com.pulumi.azure.digitaltwins.InstanceArgs;
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
///             .name("example_resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .name("example-DT")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .tags(Map.of("foo", "bar"))
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
///       name: example_resources
///       location: West Europe
///   exampleInstance:
///     type: azure:digitaltwins:Instance
///     name: example
///     properties:
///       name: example-DT
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DigitalTwins` - 2023-01-31
///
/// ## Import
///
/// Digital Twins instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:digitaltwins/instance:Instance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DigitalTwins/digitalTwinsInstances/dt1
/// ```
class Instance extends pulumi.CustomResource {
  /// The API endpoint to work with this Digital Twins instance.
  late final pulumi.Output<String> hostName;
  /// An `identity` block as defined below.
  late final pulumi.Output<InstanceIdentity?> identity;
  /// The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Digital Twins instance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_digitaltwins_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:digitaltwins/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<InstanceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:digitaltwins/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<InstanceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Instance] resource.
  Instance.reference(String urn)
    : super(
        'azure:digitaltwins/instance:Instance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<InstanceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
