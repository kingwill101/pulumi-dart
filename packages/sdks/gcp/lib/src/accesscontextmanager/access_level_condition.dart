import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_condition_args.dart';
import 'access_level_condition_device_policy.dart';
import 'access_level_condition_state.dart';

/// Allows configuring a single access level condition to be appended to an access level's conditions.
/// This resource is intended to be used in cases where it is not possible to compile a full list
/// of conditions to include in a `gcp.accesscontextmanager.AccessLevel` resource,
/// to enable them to be added separately.
///
/// &gt; **Note:** If this resource is used alongside a `gcp.accesscontextmanager.AccessLevel` resource,
/// the access level resource must have a `lifecycle` block with `ignore_changes = [basic[0].conditions]` so
/// they don't fight over which service accounts should be included.
///
///
/// To get more information about AccessLevelCondition, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.accessLevels)
/// * How-to Guides
/// * [Access Policy Quickstart](https://cloud.google.com/access-context-manager/docs/quickstart)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Access Level Condition Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
///     parent: "organizations/123456789",
///     title: "my policy",
/// });
/// const access_level_service_account = new gcp.accesscontextmanager.AccessLevel("access-level-service-account", {
///     parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
///     name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/chromeos_no_lock`,
///     title: "chromeos_no_lock",
///     basic: {
///         conditions: [{
///             devicePolicy: {
///                 requireScreenLock: true,
///                 osConstraints: [{
///                     osType: "DESKTOP_CHROME_OS",
///                 }],
///             },
///             regions: [
///                 "CH",
///                 "IT",
///                 "US",
///             ],
///         }],
///     },
/// });
/// const created_later = new gcp.serviceaccount.Account("created-later", {accountId: "my-account-id"});
/// const access_level_conditions = new gcp.accesscontextmanager.AccessLevelCondition("access-level-conditions", {
///     accessLevel: access_level_service_account.name,
///     ipSubnetworks: ["192.0.4.0/24"],
///     members: [
///         "user:test@google.com",
///         "user:test2@google.com",
///         pulumi.interpolate`serviceAccount:${created_later.email}`,
///     ],
///     negate: false,
///     devicePolicy: {
///         requireScreenLock: false,
///         requireAdminApproval: false,
///         requireCorpOwned: true,
///         osConstraints: [{
///             osType: "DESKTOP_CHROME_OS",
///         }],
///     },
///     regions: [
///         "IT",
///         "US",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
///     parent="organizations/123456789",
///     title="my policy")
/// access_level_service_account = gcp.accesscontextmanager.AccessLevel("access-level-service-account",
///     parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
///     name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///     title="chromeos_no_lock",
///     basic={
///         "conditions": [{
///             "device_policy": {
///                 "require_screen_lock": True,
///                 "os_constraints": [{
///                     "os_type": "DESKTOP_CHROME_OS",
///                 }],
///             },
///             "regions": [
///                 "CH",
///                 "IT",
///                 "US",
///             ],
///         }],
///     })
/// created_later = gcp.serviceaccount.Account("created-later", account_id="my-account-id")
/// access_level_conditions = gcp.accesscontextmanager.AccessLevelCondition("access-level-conditions",
///     access_level=access_level_service_account.name,
///     ip_subnetworks=["192.0.4.0/24"],
///     members=[
///         "user:test@google.com",
///         "user:test2@google.com",
///         created_later.email.apply(lambda email: f"serviceAccount:{email}"),
///     ],
///     negate=False,
///     device_policy={
///         "require_screen_lock": False,
///         "require_admin_approval": False,
///         "require_corp_owned": True,
///         "os_constraints": [{
///             "os_type": "DESKTOP_CHROME_OS",
///         }],
///     },
///     regions=[
///         "IT",
///         "US",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
///     {
///         Parent = "organizations/123456789",
///         Title = "my policy",
///     });
///
///     var access_level_service_account = new Gcp.AccessContextManager.AccessLevel("access-level-service-account", new()
///     {
///         Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
///         Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///         Title = "chromeos_no_lock",
///         Basic = new Gcp.AccessContextManager.Inputs.AccessLevelBasicArgs
///         {
///             Conditions = new[]
///             {
///                 new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionArgs
///                 {
///                     DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyArgs
///                     {
///                         RequireScreenLock = true,
///                         OsConstraints = new[]
///                         {
///                             new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyOsConstraintArgs
///                             {
///                                 OsType = "DESKTOP_CHROME_OS",
///                             },
///                         },
///                     },
///                     Regions = new[]
///                     {
///                         "CH",
///                         "IT",
///                         "US",
///                     },
///                 },
///             },
///         },
///     });
///
///     var created_later = new Gcp.ServiceAccount.Account("created-later", new()
///     {
///         AccountId = "my-account-id",
///     });
///
///     var access_level_conditions = new Gcp.AccessContextManager.AccessLevelCondition("access-level-conditions", new()
///     {
///         AccessLevel = access_level_service_account.Name,
///         IpSubnetworks = new[]
///         {
///             "192.0.4.0/24",
///         },
///         Members = new[]
///         {
///             "user:test@google.com",
///             "user:test2@google.com",
///             created_later.Email.Apply(email => $"serviceAccount:{email}"),
///         },
///         Negate = false,
///         DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelConditionDevicePolicyArgs
///         {
///             RequireScreenLock = false,
///             RequireAdminApproval = false,
///             RequireCorpOwned = true,
///             OsConstraints = new[]
///             {
///                 new Gcp.AccessContextManager.Inputs.AccessLevelConditionDevicePolicyOsConstraintArgs
///                 {
///                     OsType = "DESKTOP_CHROME_OS",
///                 },
///             },
///         },
///         Regions = new[]
///         {
///             "IT",
///             "US",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Title:  pulumi.String("my policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		access_level_service_account, err := accesscontextmanager.NewAccessLevel(ctx, "access-level-service-account", &accesscontextmanager.AccessLevelArgs{
/// 			Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v/accessLevels/chromeos_no_lock", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Title: pulumi.String("chromeos_no_lock"),
/// 			Basic: &accesscontextmanager.AccessLevelBasicArgs{
/// 				Conditions: accesscontextmanager.AccessLevelBasicConditionArray{
/// 					&accesscontextmanager.AccessLevelBasicConditionArgs{
/// 						DevicePolicy: &accesscontextmanager.AccessLevelBasicConditionDevicePolicyArgs{
/// 							RequireScreenLock: pulumi.Bool(true),
/// 							OsConstraints: accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// 								&accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// 									OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// 								},
/// 							},
/// 						},
/// 						Regions: pulumi.StringArray{
/// 							pulumi.String("CH"),
/// 							pulumi.String("IT"),
/// 							pulumi.String("US"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		created_later, err := serviceaccount.NewAccount(ctx, "created-later", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("my-account-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.NewAccessLevelCondition(ctx, "access-level-conditions", &accesscontextmanager.AccessLevelConditionArgs{
/// 			AccessLevel: access_level_service_account.Name,
/// 			IpSubnetworks: pulumi.StringArray{
/// 				pulumi.String("192.0.4.0/24"),
/// 			},
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:test@google.com"),
/// 				pulumi.String("user:test2@google.com"),
/// 				created_later.Email.ApplyT(func(email string) (string, error) {
/// 					return fmt.Sprintf("serviceAccount:%v", email), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Negate: pulumi.Bool(false),
/// 			DevicePolicy: &accesscontextmanager.AccessLevelConditionDevicePolicyArgs{
/// 				RequireScreenLock:    pulumi.Bool(false),
/// 				RequireAdminApproval: pulumi.Bool(false),
/// 				RequireCorpOwned:     pulumi.Bool(true),
/// 				OsConstraints: accesscontextmanager.AccessLevelConditionDevicePolicyOsConstraintArray{
/// 					&accesscontextmanager.AccessLevelConditionDevicePolicyOsConstraintArgs{
/// 						OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// 					},
/// 				},
/// 			},
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("IT"),
/// 				pulumi.String("US"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevel;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelBasicArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelCondition;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelConditionArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelConditionDevicePolicyArgs;
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
///         var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .title("my policy")
///             .build());
///
///         var access_level_service_account = new AccessLevel("access-level-service-account", AccessLevelArgs.builder()
///             .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
///             .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/chromeos_no_lock", _name)))
///             .title("chromeos_no_lock")
///             .basic(AccessLevelBasicArgs.builder()
///                 .conditions(AccessLevelBasicConditionArgs.builder()
///                     .devicePolicy(AccessLevelBasicConditionDevicePolicyArgs.builder()
///                         .requireScreenLock(true)
///                         .osConstraints(AccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
///                             .osType("DESKTOP_CHROME_OS")
///                             .build())
///                         .build())
///                     .regions(
///                         "CH",
///                         "IT",
///                         "US")
///                     .build())
///                 .build())
///             .build());
///
///         var created_later = new Account("created-later", AccountArgs.builder()
///             .accountId("my-account-id")
///             .build());
///
///         var access_level_conditions = new AccessLevelCondition("access-level-conditions", AccessLevelConditionArgs.builder()
///             .accessLevel(access_level_service_account.name())
///             .ipSubnetworks("192.0.4.0/24")
///             .members(
///                 "user:test@google.com",
///                 "user:test2@google.com",
///                 created_later.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .negate(false)
///             .devicePolicy(AccessLevelConditionDevicePolicyArgs.builder()
///                 .requireScreenLock(false)
///                 .requireAdminApproval(false)
///                 .requireCorpOwned(true)
///                 .osConstraints(AccessLevelConditionDevicePolicyOsConstraintArgs.builder()
///                     .osType("DESKTOP_CHROME_OS")
///                     .build())
///                 .build())
///             .regions(
///                 "IT",
///                 "US")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   access-level-service-account:
///     type: gcp:accesscontextmanager:AccessLevel
///     properties:
///       parent: accessPolicies/${["access-policy"].name}
///       name: accessPolicies/${["access-policy"].name}/accessLevels/chromeos_no_lock
///       title: chromeos_no_lock
///       basic:
///         conditions:
///           - devicePolicy:
///               requireScreenLock: true
///               osConstraints:
///                 - osType: DESKTOP_CHROME_OS
///             regions:
///               - CH
///               - IT
///               - US
///   created-later:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-account-id
///   access-level-conditions:
///     type: gcp:accesscontextmanager:AccessLevelCondition
///     properties:
///       accessLevel: ${["access-level-service-account"].name}
///       ipSubnetworks:
///         - 192.0.4.0/24
///       members:
///         - user:test@google.com
///         - user:test2@google.com
///         - serviceAccount:${["created-later"].email}
///       negate: false
///       devicePolicy:
///         requireScreenLock: false
///         requireAdminApproval: false
///         requireCorpOwned: true
///         osConstraints:
///           - osType: DESKTOP_CHROME_OS
///       regions:
///         - IT
///         - US
///   access-policy:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/123456789
///       title: my policy
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class AccessLevelCondition extends pulumi.CustomResource {
  /// The name of the Access Level to add this condition to.
  late final pulumi.Output<String> accessLevel;
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;
  /// Device specific restrictions, all restrictions must hold for
  /// the Condition to be true. If not specified, all devices are
  /// allowed.
  /// Structure is documented below.
  late final pulumi.Output<AccessLevelConditionDevicePolicy?> devicePolicy;
  /// A list of CIDR block IP subnetwork specification. May be IPv4
  /// or IPv6.
  /// Note that for a CIDR IP address block, the specified IP address
  /// portion must be properly truncated (i.e. all the host bits must
  /// be zero) or the input is considered malformed. For example,
  /// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly,
  /// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
  /// is not. The originating IP of a request must be in one of the
  /// listed subnets in order for this Condition to be true.
  /// If empty, all IP addresses are allowed.
  late final pulumi.Output<List<String>?> ipSubnetworks;
  /// An allowed list of members (users, service accounts).
  /// Using groups is not supported yet.
  /// The signed-in user originating the request must be a part of one
  /// of the provided members. If not specified, a request may come
  /// from any user (logged in/not logged in, not present in any
  /// groups, etc.).
  /// Formats: `user:{emailid}`, `serviceAccount:{emailid}`
  late final pulumi.Output<List<String>?> members;
  /// Whether to negate the Condition. If true, the Condition becomes
  /// a NAND over its non-empty fields, each field must be false for
  /// the Condition overall to be satisfied. Defaults to false.
  late final pulumi.Output<bool?> negate;
  /// The request must originate from one of the provided
  /// countries/regions.
  /// Format: A valid ISO 3166-1 alpha-2 code.
  late final pulumi.Output<List<String>?> regions;
  /// A list of other access levels defined in the same Policy,
  /// referenced by resource name. Referencing an AccessLevel which
  /// does not exist is an error. All access levels listed must be
  /// granted for the Condition to be true.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  late final pulumi.Output<List<String>?> requiredAccessLevels;
  /// The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ip_subnetworks`.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> vpcNetworkSources;

  /// Creates a new [AccessLevelCondition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessLevelCondition]. {@macro pulumi_accesscontextmanager_access_level_condition_access_level_condition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessLevelCondition(
    String name, {
    AccessLevelConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessLevelCondition:AccessLevelCondition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLevel = registerOutput<String>('accessLevel');
    accessPolicyId = registerOutput<String>('accessPolicyId');
    devicePolicy = registerOutput<AccessLevelConditionDevicePolicy?>('devicePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessLevelConditionDevicePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipSubnetworks = registerOutput<List<String>?>('ipSubnetworks');
    members = registerOutput<List<String>?>('members');
    negate = registerOutput<bool?>('negate');
    regions = registerOutput<List<String>?>('regions');
    requiredAccessLevels = registerOutput<List<String>?>('requiredAccessLevels');
    vpcNetworkSources = registerOutput<List<Map<String, dynamic>>?>('vpcNetworkSources');
  }

  /// Gets an existing [AccessLevelCondition] resource's state with the given [name] and [id].
  static AccessLevelCondition get(
    String name,
    pulumi.Input<String> id, {
    AccessLevelConditionState? state,
  }) {
    return AccessLevelCondition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessLevelCondition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessLevelCondition:AccessLevelCondition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLevel = registerOutput<String>('accessLevel');
    accessPolicyId = registerOutput<String>('accessPolicyId');
    devicePolicy = registerOutput<AccessLevelConditionDevicePolicy?>('devicePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessLevelConditionDevicePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipSubnetworks = registerOutput<List<String>?>('ipSubnetworks');
    members = registerOutput<List<String>?>('members');
    negate = registerOutput<bool?>('negate');
    regions = registerOutput<List<String>?>('regions');
    requiredAccessLevels = registerOutput<List<String>?>('requiredAccessLevels');
    vpcNetworkSources = registerOutput<List<Map<String, dynamic>>?>('vpcNetworkSources');
  }
}
