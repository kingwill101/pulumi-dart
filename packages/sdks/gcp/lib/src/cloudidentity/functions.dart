import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_lookup_args.dart';
import 'get_group_lookup_result.dart';
import 'get_group_memberships_args.dart';
import 'get_group_memberships_result.dart';
import 'get_group_transitive_memberships_args.dart';
import 'get_group_transitive_memberships_result.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_policies_args.dart';
import 'get_policies_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';

/// Use this data source to look up the resource name of a Cloud Identity Group by its [EntityKey](https://cloud.google.com/identity/docs/reference/rest/v1/EntityKey), i.e. the group's email.
///
/// https://cloud.google.com/identity/docs/concepts/overview#groups
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const group = gcp.cloudidentity.getGroupLookup({
///     groupKey: {
///         id: "my-group@example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// group = gcp.cloudidentity.get_group_lookup(group_key={
///     "id": "my-group@example.com",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @group = Gcp.CloudIdentity.GetGroupLookup.Invoke(new()
///     {
///         GroupKey = new Gcp.CloudIdentity.Inputs.GetGroupLookupGroupKeyInputArgs
///         {
///             Id = "my-group@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudidentity.GetGroupLookup(ctx, &cloudidentity.GetGroupLookupArgs{
/// 			GroupKey: cloudidentity.GetGroupLookupGroupKey{
/// 				Id: "my-group@example.com",
/// 			},
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_cloudidentity_getgrouplookup" "group" {
///   group_key = {
///     id = "my-group@example.com"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupLookupArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupLookupGroupKeyArgs;
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
///         final var group = CloudidentityFunctions.getGroupLookup(GetGroupLookupArgs.builder()
///             .groupKey(GetGroupLookupGroupKeyArgs.builder()
///                 .id("my-group@example.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   group:
///     fn::invoke:
///       function: gcp:cloudidentity:getGroupLookup
///       arguments:
///         groupKey:
///           id: my-group@example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_get_group_lookup_get_group_lookup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupLookupResult> getGroupLookup(
  GetGroupLookupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupLookup:getGroupLookup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupLookupResult.fromMap(result);
}

pulumi.Output<GetGroupLookupResult> getGroupLookupOutput(
  GetGroupLookupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupLookup:getGroupLookup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupLookupResult.fromMap);
}

/// Use this data source to get list of the Cloud Identity Group Memberships within a given Group.
///
/// https://cloud.google.com/identity/docs/concepts/overview#memberships
///
/// To get more information about GroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const members = gcp.cloudidentity.getGroupMemberships({
///     group: "groups/123eab45c6defghi",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// members = gcp.cloudidentity.get_group_memberships(group="groups/123eab45c6defghi")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var members = Gcp.CloudIdentity.GetGroupMemberships.Invoke(new()
///     {
///         Group = "groups/123eab45c6defghi",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudidentity.GetGroupMemberships(ctx, &cloudidentity.GetGroupMembershipsArgs{
/// 			Group: "groups/123eab45c6defghi",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_cloudidentity_getgroupmemberships" "members" {
///   group = "groups/123eab45c6defghi"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupMembershipsArgs;
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
///         final var members = CloudidentityFunctions.getGroupMemberships(GetGroupMembershipsArgs.builder()
///             .group("groups/123eab45c6defghi")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   members:
///     fn::invoke:
///       function: gcp:cloudidentity:getGroupMemberships
///       arguments:
///         group: groups/123eab45c6defghi
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_get_group_memberships_get_group_memberships_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupMembershipsResult> getGroupMemberships(
  GetGroupMembershipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupMemberships:getGroupMemberships',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMembershipsResult.fromMap(result);
}

pulumi.Output<GetGroupMembershipsResult> getGroupMembershipsOutput(
  GetGroupMembershipsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupMemberships:getGroupMemberships',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupMembershipsResult.fromMap);
}

/// Use this data source to get list of the Cloud Identity Group Memberships within a given Group. Whereas `gcp.cloudidentity.getGroupMemberships` returns details of only direct members of the group, `gcp.cloudidentity.getGroupTransitiveMemberships` will return details about both direct and indirect members. For example, a user is an indirect member of Group A if the user is a direct member of Group B and Group B is a direct member of Group A.
///
/// To get more information about TransitiveGroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships/searchTransitiveMemberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const members = gcp.cloudidentity.getGroupTransitiveMemberships({
///     group: "groups/123eab45c6defghi",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// members = gcp.cloudidentity.get_group_transitive_memberships(group="groups/123eab45c6defghi")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var members = Gcp.CloudIdentity.GetGroupTransitiveMemberships.Invoke(new()
///     {
///         Group = "groups/123eab45c6defghi",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudidentity.GetGroupTransitiveMemberships(ctx, &cloudidentity.GetGroupTransitiveMembershipsArgs{
/// 			Group: "groups/123eab45c6defghi",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_cloudidentity_getgrouptransitivememberships" "members" {
///   group = "groups/123eab45c6defghi"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupTransitiveMembershipsArgs;
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
///         final var members = CloudidentityFunctions.getGroupTransitiveMemberships(GetGroupTransitiveMembershipsArgs.builder()
///             .group("groups/123eab45c6defghi")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   members:
///     fn::invoke:
///       function: gcp:cloudidentity:getGroupTransitiveMemberships
///       arguments:
///         group: groups/123eab45c6defghi
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_get_group_transitive_memberships_get_group_transitive_memberships_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupTransitiveMembershipsResult> getGroupTransitiveMemberships(
  GetGroupTransitiveMembershipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupTransitiveMemberships:getGroupTransitiveMemberships',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupTransitiveMembershipsResult.fromMap(result);
}

pulumi.Output<GetGroupTransitiveMembershipsResult> getGroupTransitiveMembershipsOutput(
  GetGroupTransitiveMembershipsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupTransitiveMemberships:getGroupTransitiveMemberships',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupTransitiveMembershipsResult.fromMap);
}

/// Use this data source to get list of the Cloud Identity Groups under a customer or namespace.
///
/// https://cloud.google.com/identity/docs/concepts/overview#groups
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const groups = gcp.cloudidentity.getGroups({
///     parent: "customers/A01b123xz",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// groups = gcp.cloudidentity.get_groups(parent="customers/A01b123xz")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groups = Gcp.CloudIdentity.GetGroups.Invoke(new()
///     {
///         Parent = "customers/A01b123xz",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudidentity.GetGroups(ctx, &cloudidentity.GetGroupsArgs{
/// 			Parent: "customers/A01b123xz",
/// 		}, nil)
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_cloudidentity_getgroups" "groups" {
///   parent = "customers/A01b123xz"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupsArgs;
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
///         final var groups = CloudidentityFunctions.getGroups(GetGroupsArgs.builder()
///             .parent("customers/A01b123xz")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   groups:
///     fn::invoke:
///       function: gcp:cloudidentity:getGroups
///       arguments:
///         parent: customers/A01b123xz
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

pulumi.Output<GetGroupsResult> getGroupsOutput(
  GetGroupsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroups:getGroups',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupsResult.fromMap);
}

/// Use this data source to list Cloud Identity policies.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.cloudidentity.getPolicies({});
/// export const firstPolicyName = all.then(all => all.policies?.[0]?.name);
/// export const firstPolicyCustomer = all.then(all => all.policies?.[0]?.customer);
/// export const policyQueryQuery = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.query);
/// export const policyQueryOrgUnit = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.orgUnit);
/// export const policyQueryGroup = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.group);
/// export const policyQuerySortOrder = all.then(all => all.policies?.[0]?.policyQueries?.[0]?.sortOrder);
/// export const policySetting = all.then(all => all.policies?.[0]?.setting);
/// export const policyType = all.then(all => all.policies?.[0]?.type);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.cloudidentity.get_policies()
/// pulumi.export("firstPolicyName", all.policies[0].name)
/// pulumi.export("firstPolicyCustomer", all.policies[0].customer)
/// pulumi.export("policyQueryQuery", all.policies[0].policy_queries[0].query)
/// pulumi.export("policyQueryOrgUnit", all.policies[0].policy_queries[0].org_unit)
/// pulumi.export("policyQueryGroup", all.policies[0].policy_queries[0].group)
/// pulumi.export("policyQuerySortOrder", all.policies[0].policy_queries[0].sort_order)
/// pulumi.export("policySetting", all.policies[0].setting)
/// pulumi.export("policyType", all.policies[0].type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.CloudIdentity.GetPolicies.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPolicyName"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Name),
///         ["firstPolicyCustomer"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Customer),
///         ["policyQueryQuery"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.Query),
///         ["policyQueryOrgUnit"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.OrgUnit),
///         ["policyQueryGroup"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.Group),
///         ["policyQuerySortOrder"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.PolicyQueries[0]?.SortOrder),
///         ["policySetting"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Setting),
///         ["policyType"] = all.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Type),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := cloudidentity.GetPolicies(ctx, &cloudidentity.GetPoliciesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstPolicyName", all.Policies[0].Name)
/// 		ctx.Export("firstPolicyCustomer", all.Policies[0].Customer)
/// 		ctx.Export("policyQueryQuery", all.Policies[0].PolicyQueries[0].Query)
/// 		ctx.Export("policyQueryOrgUnit", all.Policies[0].PolicyQueries[0].OrgUnit)
/// 		ctx.Export("policyQueryGroup", all.Policies[0].PolicyQueries[0].Group)
/// 		ctx.Export("policyQuerySortOrder", all.Policies[0].PolicyQueries[0].SortOrder)
/// 		ctx.Export("policySetting", all.Policies[0].Setting)
/// 		ctx.Export("policyType", all.Policies[0].Type)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_cloudidentity_getpolicies" "all" {
/// }
///
/// // The name of the first policy in the list of policies
/// output "firstPolicyName" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].name
/// }
/// // The customer to whom the first policy belongs to. This will always be the
/// // same across multiple policies as well.
/// output "firstPolicyCustomer" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].customer
/// }
/// // The CEL query of the first policy
/// output "policyQueryQuery" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].policy_queries[0].query
/// }
/// // The org unit the first policy applies to
/// output "policyQueryOrgUnit" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].policy_queries[0].org_unit
/// }
/// // The group the first policy applies to
/// output "policyQueryGroup" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].policy_queries[0].group
/// }
/// // The sort order of the first policy
/// output "policyQuerySortOrder" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].policy_queries[0].sort_order
/// }
/// // The setting of the first policy as a JSON string
/// output "policySetting" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].setting
/// }
/// // The type of policy - ADMIN/SYSTEM
/// output "policyType" {
///   value = data.gcp_cloudidentity_getpolicies.all.policies[0].type
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetPoliciesArgs;
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
///         final var all = CloudidentityFunctions.getPolicies(GetPoliciesArgs.builder()
///             .build());
///
///         ctx.export("firstPolicyName", all.policies()[0].name());
///         ctx.export("firstPolicyCustomer", all.policies()[0].customer());
///         ctx.export("policyQueryQuery", all.policies()[0].policyQueries()[0].query());
///         ctx.export("policyQueryOrgUnit", all.policies()[0].policyQueries()[0].orgUnit());
///         ctx.export("policyQueryGroup", all.policies()[0].policyQueries()[0].group());
///         ctx.export("policyQuerySortOrder", all.policies()[0].policyQueries()[0].sortOrder());
///         ctx.export("policySetting", all.policies()[0].setting());
///         ctx.export("policyType", all.policies()[0].type());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:cloudidentity:getPolicies
///       arguments: {}
/// outputs:
///   # The name of the first policy in the list of policies
///   firstPolicyName: ${all.policies[0].name}
///   # The customer to whom the first policy belongs to. This will always be the
///   # // same across multiple policies as well.
///   firstPolicyCustomer: ${all.policies[0].customer}
///   # The CEL query of the first policy
///   policyQueryQuery: ${all.policies[0].policyQueries[0].query}
///   # The org unit the first policy applies to
///   policyQueryOrgUnit: ${all.policies[0].policyQueries[0].orgUnit}
///   # The group the first policy applies to
///   policyQueryGroup: ${all.policies[0].policyQueries[0].group}
///   # The sort order of the first policy
///   policyQuerySortOrder: ${all.policies[0].policyQueries[0].sortOrder}
///   # The setting of the first policy as a JSON string
///   policySetting: ${all.policies[0].setting}
///   # The type of policy - ADMIN/SYSTEM
///   policyType: ${all.policies[0].type}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_get_policies_get_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicies:getPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}

pulumi.Output<GetPoliciesResult> getPoliciesOutput(
  GetPoliciesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicies:getPolicies',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPoliciesResult.fromMap);
}

/// Use this data source to retrieve a Cloud Identity policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = gcp.cloudidentity.getPolicy({
///     name: "policies/{policy_id}",
/// });
/// export const policyCustomer = test.then(test => test.customer);
/// export const policyQueryQuery = test.then(test => test.policyQueries?.[0]?.query);
/// export const policyQueryOrgUnit = test.then(test => test.policyQueries?.[0]?.orgUnit);
/// export const policyQueryGroup = test.then(test => test.policyQueries?.[0]?.group);
/// export const policyQuerySortOrder = test.then(test => test.policyQueries?.[0]?.sortOrder);
/// export const policySetting = test.then(test => test.setting);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.cloudidentity.get_policy(name="policies/{policy_id}")
/// pulumi.export("policyCustomer", test.customer)
/// pulumi.export("policyQueryQuery", test.policy_queries[0].query)
/// pulumi.export("policyQueryOrgUnit", test.policy_queries[0].org_unit)
/// pulumi.export("policyQueryGroup", test.policy_queries[0].group)
/// pulumi.export("policyQuerySortOrder", test.policy_queries[0].sort_order)
/// pulumi.export("policySetting", test.setting)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Gcp.CloudIdentity.GetPolicy.Invoke(new()
///     {
///         Name = "policies/{policy_id}",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["policyCustomer"] = test.Apply(getPolicyResult => getPolicyResult.Customer),
///         ["policyQueryQuery"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.Query),
///         ["policyQueryOrgUnit"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.OrgUnit),
///         ["policyQueryGroup"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.Group),
///         ["policyQuerySortOrder"] = test.Apply(getPolicyResult => getPolicyResult.PolicyQueries[0]?.SortOrder),
///         ["policySetting"] = test.Apply(getPolicyResult => getPolicyResult.Setting),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := cloudidentity.LookupPolicy(ctx, &cloudidentity.LookupPolicyArgs{
/// 			Name: "policies/{policy_id}",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("policyCustomer", test.Customer)
/// 		ctx.Export("policyQueryQuery", test.PolicyQueries[0].Query)
/// 		ctx.Export("policyQueryOrgUnit", test.PolicyQueries[0].OrgUnit)
/// 		ctx.Export("policyQueryGroup", test.PolicyQueries[0].Group)
/// 		ctx.Export("policyQuerySortOrder", test.PolicyQueries[0].SortOrder)
/// 		ctx.Export("policySetting", test.Setting)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_cloudidentity_getpolicy" "test" {
///   name = "policies/{policy_id}"
/// }
///
/// // The customer the policy belongs to
/// output "policyCustomer" {
///   value = data.gcp_cloudidentity_getpolicy.test.customer
/// }
/// // The CEL query of the policy
/// output "policyQueryQuery" {
///   value = data.gcp_cloudidentity_getpolicy.test.policy_queries[0].query
/// }
/// // The org unit the policy applies to
/// output "policyQueryOrgUnit" {
///   value = data.gcp_cloudidentity_getpolicy.test.policy_queries[0].org_unit
/// }
/// // The group the policy applies to
/// output "policyQueryGroup" {
///   value = data.gcp_cloudidentity_getpolicy.test.policy_queries[0].group
/// }
/// // The sort order of the policy
/// output "policyQuerySortOrder" {
///   value = data.gcp_cloudidentity_getpolicy.test.policy_queries[0].sort_order
/// }
/// // The setting of the policy as a JSON string
/// output "policySetting" {
///   value = data.gcp_cloudidentity_getpolicy.test.setting
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetPolicyArgs;
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
///         final var test = CloudidentityFunctions.getPolicy(GetPolicyArgs.builder()
///             .name("policies/{policy_id}")
///             .build());
///
///         ctx.export("policyCustomer", test.customer());
///         ctx.export("policyQueryQuery", test.policyQueries()[0].query());
///         ctx.export("policyQueryOrgUnit", test.policyQueries()[0].orgUnit());
///         ctx.export("policyQueryGroup", test.policyQueries()[0].group());
///         ctx.export("policyQuerySortOrder", test.policyQueries()[0].sortOrder());
///         ctx.export("policySetting", test.setting());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: gcp:cloudidentity:getPolicy
///       arguments:
///         name: policies/{policy_id}
/// outputs:
///   # The customer the policy belongs to
///   policyCustomer: ${test.customer}
///   # The CEL query of the policy
///   policyQueryQuery: ${test.policyQueries[0].query}
///   # The org unit the policy applies to
///   policyQueryOrgUnit: ${test.policyQueries[0].orgUnit}
///   # The group the policy applies to
///   policyQueryGroup: ${test.policyQueries[0].group}
///   # The sort order of the policy
///   policyQuerySortOrder: ${test.policyQueries[0].sortOrder}
///   # The setting of the policy as a JSON string
///   policySetting: ${test.setting}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_get_policy_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

pulumi.Output<GetPolicyResult> getPolicyOutput(
  GetPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:cloudidentity/getPolicy:getPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyResult.fromMap);
}
