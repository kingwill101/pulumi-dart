import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_args.dart';
import 'get_feature_iam_policy_args.dart';
import 'get_feature_iam_policy_result.dart';
import 'get_feature_result.dart';
import 'get_membership_args.dart';
import 'get_membership_binding_args.dart';
import 'get_membership_binding_result.dart';
import 'get_membership_iam_policy_args.dart';
import 'get_membership_iam_policy_result.dart';
import 'get_membership_result.dart';
import 'get_scope_iam_policy_args.dart';
import 'get_scope_iam_policy_result.dart';

/// Retrieves the details of a specific GKE Hub Feature. Use this data source to retrieve the feature's configuration and state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.gkehub.getFeature({
///     location: "global",
///     name: "servicemesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gkehub.get_feature(location="global",
///     name="servicemesh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.GkeHub.GetFeature.Invoke(new()
///     {
///         Location = "global",
///         Name = "servicemesh",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.LookupFeature(ctx, &gkehub.LookupFeatureArgs{
/// 			Location: "global",
/// 			Name:     "servicemesh",
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
/// data "gcp_gkehub_getfeature" "example" {
///   location = "global"
///   name     = "servicemesh"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetFeatureArgs;
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
///         final var example = GkehubFunctions.getFeature(GetFeatureArgs.builder()
///             .location("global")
///             .name("servicemesh")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:gkehub:getFeature
///       arguments:
///         location: global
///         name: servicemesh
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_get_feature_get_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureResult> getFeature(
  GetFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getFeature:getFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureResult.fromMap(result);
}

/// Retrieves the current IAM policy data for feature
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkehub.getFeatureIamPolicy({
///     project: feature.project,
///     location: feature.location,
///     name: feature.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkehub.get_feature_iam_policy(project=feature["project"],
///     location=feature["location"],
///     name=feature["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.GkeHub.GetFeatureIamPolicy.Invoke(new()
///     {
///         Project = feature.Project,
///         Location = feature.Location,
///         Name = feature.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.LookupFeatureIamPolicy(ctx, &gkehub.LookupFeatureIamPolicyArgs{
/// 			Project:  pulumi.StringRef(feature.Project),
/// 			Location: pulumi.StringRef(feature.Location),
/// 			Name:     feature.Name,
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
/// data "gcp_gkehub_getfeatureiampolicy" "policy" {
///   project  = feature.project
///   location = feature.location
///   name     = feature.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetFeatureIamPolicyArgs;
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
///         final var policy = GkehubFunctions.getFeatureIamPolicy(GetFeatureIamPolicyArgs.builder()
///             .project(feature.get("project"))
///             .location(feature.get("location"))
///             .name(feature.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:gkehub:getFeatureIamPolicy
///       arguments:
///         project: ${feature.project}
///         location: ${feature.location}
///         name: ${feature.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_get_feature_iam_policy_get_feature_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureIamPolicyResult> getFeatureIamPolicy(
  GetFeatureIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getFeatureIamPolicy:getFeatureIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyResult.fromMap(result);
}

/// Retrieves the details of a specific GKE Hub Membership. Use this data source to retrieve the membership's configuration and state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.gkehub.getMembership({
///     project: "my-project-id",
///     location: "global",
///     membershipId: "my-membership-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gkehub.get_membership(project="my-project-id",
///     location="global",
///     membership_id="my-membership-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.GkeHub.GetMembership.Invoke(new()
///     {
///         Project = "my-project-id",
///         Location = "global",
///         MembershipId = "my-membership-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.LookupMembership(ctx, &gkehub.LookupMembershipArgs{
/// 			Project:      pulumi.StringRef("my-project-id"),
/// 			Location:     "global",
/// 			MembershipId: "my-membership-id",
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
/// data "gcp_gkehub_getmembership" "example" {
///   project       = "my-project-id"
///   location      = "global"
///   membership_id = "my-membership-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetMembershipArgs;
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
///         final var example = GkehubFunctions.getMembership(GetMembershipArgs.builder()
///             .project("my-project-id")
///             .location("global")
///             .membershipId("my-membership-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:gkehub:getMembership
///       arguments:
///         project: my-project-id
///         location: global
///         membershipId: my-membership-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_get_membership_get_membership_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipResult> getMembership(
  GetMembershipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembership:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult.fromMap(result);
}

/// Retrieves the details of a specific GKE Hub Membership Binding. Use this data source to retrieve the membership binding's configuration and state.
///
/// A membership binding associates a GKE Hub membership with a scope, enabling the membership to participate in fleet-wide configurations and policies defined by the scope.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.gkehub.getMembershipBinding({
///     location: "global",
///     membershipId: "my-membership-id",
///     membershipBindingId: "my-membership-binding-id",
///     project: "my-project-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gkehub.get_membership_binding(location="global",
///     membership_id="my-membership-id",
///     membership_binding_id="my-membership-binding-id",
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
///     var example = Gcp.GkeHub.GetMembershipBinding.Invoke(new()
///     {
///         Location = "global",
///         MembershipId = "my-membership-id",
///         MembershipBindingId = "my-membership-binding-id",
///         Project = "my-project-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.LookupMembershipBinding(ctx, &gkehub.LookupMembershipBindingArgs{
/// 			Location:            "global",
/// 			MembershipId:        "my-membership-id",
/// 			MembershipBindingId: "my-membership-binding-id",
/// 			Project:             pulumi.StringRef("my-project-id"),
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
/// data "gcp_gkehub_getmembershipbinding" "example" {
///   location              = "global"
///   membership_id         = "my-membership-id"
///   membership_binding_id = "my-membership-binding-id"
///   project               = "my-project-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetMembershipBindingArgs;
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
///         final var example = GkehubFunctions.getMembershipBinding(GetMembershipBindingArgs.builder()
///             .location("global")
///             .membershipId("my-membership-id")
///             .membershipBindingId("my-membership-binding-id")
///             .project("my-project-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:gkehub:getMembershipBinding
///       arguments:
///         location: global
///         membershipId: my-membership-id
///         membershipBindingId: my-membership-binding-id
///         project: my-project-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_get_membership_binding_get_membership_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipBindingResult> getMembershipBinding(
  GetMembershipBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembershipBinding:getMembershipBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipBindingResult.fromMap(result);
}

/// Retrieves the current IAM policy data for membership
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkehub.getMembershipIamPolicy({
///     project: membership.project,
///     location: membership.location,
///     membershipId: membership.membershipId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkehub.get_membership_iam_policy(project=membership["project"],
///     location=membership["location"],
///     membership_id=membership["membershipId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.GkeHub.GetMembershipIamPolicy.Invoke(new()
///     {
///         Project = membership.Project,
///         Location = membership.Location,
///         MembershipId = membership.MembershipId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.LookupMembershipIamPolicy(ctx, &gkehub.LookupMembershipIamPolicyArgs{
/// 			Project:      pulumi.StringRef(membership.Project),
/// 			Location:     pulumi.StringRef(membership.Location),
/// 			MembershipId: membership.MembershipId,
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
/// data "gcp_gkehub_getmembershipiampolicy" "policy" {
///   project       = membership.project
///   location      = membership.location
///   membership_id = membership.membershipId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetMembershipIamPolicyArgs;
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
///         final var policy = GkehubFunctions.getMembershipIamPolicy(GetMembershipIamPolicyArgs.builder()
///             .project(membership.get("project"))
///             .location(membership.get("location"))
///             .membershipId(membership.get("membershipId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:gkehub:getMembershipIamPolicy
///       arguments:
///         project: ${membership.project}
///         location: ${membership.location}
///         membershipId: ${membership.membershipId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_get_membership_iam_policy_get_membership_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipIamPolicyResult> getMembershipIamPolicy(
  GetMembershipIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembershipIamPolicy:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for scope
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkehub.getScopeIamPolicy({
///     project: scope.project,
///     scopeId: scope.scopeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkehub.get_scope_iam_policy(project=scope["project"],
///     scope_id=scope["scopeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.GkeHub.GetScopeIamPolicy.Invoke(new()
///     {
///         Project = scope.Project,
///         ScopeId = scope.ScopeId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkehub.LookupScopeIamPolicy(ctx, &gkehub.LookupScopeIamPolicyArgs{
/// 			Project: pulumi.StringRef(scope.Project),
/// 			ScopeId: scope.ScopeId,
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
/// data "gcp_gkehub_getscopeiampolicy" "policy" {
///   project  = scope.project
///   scope_id = scope.scopeId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetScopeIamPolicyArgs;
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
///         final var policy = GkehubFunctions.getScopeIamPolicy(GetScopeIamPolicyArgs.builder()
///             .project(scope.get("project"))
///             .scopeId(scope.get("scopeId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:gkehub:getScopeIamPolicy
///       arguments:
///         project: ${scope.project}
///         scopeId: ${scope.scopeId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_get_scope_iam_policy_get_scope_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeIamPolicyResult> getScopeIamPolicy(
  GetScopeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getScopeIamPolicy:getScopeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyResult.fromMap(result);
}
