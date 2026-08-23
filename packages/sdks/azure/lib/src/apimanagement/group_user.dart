import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_user_args.dart';
import 'group_user_state.dart';

/// Manages an API Management User Assignment to a Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getUser({
///     userId: "my-user",
///     apiManagementName: "example-apim",
///     resourceGroupName: "search-service",
/// });
/// const exampleGroupUser = new azure.apimanagement.GroupUser("example", {
///     userId: example.then(example => example.id),
///     groupName: "example-group",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     apiManagementName: example.then(example => example.apiManagementName),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_user(user_id="my-user",
///     api_management_name="example-apim",
///     resource_group_name="search-service")
/// example_group_user = azure.apimanagement.GroupUser("example",
///     user_id=example.id,
///     group_name="example-group",
///     resource_group_name=example.resource_group_name,
///     api_management_name=example.api_management_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetUser.Invoke(new()
///     {
///         UserId = "my-user",
///         ApiManagementName = "example-apim",
///         ResourceGroupName = "search-service",
///     });
///
///     var exampleGroupUser = new Azure.ApiManagement.GroupUser("example", new()
///     {
///         UserId = example.Apply(getUserResult => getUserResult.Id),
///         GroupName = "example-group",
///         ResourceGroupName = example.Apply(getUserResult => getUserResult.ResourceGroupName),
///         ApiManagementName = example.Apply(getUserResult => getUserResult.ApiManagementName),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apimanagement.LookupUser(ctx, &apimanagement.LookupUserArgs{
/// 			UserId:            "my-user",
/// 			ApiManagementName: "example-apim",
/// 			ResourceGroupName: "search-service",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewGroupUser(ctx, "example", &apimanagement.GroupUserArgs{
/// 			UserId:            pulumi.String(example.Id),
/// 			GroupName:         pulumi.String("example-group"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			ApiManagementName: pulumi.String(example.ApiManagementName),
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
/// data "azure_apimanagement_getuser" "example" {
///   user_id             = "my-user"
///   api_management_name = "example-apim"
///   resource_group_name = "search-service"
/// }
///
/// resource "azure_apimanagement_groupuser" "example" {
///   user_id             = data.azure_apimanagement_getuser.example.id
///   group_name          = "example-group"
///   resource_group_name = data.azure_apimanagement_getuser.example.resource_group_name
///   api_management_name = data.azure_apimanagement_getuser.example.api_management_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetUserArgs;
/// import com.pulumi.azure.apimanagement.GroupUser;
/// import com.pulumi.azure.apimanagement.GroupUserArgs;
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
///         final var example = ApimanagementFunctions.getUser(GetUserArgs.builder()
///             .userId("my-user")
///             .apiManagementName("example-apim")
///             .resourceGroupName("search-service")
///             .build());
///
///         var exampleGroupUser = new GroupUser("exampleGroupUser", GroupUserArgs.builder()
///             .userId(example.id())
///             .groupName("example-group")
///             .resourceGroupName(example.resourceGroupName())
///             .apiManagementName(example.apiManagementName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroupUser:
///     type: azure:apimanagement:GroupUser
///     name: example
///     properties:
///       userId: ${example.id}
///       groupName: example-group
///       resourceGroupName: ${example.resourceGroupName}
///       apiManagementName: ${example.apiManagementName}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getUser
///       arguments:
///         userId: my-user
///         apiManagementName: example-apim
///         resourceGroupName: search-service
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Group Users can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/groupUser:GroupUser example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/groups/groupId/users/user123
/// ```
class GroupUser extends pulumi.CustomResource {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> groupName;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> userId;

  /// Creates a new [GroupUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupUser]. {@macro pulumi_apimanagement_group_user_group_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupUser(
    String name, {
    GroupUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/groupUser:GroupUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    groupName = registerOutput<String>('groupName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [GroupUser] resource's state with the given [name] and [id].
  static GroupUser get(
    String name,
    pulumi.Input<String> id, {
    GroupUserState? state,
  }) {
    return GroupUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/groupUser:GroupUser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    groupName = registerOutput<String>('groupName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    userId = registerOutput<String>('userId');
  }
}
