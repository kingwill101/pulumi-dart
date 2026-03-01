import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_ring_iambinding_args.dart';
import 'key_ring_iambinding_condition.dart';
import 'key_ring_iambinding_state.dart';

/// Three different resources help you manage your IAM policy for KMS key ring. Each of these resources serves a different use case:
///
/// * `gcp.kms.KeyRingIAMPolicy`: Authoritative. Sets the IAM policy for the key ring and replaces any existing policy already attached.
/// * `gcp.kms.KeyRingIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the key ring are preserved.
/// * `gcp.kms.KeyRingIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the key ring are preserved.
///
/// > **Note:** `gcp.kms.KeyRingIAMPolicy` **cannot** be used in conjunction with `gcp.kms.KeyRingIAMBinding` and `gcp.kms.KeyRingIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.kms.KeyRingIAMBinding` resources **can be** used in conjunction with `gcp.kms.KeyRingIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.kms.KeyRingIAMPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "keyring-example",
///     location: "global",
/// });
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const keyRing = new gcp.kms.KeyRingIAMPolicy("key_ring", {
///     keyRingId: keyring.id,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
///     name="keyring-example",
///     location="global")
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// key_ring = gcp.kms.KeyRingIAMPolicy("key_ring",
///     key_ring_id=keyring.id,
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
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "keyring-example",
///         Location = "global",
///     });
///
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
///     var keyRing = new Gcp.Kms.KeyRingIAMPolicy("key_ring", new()
///     {
///         KeyRingId = keyring.Id,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring-example"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 		_, err = kms.NewKeyRingIAMPolicy(ctx, "key_ring", &kms.KeyRingIAMPolicyArgs{
/// 			KeyRingId:  keyring.ID(),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.kms.KeyRingIAMPolicy;
/// import com.pulumi.gcp.kms.KeyRingIAMPolicyArgs;
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
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("global")
///             .build());
///
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var keyRing = new KeyRingIAMPolicy("keyRing", KeyRingIAMPolicyArgs.builder()
///             .keyRingId(keyring.id())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: keyring-example
///       location: global
///   keyRing:
///     type: gcp:kms:KeyRingIAMPolicy
///     name: key_ring
///     properties:
///       keyRingId: ${keyring.id}
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
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "keyring-example",
///     location: "global",
/// });
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const keyRing = new gcp.kms.KeyRingIAMPolicy("key_ring", {
///     keyRingId: keyring.id,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
///     name="keyring-example",
///     location="global")
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// key_ring = gcp.kms.KeyRingIAMPolicy("key_ring",
///     key_ring_id=keyring.id,
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
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "keyring-example",
///         Location = "global",
///     });
///
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
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var keyRing = new Gcp.Kms.KeyRingIAMPolicy("key_ring", new()
///     {
///         KeyRingId = keyring.Id,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring-example"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewKeyRingIAMPolicy(ctx, "key_ring", &kms.KeyRingIAMPolicyArgs{
/// 			KeyRingId:  keyring.ID(),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.kms.KeyRingIAMPolicy;
/// import com.pulumi.gcp.kms.KeyRingIAMPolicyArgs;
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
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("global")
///             .build());
///
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var keyRing = new KeyRingIAMPolicy("keyRing", KeyRingIAMPolicyArgs.builder()
///             .keyRingId(keyring.id())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: keyring-example
///       location: global
///   keyRing:
///     type: gcp:kms:KeyRingIAMPolicy
///     name: key_ring
///     properties:
///       keyRingId: ${keyring.id}
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
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.kms.KeyRingIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMBinding("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMBinding("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
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
///     var keyRing = new Gcp.Kms.KeyRingIAMBinding("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMBinding(ctx, "key_ring", &kms.KeyRingIAMBindingArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMBinding;
/// import com.pulumi.gcp.kms.KeyRingIAMBindingArgs;
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
///         var keyRing = new KeyRingIAMBinding("keyRing", KeyRingIAMBindingArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMBinding
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMBinding("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMBinding("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyRing = new Gcp.Kms.KeyRingIAMBinding("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Kms.Inputs.KeyRingIAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMBinding(ctx, "key_ring", &kms.KeyRingIAMBindingArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &kms.KeyRingIAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMBinding;
/// import com.pulumi.gcp.kms.KeyRingIAMBindingArgs;
/// import com.pulumi.gcp.kms.inputs.KeyRingIAMBindingConditionArgs;
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
///         var keyRing = new KeyRingIAMBinding("keyRing", KeyRingIAMBindingArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .members("user:jane@example.com")
///             .condition(KeyRingIAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMBinding
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.kms.KeyRingIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMMember("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMMember("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
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
///     var keyRing = new Gcp.Kms.KeyRingIAMMember("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMMember(ctx, "key_ring", &kms.KeyRingIAMMemberArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMMember;
/// import com.pulumi.gcp.kms.KeyRingIAMMemberArgs;
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
///         var keyRing = new KeyRingIAMMember("keyRing", KeyRingIAMMemberArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMMember
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMMember("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMMember("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyRing = new Gcp.Kms.KeyRingIAMMember("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Kms.Inputs.KeyRingIAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMMember(ctx, "key_ring", &kms.KeyRingIAMMemberArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
/// 			Member:    pulumi.String("user:jane@example.com"),
/// 			Condition: &kms.KeyRingIAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMMember;
/// import com.pulumi.gcp.kms.KeyRingIAMMemberArgs;
/// import com.pulumi.gcp.kms.inputs.KeyRingIAMMemberConditionArgs;
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
///         var keyRing = new KeyRingIAMMember("keyRing", KeyRingIAMMemberArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .member("user:jane@example.com")
///             .condition(KeyRingIAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMMember
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.kms.KeyRingIAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMBinding("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMBinding("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
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
///     var keyRing = new Gcp.Kms.KeyRingIAMBinding("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMBinding(ctx, "key_ring", &kms.KeyRingIAMBindingArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMBinding;
/// import com.pulumi.gcp.kms.KeyRingIAMBindingArgs;
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
///         var keyRing = new KeyRingIAMBinding("keyRing", KeyRingIAMBindingArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMBinding
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMBinding("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMBinding("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyRing = new Gcp.Kms.KeyRingIAMBinding("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Kms.Inputs.KeyRingIAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMBinding(ctx, "key_ring", &kms.KeyRingIAMBindingArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &kms.KeyRingIAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMBinding;
/// import com.pulumi.gcp.kms.KeyRingIAMBindingArgs;
/// import com.pulumi.gcp.kms.inputs.KeyRingIAMBindingConditionArgs;
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
///         var keyRing = new KeyRingIAMBinding("keyRing", KeyRingIAMBindingArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .members("user:jane@example.com")
///             .condition(KeyRingIAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMBinding
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.kms.KeyRingIAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMMember("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMMember("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
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
///     var keyRing = new Gcp.Kms.KeyRingIAMMember("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMMember(ctx, "key_ring", &kms.KeyRingIAMMemberArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMMember;
/// import com.pulumi.gcp.kms.KeyRingIAMMemberArgs;
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
///         var keyRing = new KeyRingIAMMember("keyRing", KeyRingIAMMemberArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMMember
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRingIAMMember("key_ring", {
///     keyRingId: "your-key-ring-id",
///     role: "roles/cloudkms.admin",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRingIAMMember("key_ring",
///     key_ring_id="your-key-ring-id",
///     role="roles/cloudkms.admin",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyRing = new Gcp.Kms.KeyRingIAMMember("key_ring", new()
///     {
///         KeyRingId = "your-key-ring-id",
///         Role = "roles/cloudkms.admin",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Kms.Inputs.KeyRingIAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKeyRingIAMMember(ctx, "key_ring", &kms.KeyRingIAMMemberArgs{
/// 			KeyRingId: pulumi.String("your-key-ring-id"),
/// 			Role:      pulumi.String("roles/cloudkms.admin"),
/// 			Member:    pulumi.String("user:jane@example.com"),
/// 			Condition: &kms.KeyRingIAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.kms.KeyRingIAMMember;
/// import com.pulumi.gcp.kms.KeyRingIAMMemberArgs;
/// import com.pulumi.gcp.kms.inputs.KeyRingIAMMemberConditionArgs;
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
///         var keyRing = new KeyRingIAMMember("keyRing", KeyRingIAMMemberArgs.builder()
///             .keyRingId("your-key-ring-id")
///             .role("roles/cloudkms.admin")
///             .member("user:jane@example.com")
///             .condition(KeyRingIAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyRing:
///     type: gcp:kms:KeyRingIAMMember
///     name: key_ring
///     properties:
///       keyRingId: your-key-ring-id
///       role: roles/cloudkms.admin
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Cloud KMS key ring only. For example:
///
/// * `{{project_id}}/{{location}}/{{key_ring_name}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{key_ring_name}}"
///
/// to = google_kms_key_ring_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:kms/keyRingIAMBinding:KeyRingIAMBinding default {{project_id}}/{{location}}/{{key_ring_name}}
/// ```
class KeyRingIAMBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<KeyRingIAMBindingCondition?> condition;
  /// (Computed) The etag of the key ring's IAM policy.
  late final pulumi.Output<String> etag;
  /// The key ring ID, in the form
  /// `{project_id}/{location_name}/{key_ring_name}` or
  /// `{location_name}/{key_ring_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final pulumi.Output<String> keyRingId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;
  /// The role that should be applied. Only one
  /// `gcp.kms.KeyRingIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [KeyRingIAMBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyRingIAMBinding]. {@macro pulumi_kms_key_ring_iambinding_key_ring_iambinding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyRingIAMBinding(
    String name, {
    KeyRingIAMBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyRingIAMBinding:KeyRingIAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<KeyRingIAMBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }

  /// Gets an existing [KeyRingIAMBinding] resource's state with the given [name] and [id].
  static KeyRingIAMBinding get(
    String name,
    pulumi.Input<String> id, {
    KeyRingIAMBindingState? state,
  }) {
    return KeyRingIAMBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyRingIAMBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyRingIAMBinding:KeyRingIAMBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<KeyRingIAMBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
