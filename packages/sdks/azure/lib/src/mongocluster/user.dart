import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_role.dart';
import 'user_state.dart';

/// Manages a Mongo Cluster User.
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
/// const exampleMongoCluster = new azure.mongocluster.MongoCluster("example", {
///     name: "example-mc",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorUsername: "adminTerraform",
///     administratorPassword: "QAZwsx123",
///     shardCount: 1,
///     computeTier: "M30",
///     highAvailabilityMode: "Disabled",
///     storageSizeInGb: 32,
///     version: "8.0",
///     authenticationMethods: [
///         "NativeAuth",
///         "MicrosoftEntraID",
///     ],
/// });
/// const exampleUser = new azure.mongocluster.User("example", {
///     objectId: current.then(current => current.objectId),
///     mongoClusterId: exampleMongoCluster.id,
///     identityProviderType: "MicrosoftEntraID",
///     principalType: "servicePrincipal",
///     roles: [{
///         database: "admin",
///         name: "root",
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
/// example_mongo_cluster = azure.mongocluster.MongoCluster("example",
///     name="example-mc",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_username="adminTerraform",
///     administrator_password="QAZwsx123",
///     shard_count=1,
///     compute_tier="M30",
///     high_availability_mode="Disabled",
///     storage_size_in_gb=32,
///     version="8.0",
///     authentication_methods=[
///         "NativeAuth",
///         "MicrosoftEntraID",
///     ])
/// example_user = azure.mongocluster.User("example",
///     object_id=current.object_id,
///     mongo_cluster_id=example_mongo_cluster.id,
///     identity_provider_type="MicrosoftEntraID",
///     principal_type="servicePrincipal",
///     roles=[{
///         "database": "admin",
///         "name": "root",
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
///     var exampleMongoCluster = new Azure.MongoCluster.MongoCluster("example", new()
///     {
///         Name = "example-mc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorUsername = "adminTerraform",
///         AdministratorPassword = "QAZwsx123",
///         ShardCount = 1,
///         ComputeTier = "M30",
///         HighAvailabilityMode = "Disabled",
///         StorageSizeInGb = 32,
///         Version = "8.0",
///         AuthenticationMethods = new[]
///         {
///             "NativeAuth",
///             "MicrosoftEntraID",
///         },
///     });
///
///     var exampleUser = new Azure.MongoCluster.User("example", new()
///     {
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         MongoClusterId = exampleMongoCluster.Id,
///         IdentityProviderType = "MicrosoftEntraID",
///         PrincipalType = "servicePrincipal",
///         Roles = new[]
///         {
///             new Azure.MongoCluster.Inputs.UserRoleArgs
///             {
///                 Database = "admin",
///                 Name = "root",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mongocluster"
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
/// 		exampleMongoCluster, err := mongocluster.NewMongoCluster(ctx, "example", &mongocluster.MongoClusterArgs{
/// 			Name:                  pulumi.String("example-mc"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorUsername: pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			ShardCount:            pulumi.Int(1),
/// 			ComputeTier:           pulumi.String("M30"),
/// 			HighAvailabilityMode:  pulumi.String("Disabled"),
/// 			StorageSizeInGb:       pulumi.Int(32),
/// 			Version:               pulumi.String("8.0"),
/// 			AuthenticationMethods: pulumi.StringArray{
/// 				pulumi.String("NativeAuth"),
/// 				pulumi.String("MicrosoftEntraID"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongocluster.NewUser(ctx, "example", &mongocluster.UserArgs{
/// 			ObjectId:             pulumi.String(current.ObjectId),
/// 			MongoClusterId:       exampleMongoCluster.ID().ToIDOutput().ToStringOutput(),
/// 			IdentityProviderType: pulumi.String("MicrosoftEntraID"),
/// 			PrincipalType:        pulumi.String("servicePrincipal"),
/// 			Roles: mongocluster.UserRoleArray{
/// 				&mongocluster.UserRoleArgs{
/// 					Database: pulumi.String("admin"),
/// 					Name:     pulumi.String("root"),
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
/// resource "azure_mongocluster_mongocluster" "example" {
///   name                   = "example-mc"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_username = "adminTerraform"
///   administrator_password = "QAZwsx123"
///   shard_count            = "1"
///   compute_tier           = "M30"
///   high_availability_mode = "Disabled"
///   storage_size_in_gb     = "32"
///   version                = "8.0"
///   authentication_methods = ["NativeAuth", "MicrosoftEntraID"]
/// }
/// resource "azure_mongocluster_user" "example" {
///   object_id              = data.azure_core_getclientconfig.current.object_id
///   mongo_cluster_id       = azure_mongocluster_mongocluster.example.id
///   identity_provider_type = "MicrosoftEntraID"
///   principal_type         = "servicePrincipal"
///   roles {
///     database = "admin"
///     name     = "root"
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
/// import com.pulumi.azure.mongocluster.MongoCluster;
/// import com.pulumi.azure.mongocluster.MongoClusterArgs;
/// import com.pulumi.azure.mongocluster.User;
/// import com.pulumi.azure.mongocluster.UserArgs;
/// import com.pulumi.azure.mongocluster.inputs.UserRoleArgs;
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
///         var exampleMongoCluster = new MongoCluster("exampleMongoCluster", MongoClusterArgs.builder()
///             .name("example-mc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorUsername("adminTerraform")
///             .administratorPassword("QAZwsx123")
///             .shardCount(1)
///             .computeTier("M30")
///             .highAvailabilityMode("Disabled")
///             .storageSizeInGb(32)
///             .version("8.0")
///             .authenticationMethods(
///                 "NativeAuth",
///                 "MicrosoftEntraID")
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .objectId(current.objectId())
///             .mongoClusterId(exampleMongoCluster.id())
///             .identityProviderType("MicrosoftEntraID")
///             .principalType("servicePrincipal")
///             .roles(UserRoleArgs.builder()
///                 .database("admin")
///                 .name("root")
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
///   exampleMongoCluster:
///     type: azure:mongocluster:MongoCluster
///     name: example
///     properties:
///       name: example-mc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorUsername: adminTerraform
///       administratorPassword: QAZwsx123
///       shardCount: '1'
///       computeTier: M30
///       highAvailabilityMode: Disabled
///       storageSizeInGb: '32'
///       version: '8.0'
///       authenticationMethods:
///         - NativeAuth
///         - MicrosoftEntraID
///   exampleUser:
///     type: azure:mongocluster:User
///     name: example
///     properties:
///       objectId: ${current.objectId}
///       mongoClusterId: ${exampleMongoCluster.id}
///       identityProviderType: MicrosoftEntraID
///       principalType: servicePrincipal
///       roles:
///         - database: admin
///           name: root
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
/// * `Microsoft.DocumentDB` - 2025-09-01
///
/// ## Import
///
/// Mongo Cluster Users can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mongocluster/user:User example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/mongoClusters/cluster1/users/user1
/// ```
class User extends pulumi.CustomResource {
  /// The identity provider type for the Mongo Cluster User. The only possible value is `MicrosoftEntraID`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> identityProviderType;
  /// The ID of the Mongo Cluster where the User should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> mongoClusterId;
  /// The Object ID of the Entra ID User or Service Principal. Changing this forces a new resource to be created.
  late final pulumi.Output<String> objectId;
  /// The principal type for the Mongo Cluster User. Possible values are `user` and `servicePrincipal`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalType;
  /// One or more `role` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<UserRole>> roles;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_mongocluster_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mongocluster/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    identityProviderType = registerOutput<String>('identityProviderType');
    mongoClusterId = registerOutput<String>('mongoClusterId');
    objectId = registerOutput<String>('objectId');
    principalType = registerOutput<String>('principalType');
    roles = registerOutput<List<UserRole>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserRole>(guardedValue, (value) => UserRole.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mongocluster/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identityProviderType = registerOutput<String>('identityProviderType');
    mongoClusterId = registerOutput<String>('mongoClusterId');
    objectId = registerOutput<String>('objectId');
    principalType = registerOutput<String>('principalType');
    roles = registerOutput<List<UserRole>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserRole>(guardedValue, (value) => UserRole.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'azure:mongocluster/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    identityProviderType = registerOutput<String>('identityProviderType');
    mongoClusterId = registerOutput<String>('mongoClusterId');
    objectId = registerOutput<String>('objectId');
    principalType = registerOutput<String>('principalType');
    roles = registerOutput<List<UserRole>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserRole>(guardedValue, (value) => UserRole.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
