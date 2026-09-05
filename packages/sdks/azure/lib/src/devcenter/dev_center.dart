import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_center_args.dart';
import 'dev_center_identity.dart';
import 'dev_center_state.dart';

/// Manages a Dev Center.
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleDevCenter = new azure.devcenter.DevCenter("example", {
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_dev_center = azure.devcenter.DevCenter("example",
///     location=example.location,
///     name="example",
///     resource_group_name=example.name)
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
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleDevCenter = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
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
/// 		_, err = authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
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
/// resource "azure_authorization_userassignedidentity" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_devcenter_devcenter" "example" {
///   location            = azure_core_resourcegroup.example.location
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
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
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleDevCenter = new DevCenter("exampleDevCenter", DevCenterArgs.builder()
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
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
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleDevCenter:
///     type: azure:devcenter:DevCenter
///     name: example
///     properties:
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## Blocks Reference
///
/// ### `identity` Block
///
///
/// The `identity` block supports the following arguments:
///
/// * `type` - (Required) Specifies the type of Managed Identity that should be assigned to this Dev Center. Possible values are `SystemAssigned`, `SystemAssigned, UserAssigned` and `UserAssigned`.
/// * `identityIds` - (Optional) A list of the User Assigned Identity IDs that should be assigned to this Dev Center.
///
///
/// In addition to the arguments defined above, the `identity` block exports the following attributes:
///
/// * `principalId` - The Principal ID for the System-Assigned Managed Identity assigned to this Dev Center.
/// * `tenantId` - The Tenant ID for the System-Assigned Managed Identity assigned to this Dev Center.
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevCenter` - 2025-02-01
///
/// ## Import
///
/// An existing Dev Center can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/devCenter:DevCenter example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devCenters/{devCenterName}
/// ```
///
/// * Where `{subscriptionId}` is the ID of the Azure Subscription where the Dev Center exists. For example `12345678-1234-9876-4563-123456789012`.
/// * Where `{resourceGroupName}` is the name of Resource Group where this Dev Center exists. For example `example-resource-group`.
/// * Where `{devCenterName}` is the name of the Dev Center. For example `devCenterValue`.
class DevCenter extends pulumi.CustomResource {
  /// The URI of the Dev Center.
  late final pulumi.Output<String> devCenterUri;
  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Dev Center.
  late final pulumi.Output<DevCenterIdentity?> identity;
  /// The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created.
  late final pulumi.Output<String> name;
  /// Whether the project catalogs associated with projects in this Dev Center are allowed to sync catalog items. Defaults to `false`.
  late final pulumi.Output<bool?> projectCatalogItemSyncEnabled;
  /// Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Dev Center.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DevCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevCenter]. {@macro pulumi_devcenter_dev_center_dev_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevCenter(
    String name, {
    DevCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/devCenter:DevCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    devCenterUri = registerOutput<String>('devCenterUri');
    identity = registerOutput<DevCenterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevCenterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    projectCatalogItemSyncEnabled = registerOutput<bool?>('projectCatalogItemSyncEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DevCenter] resource's state with the given [name] and [id].
  static DevCenter get(
    String name,
    pulumi.Input<String> id, {
    DevCenterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DevCenter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DevCenter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/devCenter:DevCenter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    devCenterUri = registerOutput<String>('devCenterUri');
    identity = registerOutput<DevCenterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevCenterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    projectCatalogItemSyncEnabled = registerOutput<bool?>('projectCatalogItemSyncEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DevCenter] resource.
  DevCenter.reference(String urn)
    : super(
        'azure:devcenter/devCenter:DevCenter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    devCenterUri = registerOutput<String>('devCenterUri');
    identity = registerOutput<DevCenterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevCenterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    projectCatalogItemSyncEnabled = registerOutput<bool?>('projectCatalogItemSyncEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
