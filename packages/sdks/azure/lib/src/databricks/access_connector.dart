import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_connector_args.dart';
import 'access_connector_identity.dart';
import 'access_connector_state.dart';

/// Manages a Databricks Access Connector
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
/// const exampleAccessConnector = new azure.databricks.AccessConnector("example", {
///     name: "example-resource",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Environment: "Production",
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
/// example_access_connector = azure.databricks.AccessConnector("example",
///     name="example-resource",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Environment": "Production",
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
///     var exampleAccessConnector = new Azure.DataBricks.AccessConnector("example", new()
///     {
///         Name = "example-resource",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.DataBricks.Inputs.AccessConnectorIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
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
/// 		_, err = databricks.NewAccessConnector(ctx, "example", &databricks.AccessConnectorArgs{
/// 			Name:              pulumi.String("example-resource"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &databricks.AccessConnectorIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
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
/// resource "azure_databricks_accessconnector" "example" {
///   name                = "example-resource"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   identity = {
///     type = "SystemAssigned"
///   }
///   tags = {
///     "Environment" = "Production"
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
/// import com.pulumi.azure.databricks.AccessConnector;
/// import com.pulumi.azure.databricks.AccessConnectorArgs;
/// import com.pulumi.azure.databricks.inputs.AccessConnectorIdentityArgs;
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
///         var exampleAccessConnector = new AccessConnector("exampleAccessConnector", AccessConnectorArgs.builder()
///             .name("example-resource")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(AccessConnectorIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Environment", "Production"))
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
///   exampleAccessConnector:
///     type: azure:databricks:AccessConnector
///     name: example
///     properties:
///       name: example-resource
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
///       tags:
///         Environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Databricks` - 2026-01-01
///
/// ## Import
///
/// Databricks Access Connectors can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:databricks/accessConnector:AccessConnector connector1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Databricks/accessConnectors/connector1
/// ```
class AccessConnector extends pulumi.CustomResource {
  /// An `identity` block as defined below.
  late final pulumi.Output<AccessConnectorIdentity?> identity;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Databricks Access Connector resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group in which the Databricks Access Connector should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AccessConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessConnector]. {@macro pulumi_databricks_access_connector_access_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessConnector(
    String name, {
    AccessConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/accessConnector:AccessConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identity = registerOutput<AccessConnectorIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessConnectorIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AccessConnector] resource's state with the given [name] and [id].
  static AccessConnector get(
    String name,
    pulumi.Input<String> id, {
    AccessConnectorState? state,
  }) {
    return AccessConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/accessConnector:AccessConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identity = registerOutput<AccessConnectorIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessConnectorIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
