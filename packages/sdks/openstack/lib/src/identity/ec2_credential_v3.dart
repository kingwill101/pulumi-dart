import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_credential_v3_args.dart';
import 'ec2_credential_v3_state.dart';

/// Manages a V3 EC2 Credential resource within OpenStack Keystone.
/// EC2 credentials in OpenStack are used to access S3 compatible Swift/RadosGW
/// endpoints or to authenticate against Keystone.
///
/// &gt; **Note:** All arguments including the EC2 credential access key and secret
/// will be stored in the raw state as plain-text. Read more about sensitive data
/// in state.
///
/// ## Example Usage
///
/// ### EC2 credential in current project scope
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const ec2Key1 = new openstack.identity.Ec2CredentialV3("ec2_key1", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// ec2_key1 = openstack.identity.Ec2CredentialV3("ec2_key1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Key1 = new OpenStack.Identity.Ec2CredentialV3("ec2_key1");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.NewEc2CredentialV3(ctx, "ec2_key1", nil)
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
/// import com.pulumi.openstack.identity.Ec2CredentialV3;
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
///         var ec2Key1 = new Ec2CredentialV3("ec2Key1");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ec2Key1:
///     type: openstack:identity:Ec2CredentialV3
///     name: ec2_key1
/// ```
///
///
/// ### EC2 credential in pre-defined project scope
///
/// This allows administrative users to create EC2 credentials for a scope different
/// from the current auth scope.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const ec2Key1 = new openstack.identity.Ec2CredentialV3("ec2_key1", {projectId: "f7ac731cc11f40efbc03a9f9e1d1d21f"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// ec2_key1 = openstack.identity.Ec2CredentialV3("ec2_key1", project_id="f7ac731cc11f40efbc03a9f9e1d1d21f")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Key1 = new OpenStack.Identity.Ec2CredentialV3("ec2_key1", new()
///     {
///         ProjectId = "f7ac731cc11f40efbc03a9f9e1d1d21f",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.NewEc2CredentialV3(ctx, "ec2_key1", &identity.Ec2CredentialV3Args{
/// 			ProjectId: pulumi.String("f7ac731cc11f40efbc03a9f9e1d1d21f"),
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
/// import com.pulumi.openstack.identity.Ec2CredentialV3;
/// import com.pulumi.openstack.identity.Ec2CredentialV3Args;
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
///         var ec2Key1 = new Ec2CredentialV3("ec2Key1", Ec2CredentialV3Args.builder()
///             .projectId("f7ac731cc11f40efbc03a9f9e1d1d21f")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ec2Key1:
///     type: openstack:identity:Ec2CredentialV3
///     name: ec2_key1
///     properties:
///       projectId: f7ac731cc11f40efbc03a9f9e1d1d21f
/// ```
///
///
/// ## Import
///
/// EC2 Credentials can be imported using the `access`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/ec2CredentialV3:Ec2CredentialV3 ec2_cred_1 2d0ac4a2f81b4b0f9513ee49e780647d
/// ```
class Ec2CredentialV3 extends pulumi.CustomResource {
  /// contains an EC2 credential access UUID
  late final pulumi.Output<String> access;
  /// The ID of the project the EC2 credential is created
  /// for and that authentication requests using this EC2 credential will
  /// be scoped to. Only administrative users can specify a project ID different
  /// from the current auth scope.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new EC2 credential.
  late final pulumi.Output<String> region;
  /// contains an EC2 credential secret UUID
  late final pulumi.Output<String> secret;
  /// contains an EC2 credential trust ID scope
  late final pulumi.Output<String> trustId;
  /// The ID of the user the EC2 credential is created for.
  /// Only administrative users can specify a user ID different from the current
  /// auth scope.
  late final pulumi.Output<String> userId;

  /// Creates a new [Ec2CredentialV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2CredentialV3]. {@macro pulumi_identity_ec2_credential_v3_ec2_credential_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2CredentialV3(
    String name, {
    Ec2CredentialV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/ec2CredentialV3:Ec2CredentialV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    access = registerOutput<String>('access');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    secret = registerOutput<String>('secret');
    trustId = registerOutput<String>('trustId');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [Ec2CredentialV3] resource's state with the given [name] and [id].
  static Ec2CredentialV3 get(
    String name,
    pulumi.Input<String> id, {
    Ec2CredentialV3State? state,
  }) {
    return Ec2CredentialV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ec2CredentialV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/ec2CredentialV3:Ec2CredentialV3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    access = registerOutput<String>('access');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    secret = registerOutput<String>('secret');
    trustId = registerOutput<String>('trustId');
    userId = registerOutput<String>('userId');
  }
}
