import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_args.dart';
import 'ssh_public_key_state.dart';

/// The SSH public key information associated with a Google account.
///
///
/// To get more information about SSHPublicKey, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/oslogin/rest/v1/users.sshPublicKeys)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/oslogin)
///
/// ## Example Usage
///
/// ### Os Login Ssh Key Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const me = gcp.organizations.getClientOpenIdUserInfo({});
/// const cache = new gcp.oslogin.SshPublicKey("cache", {
///     user: me.then(me => me.email),
///     key: std.file({
///         input: "path/to/id_rsa.pub",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// me = gcp.organizations.get_client_open_id_user_info()
/// cache = gcp.oslogin.SshPublicKey("cache",
///     user=me.email,
///     key=std.file(input="path/to/id_rsa.pub").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
///     var cache = new Gcp.OsLogin.SshPublicKey("cache", new()
///     {
///         User = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
///         Key = Std.File.Invoke(new()
///         {
///             Input = "path/to/id_rsa.pub",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oslogin"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oslogin.NewSshPublicKey(ctx, "cache", &oslogin.SshPublicKeyArgs{
/// 			User: pulumi.String(me.Email),
/// 			Key:  pulumi.String(invokeFile.Result),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_organizations_getclientopeniduserinfo" "me" {
/// }
///
/// resource "gcp_oslogin_sshpublickey" "cache" {
///   user = data.gcp_organizations_getclientopeniduserinfo.me.email
///   key  = file("path/to/id_rsa.pub")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.oslogin.SshPublicKey;
/// import com.pulumi.gcp.oslogin.SshPublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         final var me = OrganizationsFunctions.getClientOpenIdUserInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var cache = new SshPublicKey("cache", SshPublicKeyArgs.builder()
///             .user(me.email())
///             .key(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/id_rsa.pub")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cache:
///     type: gcp:oslogin:SshPublicKey
///     properties:
///       user: ${me.email}
///       key:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/id_rsa.pub
///           return: result
/// variables:
///   me:
///     fn::invoke:
///       function: gcp:organizations:getClientOpenIdUserInfo
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// SSHPublicKey can be imported using any of these accepted formats:
///
/// * `users/{{user}}/sshPublicKeys/{{fingerprint}}`
/// * `{{user}}/{{fingerprint}}`
///
///
/// When using the `pulumi import` command, SSHPublicKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oslogin/sshPublicKey:SshPublicKey default users/{{user}}/sshPublicKeys/{{fingerprint}}
/// $ pulumi import gcp:oslogin/sshPublicKey:SshPublicKey default {{user}}/{{fingerprint}}
/// ```
class SshPublicKey extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An expiration time in microseconds since epoch.
  late final pulumi.Output<String?> expirationTimeUsec;
  /// The SHA-256 fingerprint of the SSH public key.
  late final pulumi.Output<String> fingerprint;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  late final pulumi.Output<String> key;
  /// The project ID of the Google Cloud Platform project.
  late final pulumi.Output<String?> project;
  /// The user email.
  late final pulumi.Output<String> user;

  /// Creates a new [SshPublicKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshPublicKey]. {@macro pulumi_oslogin_ssh_public_key_ssh_public_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshPublicKey(
    String name, {
    SshPublicKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oslogin/sshPublicKey:SshPublicKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expirationTimeUsec = registerOutput<String?>('expirationTimeUsec');
    fingerprint = registerOutput<String>('fingerprint');
    key = registerOutput<String>('key');
    project = registerOutput<String?>('project');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [SshPublicKey] resource's state with the given [name] and [id].
  static SshPublicKey get(
    String name,
    pulumi.Input<String> id, {
    SshPublicKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SshPublicKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SshPublicKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oslogin/sshPublicKey:SshPublicKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expirationTimeUsec = registerOutput<String?>('expirationTimeUsec');
    fingerprint = registerOutput<String>('fingerprint');
    key = registerOutput<String>('key');
    project = registerOutput<String?>('project');
    user = registerOutput<String>('user');
  }

  /// Creates a typed reference to an existing [SshPublicKey] resource.
  SshPublicKey.reference(String urn)
    : super(
        'gcp:oslogin/sshPublicKey:SshPublicKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expirationTimeUsec = registerOutput<String?>('expirationTimeUsec');
    fingerprint = registerOutput<String>('fingerprint');
    key = registerOutput<String>('key');
    project = registerOutput<String?>('project');
    user = registerOutput<String>('user');
  }
}
