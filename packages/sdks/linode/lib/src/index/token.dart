import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_args.dart';
import 'token_state.dart';

/// Provides a Linode Token resource.  This can be used to create, modify, and delete Linode API Personal Access Tokens.  Personal Access Tokens proxy user credentials for Linode API access.  This is necessary for tools, such as Pulumi, to interact with Linode services on a user's behalf.
///
/// It is common for the provider itself to be configured with broadly scoped Personal Access Tokens.  Provisioning scripts or tools configured within a Linode Instance should follow the principle of least privilege to afford only the required roles for tools to perform their necessary tasks.  The `linode.Token` resource allows for the management of Personal Access Tokens with scopes mirroring or narrowing the scope of the parent token.
///
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-personal-access-tokens).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure a token for use in another tool that needs access to Linode resources.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = new linode.Token("foo", {
///     label: "token",
///     scopes: "linodes:read_only",
///     expiry: "2100-01-02T03:04:05Z",
/// });
/// const fooInstance = new linode.Instance("foo", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.Token("foo",
///     label="token",
///     scopes="linodes:read_only",
///     expiry="2100-01-02T03:04:05Z")
/// foo_instance = linode.Instance("foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.Token("foo", new()
///     {
///         Label = "token",
///         Scopes = "linodes:read_only",
///         Expiry = "2100-01-02T03:04:05Z",
///     });
///
///     var fooInstance = new Linode.Instance("foo");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewToken(ctx, "foo", &linode.TokenArgs{
/// 			Label:  pulumi.String("token"),
/// 			Scopes: pulumi.String("linodes:read_only"),
/// 			Expiry: pulumi.String("2100-01-02T03:04:05Z"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstance(ctx, "foo", nil)
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
/// import com.pulumi.linode.Token;
/// import com.pulumi.linode.TokenArgs;
/// import com.pulumi.linode.Instance;
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
///         var foo = new Token("foo", TokenArgs.builder()
///             .label("token")
///             .scopes("linodes:read_only")
///             .expiry("2100-01-02T03:04:05Z")
///             .build());
///
///         var fooInstance = new Instance("fooInstance");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:Token
///     properties:
///       label: token
///       scopes: linodes:read_only
///       expiry: 2100-01-02T03:04:05Z
///   fooInstance:
///     type: linode:Instance
///     name: foo
/// ```
///
///
/// ## Import
///
/// Linodes Tokens can be imported using the Linode Token `id`, e.g.  The secret token will not be imported.
///
/// ```sh
/// $ pulumi import linode:index/token:Token mytoken 1234567
/// ```
class Token extends pulumi.CustomResource {
  /// The date this Token was created.
  late final pulumi.Output<String> created;
  /// When this token will expire. Personal Access Tokens cannot be renewed, so after this time the token will be completely unusable and a new token will need to be generated. Tokens may be created with 'null' as their expiry and will never expire unless revoked.
  late final pulumi.Output<String> expiry;
  /// A label for the Token.
  late final pulumi.Output<String?> label;
  /// The scopes this token was created with. These define what parts of the Account the token can be used to access. Many command-line tools, such as the Linode CLI, require tokens with access to *. Tokens with more restrictive scopes are generally more secure. All scopes can be viewed in [the Linode API documentation](https://techdocs.akamai.com/linode-api/reference/get-started#oauth-reference).
  late final pulumi.Output<String> scopes;
  /// The token used to access the API.
  late final pulumi.Output<String> token;

  /// Creates a new [Token].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Token]. {@macro pulumi_index_token_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Token(
    String name, {
    TokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/token:Token',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    expiry = registerOutput<String>('expiry');
    label = registerOutput<String?>('label');
    scopes = registerOutput<String>('scopes');
    token = registerOutput<String>('token');
  }

  /// Gets an existing [Token] resource's state with the given [name] and [id].
  static Token get(
    String name,
    pulumi.Input<String> id, {
    TokenState? state,
  }) {
    return Token._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Token._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/token:Token',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    expiry = registerOutput<String>('expiry');
    label = registerOutput<String?>('label');
    scopes = registerOutput<String>('scopes');
    token = registerOutput<String>('token');
  }
}
