import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_group_iam_policy_args.dart';
import 'get_address_group_iam_policy_result.dart';
import 'get_address_groups_args.dart';
import 'get_address_groups_result.dart';

/// Retrieves the current IAM policy data for projectaddressgroup
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_get_address_group_iam_policy_get_address_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressGroupIamPolicyResult> getAddressGroupIamPolicy(
  GetAddressGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networksecurity/getAddressGroupIamPolicy:getAddressGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAddressGroupIamPolicyResult> getAddressGroupIamPolicyOutput(
  GetAddressGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:networksecurity/getAddressGroupIamPolicy:getAddressGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAddressGroupIamPolicyResult.fromMap);
}

/// AddressGroups are used to group IP addresses together for use in firewall policies. This data source allows you to list address groups in a project or organization and location.
///
/// To get more information about Address Groups, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkFirewallPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firewall/docs/about-address-groups)
///
/// ## Example Usage
///
/// ### Project Level
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.networksecurity.getAddressGroups({
///     location: "us-central1",
///     project: "my-project-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.networksecurity.get_address_groups(location="us-central1",
///     project="my-project-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Gcp.NetworkSecurity.GetAddressGroups.Invoke(new()
///     {
///         Location = "us-central1",
///         Project = "my-project-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.GetAddressGroups(ctx, &networksecurity.GetAddressGroupsArgs{
/// 			Location: "us-central1",
/// 			Project:  pulumi.StringRef("my-project-id"),
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
/// data "gcp_networksecurity_getaddressgroups" "all" {
///   location = "us-central1"
///   project  = "my-project-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.NetworksecurityFunctions;
/// import com.pulumi.gcp.networksecurity.inputs.GetAddressGroupsArgs;
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
///         final var all = NetworksecurityFunctions.getAddressGroups(GetAddressGroupsArgs.builder()
///             .location("us-central1")
///             .project("my-project-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: gcp:networksecurity:getAddressGroups
///       arguments:
///         location: us-central1
///         project: my-project-id
/// ```
///
///
/// ### Organization Level
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const orgAll = gcp.networksecurity.getAddressGroups({
///     location: "us-central1",
///     parent: "organizations/123456789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// org_all = gcp.networksecurity.get_address_groups(location="us-central1",
///     parent="organizations/123456789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orgAll = Gcp.NetworkSecurity.GetAddressGroups.Invoke(new()
///     {
///         Location = "us-central1",
///         Parent = "organizations/123456789",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.GetAddressGroups(ctx, &networksecurity.GetAddressGroupsArgs{
/// 			Location: "us-central1",
/// 			Parent:   pulumi.StringRef("organizations/123456789"),
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
/// data "gcp_networksecurity_getaddressgroups" "orgAll" {
///   location = "us-central1"
///   parent   = "organizations/123456789"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.NetworksecurityFunctions;
/// import com.pulumi.gcp.networksecurity.inputs.GetAddressGroupsArgs;
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
///         final var orgAll = NetworksecurityFunctions.getAddressGroups(GetAddressGroupsArgs.builder()
///             .location("us-central1")
///             .parent("organizations/123456789")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   orgAll:
///     fn::invoke:
///       function: gcp:networksecurity:getAddressGroups
///       arguments:
///         location: us-central1
///         parent: organizations/123456789
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_get_address_groups_get_address_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressGroupsResult> getAddressGroups(
  GetAddressGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networksecurity/getAddressGroups:getAddressGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupsResult.fromMap(result);
}

pulumi.Output<GetAddressGroupsResult> getAddressGroupsOutput(
  GetAddressGroupsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:networksecurity/getAddressGroups:getAddressGroups',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAddressGroupsResult.fromMap);
}
