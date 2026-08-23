import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_user_managed_identity_args.dart';
import 'credential_user_managed_identity_state.dart';

/// Manage a Data Factory User Assigned Managed Identity credential resource. These resources are used by Data Factory to access data sources.
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
///     location: "westus",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     location: example.location,
///     name: "my-user",
///     resourceGroupName: example.name,
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// const test = new azure.datafactory.CredentialUserManagedIdentity("test", {
///     name: exampleUserAssignedIdentity.name,
///     description: "Short description of this credential",
///     dataFactoryId: exampleFactory.id,
///     identityId: exampleUserAssignedIdentity.id,
///     annotations: [
///         "example",
///         "example2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="westus")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     location=example.location,
///     name="my-user",
///     resource_group_name=example.name)
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// test = azure.datafactory.CredentialUserManagedIdentity("test",
///     name=example_user_assigned_identity.name,
///     description="Short description of this credential",
///     data_factory_id=example_factory.id,
///     identity_id=example_user_assigned_identity.id,
///     annotations=[
///         "example",
///         "example2",
///     ])
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
///         Location = "westus",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Location = example.Location,
///         Name = "my-user",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataFactory.Inputs.FactoryIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var test = new Azure.DataFactory.CredentialUserManagedIdentity("test", new()
///     {
///         Name = exampleUserAssignedIdentity.Name,
///         Description = "Short description of this credential",
///         DataFactoryId = exampleFactory.Id,
///         IdentityId = exampleUserAssignedIdentity.Id,
///         Annotations = new[]
///         {
///             "example",
///             "example2",
///         },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("westus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("my-user"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datafactory.FactoryIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewCredentialUserManagedIdentity(ctx, "test", &datafactory.CredentialUserManagedIdentityArgs{
/// 			Name:          exampleUserAssignedIdentity.Name,
/// 			Description:   pulumi.String("Short description of this credential"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			IdentityId:    exampleUserAssignedIdentity.ID(),
/// 			Annotations: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 				pulumi.String("example2"),
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
///   location = "westus"
/// }
/// resource "azure_datafactory_factory" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   identity = {
///     type         = "UserAssigned"
///     identity_ids = [azure_authorization_userassignedidentity.example.id]
///   }
/// }
/// resource "azure_authorization_userassignedidentity" "example" {
///   location            = azure_core_resourcegroup.example.location
///   name                = "my-user"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_datafactory_credentialusermanagedidentity" "test" {
///   name            = azure_authorization_userassignedidentity.example.name
///   description     = "Short description of this credential"
///   data_factory_id = azure_datafactory_factory.example.id
///   identity_id     = azure_authorization_userassignedidentity.example.id
///   annotations     = ["example", "example2"]
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.inputs.FactoryIdentityArgs;
/// import com.pulumi.azure.datafactory.CredentialUserManagedIdentity;
/// import com.pulumi.azure.datafactory.CredentialUserManagedIdentityArgs;
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
///             .location("westus")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .location(example.location())
///             .name("my-user")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(FactoryIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var test = new CredentialUserManagedIdentity("test", CredentialUserManagedIdentityArgs.builder()
///             .name(exampleUserAssignedIdentity.name())
///             .description("Short description of this credential")
///             .dataFactoryId(exampleFactory.id())
///             .identityId(exampleUserAssignedIdentity.id())
///             .annotations(
///                 "example",
///                 "example2")
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
///       location: westus
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       location: ${example.location}
///       name: my-user
///       resourceGroupName: ${example.name}
///   test:
///     type: azure:datafactory:CredentialUserManagedIdentity
///     properties:
///       name: ${exampleUserAssignedIdentity.name}
///       description: Short description of this credential
///       dataFactoryId: ${exampleFactory.id}
///       identityId: ${exampleUserAssignedIdentity.id}
///       annotations:
///         - example
///         - example2
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Credentials can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/credentialUserManagedIdentity:CredentialUserManagedIdentity example /subscriptions/1f3d6e58-feed-4bb6-87e5-a52305ad3375/resourceGroups/example-resources/providers/Microsoft.DataFactory/factories/example/credentials/credential1
/// ```
class CredentialUserManagedIdentity extends pulumi.CustomResource {
  /// List of tags that can be used for describing the Data Factory Credential.
  ///
  /// &gt; **Note:** Manually altering a Credential resource will cause annotations to be lost, resulting in a change being detected on the next run.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Credential.
  late final pulumi.Output<String?> description;
  /// The Resouce ID of an existing User Assigned Managed Identity. This can be changed without recreating the resource. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Attempting to create a Credential resource without first assigning the identity to the parent Data Factory will result in an Azure API error.
  late final pulumi.Output<String> identityId;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [CredentialUserManagedIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CredentialUserManagedIdentity]. {@macro pulumi_datafactory_credential_user_managed_identity_credential_user_managed_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CredentialUserManagedIdentity(
    String name, {
    CredentialUserManagedIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/credentialUserManagedIdentity:CredentialUserManagedIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    identityId = registerOutput<String>('identityId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [CredentialUserManagedIdentity] resource's state with the given [name] and [id].
  static CredentialUserManagedIdentity get(
    String name,
    pulumi.Input<String> id, {
    CredentialUserManagedIdentityState? state,
  }) {
    return CredentialUserManagedIdentity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CredentialUserManagedIdentity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/credentialUserManagedIdentity:CredentialUserManagedIdentity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    identityId = registerOutput<String>('identityId');
    this.name = registerOutput<String>('name');
  }
}
