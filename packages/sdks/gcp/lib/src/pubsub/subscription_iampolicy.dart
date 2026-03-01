import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_iampolicy_args.dart';
import 'subscription_iampolicy_state.dart';

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
/// $ pulumi import gcp:pubsub/subscriptionIAMPolicy:SubscriptionIAMPolicy default projects/{{project_id}}/subscriptions/{{subscription}}
/// ```
class SubscriptionIAMPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the subscription's IAM policy.
  late final pulumi.Output<String> etag;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  ///
  /// - - -
  late final pulumi.Output<String> policyData;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The subscription name or id to bind to attach IAM policy to.
  late final pulumi.Output<String> subscription;

  /// Creates a new [SubscriptionIAMPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionIAMPolicy]. {@macro pulumi_pubsub_subscription_iampolicy_subscription_iampolicy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionIAMPolicy(
    String name, {
    SubscriptionIAMPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscriptionIAMPolicy:SubscriptionIAMPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.subscription = registerOutput<String>('subscription');
  }

  /// Gets an existing [SubscriptionIAMPolicy] resource's state with the given [name] and [id].
  static SubscriptionIAMPolicy get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionIAMPolicyState? state,
  }) {
    return SubscriptionIAMPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubscriptionIAMPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscriptionIAMPolicy:SubscriptionIAMPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.subscription = registerOutput<String>('subscription');
  }
}
