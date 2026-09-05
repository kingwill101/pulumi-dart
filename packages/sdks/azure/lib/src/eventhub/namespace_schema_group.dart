import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_schema_group_args.dart';
import 'namespace_schema_group_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exampleRG-ehn-schemaGroup",
///     location: "East US",
/// });
/// const test = new azure.eventhub.EventHubNamespace("test", {
///     name: "example-ehn-schemaGroup",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     sku: "Standard",
/// });
/// const testNamespaceSchemaGroup = new azure.eventhub.NamespaceSchemaGroup("test", {
///     name: "example-schemaGroup",
///     namespaceId: test.id,
///     schemaCompatibility: "Forward",
///     schemaType: "Avro",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="exampleRG-ehn-schemaGroup",
///     location="East US")
/// test = azure.eventhub.EventHubNamespace("test",
///     name="example-ehn-schemaGroup",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     sku="Standard")
/// test_namespace_schema_group = azure.eventhub.NamespaceSchemaGroup("test",
///     name="example-schemaGroup",
///     namespace_id=test.id,
///     schema_compatibility="Forward",
///     schema_type="Avro")
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
///         Name = "exampleRG-ehn-schemaGroup",
///         Location = "East US",
///     });
///
///     var test = new Azure.EventHub.EventHubNamespace("test", new()
///     {
///         Name = "example-ehn-schemaGroup",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Sku = "Standard",
///     });
///
///     var testNamespaceSchemaGroup = new Azure.EventHub.NamespaceSchemaGroup("test", new()
///     {
///         Name = "example-schemaGroup",
///         NamespaceId = test.Id,
///         SchemaCompatibility = "Forward",
///         SchemaType = "Avro",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("exampleRG-ehn-schemaGroup"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := eventhub.NewEventHubNamespace(ctx, "test", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-ehn-schemaGroup"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventhub.NewNamespaceSchemaGroup(ctx, "test", &eventhub.NamespaceSchemaGroupArgs{
/// 			Name:                pulumi.String("example-schemaGroup"),
/// 			NamespaceId:         test.ID().ToIDOutput().ToStringOutput(),
/// 			SchemaCompatibility: pulumi.String("Forward"),
/// 			SchemaType:          pulumi.String("Avro"),
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
///   name     = "exampleRG-ehn-schemaGroup"
///   location = "East US"
/// }
/// resource "azure_eventhub_eventhubnamespace" "test" {
///   name                = "example-ehn-schemaGroup"
///   location            = testAzurermResourceGroup.location
///   resource_group_name = testAzurermResourceGroup.name
///   sku                 = "Standard"
/// }
/// resource "azure_eventhub_namespaceschemagroup" "test" {
///   name                 = "example-schemaGroup"
///   namespace_id         = azure_eventhub_eventhubnamespace.test.id
///   schema_compatibility = "Forward"
///   schema_type          = "Avro"
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
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.NamespaceSchemaGroup;
/// import com.pulumi.azure.eventhub.NamespaceSchemaGroupArgs;
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
///             .name("exampleRG-ehn-schemaGroup")
///             .location("East US")
///             .build());
///
///         var test = new EventHubNamespace("test", EventHubNamespaceArgs.builder()
///             .name("example-ehn-schemaGroup")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .sku("Standard")
///             .build());
///
///         var testNamespaceSchemaGroup = new NamespaceSchemaGroup("testNamespaceSchemaGroup", NamespaceSchemaGroupArgs.builder()
///             .name("example-schemaGroup")
///             .namespaceId(test.id())
///             .schemaCompatibility("Forward")
///             .schemaType("Avro")
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
///       name: exampleRG-ehn-schemaGroup
///       location: East US
///   test:
///     type: azure:eventhub:EventHubNamespace
///     properties:
///       name: example-ehn-schemaGroup
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       sku: Standard
///   testNamespaceSchemaGroup:
///     type: azure:eventhub:NamespaceSchemaGroup
///     name: test
///     properties:
///       name: example-schemaGroup
///       namespaceId: ${test.id}
///       schemaCompatibility: Forward
///       schemaType: Avro
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
///
/// ## Import
///
/// Schema Group for a EventHub Namespace can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/namespaceSchemaGroup:NamespaceSchemaGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1/schemaGroups/group1
/// ```
class NamespaceSchemaGroup extends pulumi.CustomResource {
  /// Specifies the name of this schema group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceId;
  /// Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> schemaCompatibility;
  /// Specifies the Type of this schema group. Possible values are `Avro`, `Unknown` and `Json`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `schemaType` is specified as `Json`, `schemaCompatibility` must be set to `None`.
  late final pulumi.Output<String> schemaType;

  /// Creates a new [NamespaceSchemaGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceSchemaGroup]. {@macro pulumi_eventhub_namespace_schema_group_namespace_schema_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceSchemaGroup(
    String name, {
    NamespaceSchemaGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/namespaceSchemaGroup:NamespaceSchemaGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    schemaCompatibility = registerOutput<String>('schemaCompatibility');
    schemaType = registerOutput<String>('schemaType');
  }

  /// Gets an existing [NamespaceSchemaGroup] resource's state with the given [name] and [id].
  static NamespaceSchemaGroup get(
    String name,
    pulumi.Input<String> id, {
    NamespaceSchemaGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NamespaceSchemaGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NamespaceSchemaGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/namespaceSchemaGroup:NamespaceSchemaGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    schemaCompatibility = registerOutput<String>('schemaCompatibility');
    schemaType = registerOutput<String>('schemaType');
  }

  /// Creates a typed reference to an existing [NamespaceSchemaGroup] resource.
  NamespaceSchemaGroup.reference(String urn)
    : super(
        'azure:eventhub/namespaceSchemaGroup:NamespaceSchemaGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    schemaCompatibility = registerOutput<String>('schemaCompatibility');
    schemaType = registerOutput<String>('schemaType');
  }
}
