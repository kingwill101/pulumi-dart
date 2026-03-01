import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_connection_args.dart';
import 'api_connection_state.dart';

/// Manages an API Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.connections.getManagedApiOutput({
///     name: "servicebus",
///     location: exampleResourceGroup.location,
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "example-namespace",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "Basic",
/// });
/// const exampleApiConnection = new azure.connections.ApiConnection("example", {
///     name: "example-connection",
///     resourceGroupName: exampleResourceGroup.name,
///     managedApiId: example.apply(example => example.id),
///     displayName: "Example 1",
///     parameterValues: {
///         connectionString: exampleNamespace.defaultPrimaryConnectionString,
///     },
///     tags: {
///         Hello: "World",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.connections.get_managed_api_output(name="servicebus",
///     location=example_resource_group.location)
/// example_namespace = azure.servicebus.Namespace("example",
///     name="example-namespace",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="Basic")
/// example_api_connection = azure.connections.ApiConnection("example",
///     name="example-connection",
///     resource_group_name=example_resource_group.name,
///     managed_api_id=example.id,
///     display_name="Example 1",
///     parameter_values={
///         "connectionString": example_namespace.default_primary_connection_string,
///     },
///     tags={
///         "Hello": "World",
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
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.Connections.GetManagedApi.Invoke(new()
///     {
///         Name = "servicebus",
///         Location = exampleResourceGroup.Location,
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "example-namespace",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "Basic",
///     });
///
///     var exampleApiConnection = new Azure.Connections.ApiConnection("example", new()
///     {
///         Name = "example-connection",
///         ResourceGroupName = exampleResourceGroup.Name,
///         ManagedApiId = example.Apply(getManagedApiResult => getManagedApiResult.Id),
///         DisplayName = "Example 1",
///         ParameterValues =
///         {
///             { "connectionString", exampleNamespace.DefaultPrimaryConnectionString },
///         },
///         Tags =
///         {
///             { "Hello", "World" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/connections"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := connections.GetManagedApiOutput(ctx, connections.GetManagedApiOutputArgs{
/// 			Name:     pulumi.String("servicebus"),
/// 			Location: exampleResourceGroup.Location,
/// 		}, nil)
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("example-namespace"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = connections.NewApiConnection(ctx, "example", &connections.ApiConnectionArgs{
/// 			Name:              pulumi.String("example-connection"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			ManagedApiId: pulumi.String(example.ApplyT(func(example connections.GetManagedApiResult) (*string, error) {
/// 				return &example.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			DisplayName: pulumi.String("Example 1"),
/// 			ParameterValues: pulumi.StringMap{
/// 				"connectionString": exampleNamespace.DefaultPrimaryConnectionString,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Hello": pulumi.String("World"),
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
/// import com.pulumi.azure.connections.ConnectionsFunctions;
/// import com.pulumi.azure.connections.inputs.GetManagedApiArgs;
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.connections.ApiConnection;
/// import com.pulumi.azure.connections.ApiConnectionArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = ConnectionsFunctions.getManagedApi(GetManagedApiArgs.builder()
///             .name("servicebus")
///             .location(exampleResourceGroup.location())
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-namespace")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("Basic")
///             .build());
///
///         var exampleApiConnection = new ApiConnection("exampleApiConnection", ApiConnectionArgs.builder()
///             .name("example-connection")
///             .resourceGroupName(exampleResourceGroup.name())
///             .managedApiId(example.applyValue(_example -> _example.id()))
///             .displayName("Example 1")
///             .parameterValues(Map.of("connectionString", exampleNamespace.defaultPrimaryConnectionString()))
///             .tags(Map.of("Hello", "World"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: example-namespace
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: Basic
///   exampleApiConnection:
///     type: azure:connections:ApiConnection
///     name: example
///     properties:
///       name: example-connection
///       resourceGroupName: ${exampleResourceGroup.name}
///       managedApiId: ${example.id}
///       displayName: Example 1
///       parameterValues:
///         connectionString: ${exampleNamespace.defaultPrimaryConnectionString}
///       tags:
///         Hello: World
/// variables:
///   example:
///     fn::invoke:
///       function: azure:connections:getManagedApi
///       arguments:
///         name: servicebus
///         location: ${exampleResourceGroup.location}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2016-06-01
///
/// ## Import
///
/// API Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:connections/apiConnection:ApiConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.Web/connections/example-connection
/// ```
class ApiConnection extends pulumi.CustomResource {
  /// A display name for this API Connection.
  late final pulumi.Output<String> displayName;
  /// The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created.
  late final pulumi.Output<String> managedApiId;
  /// The Name which should be used for this API Connection. Changing this forces a new API Connection to be created.
  late final pulumi.Output<String> name;
  /// A map of parameter values associated with this API Connection.
  ///
  /// > **Note:** The Azure API doesn't return sensitive parameters in the API response which can lead to a diff, as such you may need to use Terraform's `ignore_changes` functionality on this field as shown in the Example Usage above.
  late final pulumi.Output<Map<String, String>?> parameterValues;
  /// The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the API Connection.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ApiConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiConnection]. {@macro pulumi_connections_api_connection_api_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiConnection(
    String name, {
    ApiConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:connections/apiConnection:ApiConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.managedApiId = registerOutput<String>('managedApiId');
    this.name = registerOutput<String>('name');
    this.parameterValues = registerOutput<Map<String, String>?>('parameterValues');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ApiConnection] resource's state with the given [name] and [id].
  static ApiConnection get(
    String name,
    pulumi.Input<String> id, {
    ApiConnectionState? state,
  }) {
    return ApiConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:connections/apiConnection:ApiConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.managedApiId = registerOutput<String>('managedApiId');
    this.name = registerOutput<String>('name');
    this.parameterValues = registerOutput<Map<String, String>?>('parameterValues');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
