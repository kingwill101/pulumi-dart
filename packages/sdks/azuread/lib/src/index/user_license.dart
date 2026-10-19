import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_license_args.dart';
import 'user_license_state.dart';

/// Manages a single license assignment for a user.
///
/// &gt; **License availability** The SKU being assigned must be available in your tenant. You can find the available SKUs and their service plans in the [Microsoft 365 admin center](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/licensing-service-plan-reference), or by inspecting the `subscribedSkus` in Microsoft Graph.
///
/// &gt; **Usage location required** Microsoft Graph rejects license assignment for users that do not have a usage location set, due to legal requirements to check for the availability of services in a given country. Ensure `usageLocation` is set on the `azuread.User` resource (or the user object) before assigning licenses.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `User.ReadWrite.All` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `License Administrator`, `User Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.User("example", {
///     userPrincipalName: "jane.fischer@example.com",
///     displayName: "Jane Fischer",
///     password: "Ch@ngeMe",
///     usageLocation: "US",
/// });
/// const exampleUserLicense = new azuread.UserLicense("example", {
///     userObjectId: example.objectId,
///     skuId: "c7df2760-2c81-4ef7-b578-5b5392b571df",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.User("example",
///     user_principal_name="jane.fischer@example.com",
///     display_name="Jane Fischer",
///     password="Ch@ngeMe",
///     usage_location="US")
/// example_user_license = azuread.UserLicense("example",
///     user_object_id=example.object_id,
///     sku_id="c7df2760-2c81-4ef7-b578-5b5392b571df")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.User("example", new()
///     {
///         UserPrincipalName = "jane.fischer@example.com",
///         DisplayName = "Jane Fischer",
///         Password = "Ch@ngeMe",
///         UsageLocation = "US",
///     });
///
///     var exampleUserLicense = new AzureAD.UserLicense("example", new()
///     {
///         UserObjectId = example.ObjectId,
///         SkuId = "c7df2760-2c81-4ef7-b578-5b5392b571df",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewUser(ctx, "example", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("jane.fischer@example.com"),
/// 			DisplayName:       pulumi.String("Jane Fischer"),
/// 			Password:          pulumi.String("Ch@ngeMe"),
/// 			UsageLocation:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewUserLicense(ctx, "example", &azuread.UserLicenseArgs{
/// 			UserObjectId: example.ObjectId,
/// 			SkuId:        pulumi.String("c7df2760-2c81-4ef7-b578-5b5392b571df"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_user" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   user_principal_name = "jane.fischer@example.com"
///   display_name        = "Jane Fischer"
///   password            = "Ch@ngeMe"
///   usage_location      = "US"
/// }
/// resource "azuread_user_license" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   user_object_id = azuread_user.example.object_id
///   sku_id         = "c7df2760-2c81-4ef7-b578-5b5392b571df"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.UserLicense;
/// import com.pulumi.azuread.UserLicenseArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .userPrincipalName("jane.fischer@example.com")
///             .displayName("Jane Fischer")
///             .password("Ch@ngeMe")
///             .usageLocation("US")
///             .build());
///
///         var exampleUserLicense = new UserLicense("exampleUserLicense", UserLicenseArgs.builder()
///             .userObjectId(example.objectId())
///             .skuId("c7df2760-2c81-4ef7-b578-5b5392b571df")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:User
///     properties:
///       userPrincipalName: jane.fischer@example.com
///       displayName: Jane Fischer
///       password: Ch@ngeMe
///       usageLocation: US
///   exampleUserLicense:
///     type: azuread:UserLicense
///     name: example
///     properties:
///       userObjectId: ${example.objectId}
///       skuId: c7df2760-2c81-4ef7-b578-5b5392b571df
/// ```
///
///
/// ### Disabling specific service plans
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.UserLicense("example", {
///     userObjectId: exampleAzureadUser.objectId,
///     skuId: "c7df2760-2c81-4ef7-b578-5b5392b571df",
///     disabledPlans: ["a23b959c-7ce8-4e57-9140-b90eb88a9e97"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.UserLicense("example",
///     user_object_id=example_azuread_user["objectId"],
///     sku_id="c7df2760-2c81-4ef7-b578-5b5392b571df",
///     disabled_plans=["a23b959c-7ce8-4e57-9140-b90eb88a9e97"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.UserLicense("example", new()
///     {
///         UserObjectId = exampleAzureadUser.ObjectId,
///         SkuId = "c7df2760-2c81-4ef7-b578-5b5392b571df",
///         DisabledPlans = new[]
///         {
///             "a23b959c-7ce8-4e57-9140-b90eb88a9e97",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuread.NewUserLicense(ctx, "example", &azuread.UserLicenseArgs{
/// 			UserObjectId: pulumi.Any(exampleAzureadUser.ObjectId),
/// 			SkuId:        pulumi.String("c7df2760-2c81-4ef7-b578-5b5392b571df"),
/// 			DisabledPlans: pulumi.StringArray{
/// 				pulumi.String("a23b959c-7ce8-4e57-9140-b90eb88a9e97"),
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
/// terraform {
///   required_providers {
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_user_license" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   user_object_id = exampleAzureadUser.objectId
///   sku_id         = "c7df2760-2c81-4ef7-b578-5b5392b571df"
///   disabled_plans = ["a23b959c-7ce8-4e57-9140-b90eb88a9e97"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.UserLicense;
/// import com.pulumi.azuread.UserLicenseArgs;
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
///         var example = new UserLicense("example", UserLicenseArgs.builder()
///             .userObjectId(exampleAzureadUser.get("objectId"))
///             .skuId("c7df2760-2c81-4ef7-b578-5b5392b571df")
///             .disabledPlans("a23b959c-7ce8-4e57-9140-b90eb88a9e97")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:UserLicense
///     properties:
///       userObjectId: ${exampleAzureadUser.objectId}
///       skuId: c7df2760-2c81-4ef7-b578-5b5392b571df
///       disabledPlans:
///         - a23b959c-7ce8-4e57-9140-b90eb88a9e97
/// ```
///
///
/// &gt; **Tip** For assigning more licenses to a user, create additional instances of this resource.
///
/// ## Import
///
/// User Licenses can be imported using the object ID of the user and the SKU ID of the license, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/userLicense:UserLicense example 00000000-0000-0000-0000-000000000000/license/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the Azure AD User Object ID and the license SKU ID in the format `{UserObjectID}/license/{SkuID}`.
class UserLicense extends pulumi.CustomResource {
  /// A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> disabledPlans;
  /// The unique identifier (GUID) for the SKU (license) to assign to the user. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuId;
  /// The object ID of the user to which the license should be assigned. Changing this forces a new resource to be created.
  ///
  /// &gt; **Group-based licensing** This resource only manages licenses assigned directly to a user. Licenses inherited via group-based licensing are ignored and are not managed by this resource.
  late final pulumi.Output<String> userObjectId;

  /// Creates a new [UserLicense].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserLicense]. {@macro pulumi_index_user_license_user_license_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserLicense(
    String name, {
    UserLicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/userLicense:UserLicense',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.11.1').merge(options),
        ) {
    disabledPlans = registerOutput<List<String>?>('disabledPlans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    skuId = registerOutput<String>('skuId');
    userObjectId = registerOutput<String>('userObjectId');
  }

  /// Gets an existing [UserLicense] resource's state with the given [name] and [id].
  static UserLicense get(
    String name,
    pulumi.Input<String> id, {
    UserLicenseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserLicense._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserLicense._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/userLicense:UserLicense',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disabledPlans = registerOutput<List<String>?>('disabledPlans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    skuId = registerOutput<String>('skuId');
    userObjectId = registerOutput<String>('userObjectId');
  }

  /// Creates a typed reference to an existing [UserLicense] resource.
  UserLicense.reference(String urn)
    : super(
        'azuread:index/userLicense:UserLicense',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    disabledPlans = registerOutput<List<String>?>('disabledPlans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    skuId = registerOutput<String>('skuId');
    userObjectId = registerOutput<String>('userObjectId');
  }
}
