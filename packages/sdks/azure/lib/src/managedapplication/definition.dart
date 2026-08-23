import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_args.dart';
import 'definition_state.dart';

/// Manages a Managed Application Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleDefinition = new azure.managedapplication.Definition("example", {
///     name: "examplemanagedapplicationdefinition",
///     location: example.location,
///     resourceGroupName: example.name,
///     lockLevel: "ReadOnly",
///     packageFileUri: "https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip",
///     displayName: "TestManagedApplicationDefinition",
///     description: "Test Managed Application Definition",
///     authorizations: [{
///         servicePrincipalId: current.then(current => current.objectId),
///         roleDefinitionId: "a094b430-dad3-424d-ae58-13f72fd72591",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_definition = azure.managedapplication.Definition("example",
///     name="examplemanagedapplicationdefinition",
///     location=example.location,
///     resource_group_name=example.name,
///     lock_level="ReadOnly",
///     package_file_uri="https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip",
///     display_name="TestManagedApplicationDefinition",
///     description="Test Managed Application Definition",
///     authorizations=[{
///         "service_principal_id": current.object_id,
///         "role_definition_id": "a094b430-dad3-424d-ae58-13f72fd72591",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleDefinition = new Azure.ManagedApplication.Definition("example", new()
///     {
///         Name = "examplemanagedapplicationdefinition",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LockLevel = "ReadOnly",
///         PackageFileUri = "https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip",
///         DisplayName = "TestManagedApplicationDefinition",
///         Description = "Test Managed Application Definition",
///         Authorizations = new[]
///         {
///             new Azure.ManagedApplication.Inputs.DefinitionAuthorizationArgs
///             {
///                 ServicePrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 RoleDefinitionId = "a094b430-dad3-424d-ae58-13f72fd72591",
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedapplication"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedapplication.NewDefinition(ctx, "example", &managedapplication.DefinitionArgs{
/// 			Name:              pulumi.String("examplemanagedapplicationdefinition"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			LockLevel:         pulumi.String("ReadOnly"),
/// 			PackageFileUri:    pulumi.String("https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip"),
/// 			DisplayName:       pulumi.String("TestManagedApplicationDefinition"),
/// 			Description:       pulumi.String("Test Managed Application Definition"),
/// 			Authorizations: managedapplication.DefinitionAuthorizationArray{
/// 				&managedapplication.DefinitionAuthorizationArgs{
/// 					ServicePrincipalId: pulumi.String(current.ObjectId),
/// 					RoleDefinitionId:   pulumi.String("a094b430-dad3-424d-ae58-13f72fd72591"),
/// 				},
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_managedapplication_definition" "example" {
///   name                = "examplemanagedapplicationdefinition"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   lock_level          = "ReadOnly"
///   package_file_uri    = "https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip"
///   display_name        = "TestManagedApplicationDefinition"
///   description         = "Test Managed Application Definition"
///   authorizations {
///     service_principal_id = data.azure_core_getclientconfig.current.object_id
///     role_definition_id   = "a094b430-dad3-424d-ae58-13f72fd72591"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.managedapplication.Definition;
/// import com.pulumi.azure.managedapplication.DefinitionArgs;
/// import com.pulumi.azure.managedapplication.inputs.DefinitionAuthorizationArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleDefinition = new Definition("exampleDefinition", DefinitionArgs.builder()
///             .name("examplemanagedapplicationdefinition")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .lockLevel("ReadOnly")
///             .packageFileUri("https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip")
///             .displayName("TestManagedApplicationDefinition")
///             .description("Test Managed Application Definition")
///             .authorizations(DefinitionAuthorizationArgs.builder()
///                 .servicePrincipalId(current.objectId())
///                 .roleDefinitionId("a094b430-dad3-424d-ae58-13f72fd72591")
///                 .build())
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
///   exampleDefinition:
///     type: azure:managedapplication:Definition
///     name: example
///     properties:
///       name: examplemanagedapplicationdefinition
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       lockLevel: ReadOnly
///       packageFileUri: https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip
///       displayName: TestManagedApplicationDefinition
///       description: Test Managed Application Definition
///       authorizations:
///         - servicePrincipalId: ${current.objectId}
///           roleDefinitionId: a094b430-dad3-424d-ae58-13f72fd72591
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Solutions` - 2021-07-01
///
/// ## Import
///
/// Managed Application Definition can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managedapplication/definition:Definition example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Solutions/applicationDefinitions/appDefinition1
/// ```
class Definition extends pulumi.CustomResource {
  /// One or more `authorization` block defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> authorizations;
  /// Specifies the `createUiDefinition` JSON for the backing template with `Microsoft.Solutions/applications` resource.
  late final pulumi.Output<String?> createUiDefinition;
  /// Specifies the managed application definition description.
  late final pulumi.Output<String?> description;
  /// Specifies the managed application definition display name.
  late final pulumi.Output<String> displayName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the managed application lock level. Valid values include `CanNotDelete`, `None`, `ReadOnly`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> lockLevel;
  /// Specifies the inline main template JSON which has resources to be provisioned.
  late final pulumi.Output<String?> mainTemplate;
  /// Specifies the name of the Managed Application Definition. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Is the package enabled? Defaults to `true`.
  late final pulumi.Output<bool?> packageEnabled;
  /// Specifies the managed application definition package file Uri.
  late final pulumi.Output<String?> packageFileUri;
  /// The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// &gt; **Note:** If either `createUiDefinition` or `mainTemplate` is set they both must be set.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Definition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Definition]. {@macro pulumi_managedapplication_definition_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Definition(
    String name, {
    DefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedapplication/definition:Definition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizations = registerOutput<List<Map<String, dynamic>>?>('authorizations');
    createUiDefinition = registerOutput<String?>('createUiDefinition');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    lockLevel = registerOutput<String>('lockLevel');
    mainTemplate = registerOutput<String?>('mainTemplate');
    this.name = registerOutput<String>('name');
    packageEnabled = registerOutput<bool?>('packageEnabled');
    packageFileUri = registerOutput<String?>('packageFileUri');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Definition] resource's state with the given [name] and [id].
  static Definition get(
    String name,
    pulumi.Input<String> id, {
    DefinitionState? state,
  }) {
    return Definition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Definition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedapplication/definition:Definition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizations = registerOutput<List<Map<String, dynamic>>?>('authorizations');
    createUiDefinition = registerOutput<String?>('createUiDefinition');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    lockLevel = registerOutput<String>('lockLevel');
    mainTemplate = registerOutput<String?>('mainTemplate');
    this.name = registerOutput<String>('name');
    packageEnabled = registerOutput<bool?>('packageEnabled');
    packageFileUri = registerOutput<String?>('packageFileUri');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
