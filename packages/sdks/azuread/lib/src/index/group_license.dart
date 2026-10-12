import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_license_args.dart';
import 'group_license_state.dart';

/// Manages a single license assignment for a group (group-based licensing).
///
/// &gt; **License availability** The SKU being assigned must be available in your tenant. You can find the available SKUs and their service plans in the [Microsoft 365 admin center](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/licensing-service-plan-reference), or by inspecting the `subscribedSkus` in Microsoft Graph.
///
/// &gt; **Group-based licensing** Licenses assigned to a group are inherited by all members of that group. Assignment to individual members happens asynchronously after the license is assigned to the group, and is managed by Microsoft Entra ID rather than by this resource. This resource only manages the license assignment on the group object itself.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `LicenseAssignment.ReadWrite.All`, `Group.ReadWrite.All` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `License Administrator`, `Groups Administrator`, `User Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Group("example", {
///     displayName: "Sales Team",
///     securityEnabled: true,
/// });
/// const exampleGroupLicense = new azuread.GroupLicense("example", {
///     groupObjectId: example.objectId,
///     skuId: "c7df2760-2c81-4ef7-b578-5b5392b571df",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Group("example",
///     display_name="Sales Team",
///     security_enabled=True)
/// example_group_license = azuread.GroupLicense("example",
///     group_object_id=example.object_id,
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
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "Sales Team",
///         SecurityEnabled = true,
///     });
///
///     var exampleGroupLicense = new AzureAD.GroupLicense("example", new()
///     {
///         GroupObjectId = example.ObjectId,
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
/// 		example, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("Sales Team"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroupLicense(ctx, "example", &azuread.GroupLicenseArgs{
/// 			GroupObjectId: example.ObjectId,
/// 			SkuId:         pulumi.String("c7df2760-2c81-4ef7-b578-5b5392b571df"),
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_group" "example" {
///   display_name     = "Sales Team"
///   security_enabled = true
/// }
/// resource "azuread_grouplicense" "example" {
///   group_object_id = azuread_group.example.object_id
///   sku_id          = "c7df2760-2c81-4ef7-b578-5b5392b571df"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.GroupLicense;
/// import com.pulumi.azuread.GroupLicenseArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("Sales Team")
///             .securityEnabled(true)
///             .build());
///
///         var exampleGroupLicense = new GroupLicense("exampleGroupLicense", GroupLicenseArgs.builder()
///             .groupObjectId(example.objectId())
///             .skuId("c7df2760-2c81-4ef7-b578-5b5392b571df")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Group
///     properties:
///       displayName: Sales Team
///       securityEnabled: true
///   exampleGroupLicense:
///     type: azuread:GroupLicense
///     name: example
///     properties:
///       groupObjectId: ${example.objectId}
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
/// const example = new azuread.GroupLicense("example", {
///     groupObjectId: exampleAzureadGroup.objectId,
///     skuId: "c7df2760-2c81-4ef7-b578-5b5392b571df",
///     disabledPlans: ["a23b959c-7ce8-4e57-9140-b90eb88a9e97"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.GroupLicense("example",
///     group_object_id=example_azuread_group["objectId"],
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
///     var example = new AzureAD.GroupLicense("example", new()
///     {
///         GroupObjectId = exampleAzureadGroup.ObjectId,
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
/// 		_, err := azuread.NewGroupLicense(ctx, "example", &azuread.GroupLicenseArgs{
/// 			GroupObjectId: pulumi.Any(exampleAzureadGroup.ObjectId),
/// 			SkuId:         pulumi.String("c7df2760-2c81-4ef7-b578-5b5392b571df"),
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
/// pulumi {
///   required_providers {
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_grouplicense" "example" {
///   group_object_id = exampleAzureadGroup.objectId
///   sku_id          = "c7df2760-2c81-4ef7-b578-5b5392b571df"
///   disabled_plans  = ["a23b959c-7ce8-4e57-9140-b90eb88a9e97"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.GroupLicense;
/// import com.pulumi.azuread.GroupLicenseArgs;
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
///         var example = new GroupLicense("example", GroupLicenseArgs.builder()
///             .groupObjectId(exampleAzureadGroup.get("objectId"))
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
///     type: azuread:GroupLicense
///     properties:
///       groupObjectId: ${exampleAzureadGroup.objectId}
///       skuId: c7df2760-2c81-4ef7-b578-5b5392b571df
///       disabledPlans:
///         - a23b959c-7ce8-4e57-9140-b90eb88a9e97
/// ```
///
///
/// &gt; **Tip** For assigning more licenses to a group, create additional instances of this resource.
///
/// ## Import
///
/// Group Licenses can be imported using the object ID of the group and the SKU ID of the license, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/groupLicense:GroupLicense example 00000000-0000-0000-0000-000000000000/license/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the Azure AD Group Object ID and the license SKU ID in the format `{GroupObjectID}/license/{SkuID}`.
class GroupLicense extends pulumi.CustomResource {
  /// A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> disabledPlans;
  /// The object ID of the group to which the license should be assigned. Changing this forces a new resource to be created.
  late final pulumi.Output<String> groupObjectId;
  /// The unique identifier (GUID) for the SKU (license) to assign to the group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuId;

  /// Creates a new [GroupLicense].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupLicense]. {@macro pulumi_index_group_license_group_license_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupLicense(
    String name, {
    GroupLicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/groupLicense:GroupLicense',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.11.0').merge(options),
        ) {
    disabledPlans = registerOutput<List<String>?>('disabledPlans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    groupObjectId = registerOutput<String>('groupObjectId');
    skuId = registerOutput<String>('skuId');
  }

  /// Gets an existing [GroupLicense] resource's state with the given [name] and [id].
  static GroupLicense get(
    String name,
    pulumi.Input<String> id, {
    GroupLicenseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GroupLicense._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GroupLicense._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/groupLicense:GroupLicense',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disabledPlans = registerOutput<List<String>?>('disabledPlans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    groupObjectId = registerOutput<String>('groupObjectId');
    skuId = registerOutput<String>('skuId');
  }

  /// Creates a typed reference to an existing [GroupLicense] resource.
  GroupLicense.reference(String urn)
    : super(
        'azuread:index/groupLicense:GroupLicense',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    disabledPlans = registerOutput<List<String>?>('disabledPlans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    groupObjectId = registerOutput<String>('groupObjectId');
    skuId = registerOutput<String>('skuId');
  }
}
