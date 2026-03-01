import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_iammember_args.dart';
import 'subscription_iammember_condition.dart';
import 'subscription_iammember_state.dart';

/// Three different resources help you manage your IAM policy for pubsub subscription. Each of these resources serves a different use case:
///
/// * `gcp.pubsub.SubscriptionIAMPolicy`: Authoritative. Sets the IAM policy for the subscription and replaces any existing policy already attached.
/// * `gcp.pubsub.SubscriptionIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the subscription are preserved.
/// * `gcp.pubsub.SubscriptionIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the subscription are preserved.
///
/// > **Note:** `gcp.pubsub.SubscriptionIAMPolicy` **cannot** be used in conjunction with `gcp.pubsub.SubscriptionIAMBinding` and `gcp.pubsub.SubscriptionIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.pubsub.SubscriptionIAMBinding` resources **can be** used in conjunction with `gcp.pubsub.SubscriptionIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.pubsub.SubscriptionIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const editor = new gcp.pubsub.SubscriptionIAMPolicy("editor", {
///     subscription: "your-subscription-name",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.pubsub.SubscriptionIAMPolicy("editor",
///     subscription="your-subscription-name",
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var editor = new Gcp.PubSub.SubscriptionIAMPolicy("editor", new()
///     {
///         Subscription = "your-subscription-name",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscriptionIAMPolicy(ctx, "editor", &pubsub.SubscriptionIAMPolicyArgs{
/// 			Subscription: pulumi.String("your-subscription-name"),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMPolicy;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMPolicyArgs;
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
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var editor = new SubscriptionIAMPolicy("editor", SubscriptionIAMPolicyArgs.builder()
///             .subscription("your-subscription-name")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:pubsub:SubscriptionIAMPolicy
///     properties:
///       subscription: your-subscription-name
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.pubsub.SubscriptionIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMBinding("editor", {
///     subscription: "your-subscription-name",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMBinding("editor",
///     subscription="your-subscription-name",
///     role="roles/editor",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var editor = new Gcp.PubSub.SubscriptionIAMBinding("editor", new()
///     {
///         Subscription = "your-subscription-name",
///         Role = "roles/editor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSubscriptionIAMBinding(ctx, "editor", &pubsub.SubscriptionIAMBindingArgs{
/// 			Subscription: pulumi.String("your-subscription-name"),
/// 			Role:         pulumi.String("roles/editor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBinding;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBindingArgs;
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
///         var editor = new SubscriptionIAMBinding("editor", SubscriptionIAMBindingArgs.builder()
///             .subscription("your-subscription-name")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:pubsub:SubscriptionIAMBinding
///     properties:
///       subscription: your-subscription-name
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.pubsub.SubscriptionIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMMember("editor", {
///     subscription: "your-subscription-name",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMMember("editor",
///     subscription="your-subscription-name",
///     role="roles/editor",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var editor = new Gcp.PubSub.SubscriptionIAMMember("editor", new()
///     {
///         Subscription = "your-subscription-name",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSubscriptionIAMMember(ctx, "editor", &pubsub.SubscriptionIAMMemberArgs{
/// 			Subscription: pulumi.String("your-subscription-name"),
/// 			Role:         pulumi.String("roles/editor"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMember;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMemberArgs;
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
///         var editor = new SubscriptionIAMMember("editor", SubscriptionIAMMemberArgs.builder()
///             .subscription("your-subscription-name")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:pubsub:SubscriptionIAMMember
///     properties:
///       subscription: your-subscription-name
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## gcp.pubsub.SubscriptionIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMBinding("editor", {
///     subscription: "your-subscription-name",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMBinding("editor",
///     subscription="your-subscription-name",
///     role="roles/editor",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var editor = new Gcp.PubSub.SubscriptionIAMBinding("editor", new()
///     {
///         Subscription = "your-subscription-name",
///         Role = "roles/editor",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSubscriptionIAMBinding(ctx, "editor", &pubsub.SubscriptionIAMBindingArgs{
/// 			Subscription: pulumi.String("your-subscription-name"),
/// 			Role:         pulumi.String("roles/editor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBinding;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBindingArgs;
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
///         var editor = new SubscriptionIAMBinding("editor", SubscriptionIAMBindingArgs.builder()
///             .subscription("your-subscription-name")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:pubsub:SubscriptionIAMBinding
///     properties:
///       subscription: your-subscription-name
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.pubsub.SubscriptionIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMMember("editor", {
///     subscription: "your-subscription-name",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMMember("editor",
///     subscription="your-subscription-name",
///     role="roles/editor",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var editor = new Gcp.PubSub.SubscriptionIAMMember("editor", new()
///     {
///         Subscription = "your-subscription-name",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSubscriptionIAMMember(ctx, "editor", &pubsub.SubscriptionIAMMemberArgs{
/// 			Subscription: pulumi.String("your-subscription-name"),
/// 			Role:         pulumi.String("roles/editor"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMember;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMemberArgs;
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
///         var editor = new SubscriptionIAMMember("editor", SubscriptionIAMMemberArgs.builder()
///             .subscription("your-subscription-name")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:pubsub:SubscriptionIAMMember
///     properties:
///       subscription: your-subscription-name
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Pubsub Subscription resource. For example:
///
/// * `"projects/{{project_id}}/subscriptions/{{subscription}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{{project_id}}/subscriptions/{{subscription}}"
///
/// to = google_pubsub_subscription_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscriptionIAMMember:SubscriptionIAMMember default projects/{{project_id}}/subscriptions/{{subscription}}
/// ```
class SubscriptionIAMMember extends pulumi.CustomResource {
  late final pulumi.Output<SubscriptionIAMMemberCondition?> condition;
  /// (Computed) The etag of the subscription's IAM policy.
  late final pulumi.Output<String> etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.pubsub.SubscriptionIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;
  /// The subscription name or id to bind to attach IAM policy to.
  late final pulumi.Output<String> subscription;

  /// Creates a new [SubscriptionIAMMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionIAMMember]. {@macro pulumi_pubsub_subscription_iammember_subscription_iammember_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionIAMMember(
    String name, {
    SubscriptionIAMMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscriptionIAMMember:SubscriptionIAMMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<SubscriptionIAMMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.subscription = registerOutput<String>('subscription');
  }

  /// Gets an existing [SubscriptionIAMMember] resource's state with the given [name] and [id].
  static SubscriptionIAMMember get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionIAMMemberState? state,
  }) {
    return SubscriptionIAMMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubscriptionIAMMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscriptionIAMMember:SubscriptionIAMMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<SubscriptionIAMMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.subscription = registerOutput<String>('subscription');
  }
}
