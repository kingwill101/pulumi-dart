import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_private_endpoint_connection.dart';
import 'workspace_state.dart';

/// Manages a Healthcare workspace
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = new azure.healthcare.Workspace("test", {
///     name: "tfexworkspace",
///     resourceGroupName: "tfex-resource_group",
///     location: "east us",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.healthcare.Workspace("test",
///     name="tfexworkspace",
///     resource_group_name="tfex-resource_group",
///     location="east us")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Azure.Healthcare.Workspace("test", new()
///     {
///         Name = "tfexworkspace",
///         ResourceGroupName = "tfex-resource_group",
///         Location = "east us",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.NewWorkspace(ctx, "test", &healthcare.WorkspaceArgs{
/// 			Name:              pulumi.String("tfexworkspace"),
/// 			ResourceGroupName: pulumi.String("tfex-resource_group"),
/// 			Location:          pulumi.String("east us"),
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
/// resource "azure_healthcare_workspace" "test" {
///   name                = "tfexworkspace"
///   resource_group_name = "tfex-resource_group"
///   location            = "east us"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.healthcare.Workspace;
/// import com.pulumi.azure.healthcare.WorkspaceArgs;
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
///         var test = new Workspace("test", WorkspaceArgs.builder()
///             .name("tfexworkspace")
///             .resourceGroupName("tfex-resource_group")
///             .location("east us")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: azure:healthcare:Workspace
///     properties:
///       name: tfexworkspace
///       resourceGroupName: tfex-resource_group
///       location: east us
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2024-03-31
///
/// ## Import
///
/// Healthcare Workspaces can be imported using the resource`id`, e.g.
///
/// ```sh
/// $ pulumi import azure:healthcare/workspace:Workspace example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.HealthcareApis/workspaces/workspace1
/// ```
class Workspace extends pulumi.CustomResource {
  /// Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<WorkspacePrivateEndpointConnection>> privateEndpointConnections;
  /// Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the Healthcare Workspace.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_healthcare_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<WorkspacePrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspacePrivateEndpointConnection>(guardedValue, (value) => WorkspacePrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<WorkspacePrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspacePrivateEndpointConnection>(guardedValue, (value) => WorkspacePrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Workspace] resource.
  Workspace.reference(String urn)
    : super(
        'azure:healthcare/workspace:Workspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<WorkspacePrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspacePrivateEndpointConnection>(guardedValue, (value) => WorkspacePrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
