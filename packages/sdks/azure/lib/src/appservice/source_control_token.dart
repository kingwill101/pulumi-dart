import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_token_args.dart';
import 'source_control_token_state.dart';

/// Manages an App Service Source Control Token.
///
/// &gt; **Note:** This resource can only manage the token for the user currently running Terraform. Managing tokens for another user is not supported by the service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.appservice.SourceControlToken("example", {
///     type: "GitHub",
///     token: "ghp_sometokenvaluesecretsauce",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.SourceControlToken("example",
///     type="GitHub",
///     token="ghp_sometokenvaluesecretsauce")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.AppService.SourceControlToken("example", new()
///     {
///         Type = "GitHub",
///         Token = "ghp_sometokenvaluesecretsauce",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appservice.NewSourceControlToken(ctx, "example", &appservice.SourceControlTokenArgs{
/// 			Type:  pulumi.String("GitHub"),
/// 			Token: pulumi.String("ghp_sometokenvaluesecretsauce"),
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
/// import com.pulumi.azure.appservice.SourceControlToken;
/// import com.pulumi.azure.appservice.SourceControlTokenArgs;
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
///         var example = new SourceControlToken("example", SourceControlTokenArgs.builder()
///             .type("GitHub")
///             .token("ghp_sometokenvaluesecretsauce")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:appservice:SourceControlToken
///     properties:
///       type: GitHub
///       token: ghp_sometokenvaluesecretsauce
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-01-01
///
/// ## Import
///
/// App Service Source GitHub Tokens can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/sourceControlToken:SourceControlToken example /providers/Microsoft.Web/sourceControls/GitHub
/// ```
class SourceControlToken extends pulumi.CustomResource {
  /// The Access Token.
  late final pulumi.Output<String> token;

  /// The Access Token Secret.
  ///
  /// &gt; **Note:** The token used for deploying App Service needs the following permissions: `repo` and `workflow`.
  late final pulumi.Output<String?> tokenSecret;

  /// The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  late final pulumi.Output<String> type;

  /// Creates a new [SourceControlToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceControlToken]. {@macro pulumi_appservice_source_control_token_source_control_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceControlToken(
    String name, {
    SourceControlTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/sourceControlToken:SourceControlToken',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    token = registerOutput<String>('token');
    tokenSecret = registerOutput<String?>('tokenSecret');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [SourceControlToken] resource's state with the given [name] and [id].
  static SourceControlToken get(
    String name,
    pulumi.Input<String> id, {
    SourceControlTokenState? state,
  }) {
    return SourceControlToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SourceControlToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/sourceControlToken:SourceControlToken',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    token = registerOutput<String>('token');
    tokenSecret = registerOutput<String?>('tokenSecret');
    type = registerOutput<String>('type');
  }
}
