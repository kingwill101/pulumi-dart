import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_code_token_args.dart';
import 'source_code_token_state.dart';

/// Manages an App Service source control token.
///
/// &gt; **NOTE:** This resource has been deprecated and will be removed in version 6.0 of the provider. Please use `azure.appservice.ServicePlan` resource instead.
///
/// &gt; **NOTE:** Source Control Tokens are configured at the subscription level, not on each App Service - as such this can only be configured Subscription-wide
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.appservice.SourceCodeToken("example", {
///     type: "GitHub",
///     token: "7e57735e77e577e57",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appservice.SourceCodeToken("example",
///     type="GitHub",
///     token="7e57735e77e577e57")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.AppService.SourceCodeToken("example", new()
///     {
///         Type = "GitHub",
///         Token = "7e57735e77e577e57",
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
/// 		_, err := appservice.NewSourceCodeToken(ctx, "example", &appservice.SourceCodeTokenArgs{
/// 			Type:  pulumi.String("GitHub"),
/// 			Token: pulumi.String("7e57735e77e577e57"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_appservice_sourcecodetoken" "example" {
///   type  = "GitHub"
///   token = "7e57735e77e577e57"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.appservice.SourceCodeToken;
/// import com.pulumi.azure.appservice.SourceCodeTokenArgs;
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
///         var example = new SourceCodeToken("example", SourceCodeTokenArgs.builder()
///             .type("GitHub")
///             .token("7e57735e77e577e57")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:appservice:SourceCodeToken
///     properties:
///       type: GitHub
///       token: 7e57735e77e577e57
/// ```
///
///
/// ## Import
///
/// App Service Source Control Token's can be imported using the `type`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/sourceCodeToken:SourceCodeToken example {type}
/// ```
class SourceCodeToken extends pulumi.CustomResource {
  /// The OAuth access token.
  late final pulumi.Output<String> token;
  /// The OAuth access token secret.
  late final pulumi.Output<String?> tokenSecret;
  /// The source control type. Possible values are `BitBucket`, `Dropbox`, `GitHub` and `OneDrive`.
  late final pulumi.Output<String> type;

  /// Creates a new [SourceCodeToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceCodeToken]. {@macro pulumi_appservice_source_code_token_source_code_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceCodeToken(
    String name, {
    SourceCodeTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/sourceCodeToken:SourceCodeToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['token', 'tokenSecret'],
        ) {
    token = registerOutput<String>('token', isSecret: true);
    tokenSecret = registerOutput<String?>('tokenSecret', isSecret: true);
    type = registerOutput<String>('type');
  }

  /// Gets an existing [SourceCodeToken] resource's state with the given [name] and [id].
  static SourceCodeToken get(
    String name,
    pulumi.Input<String> id, {
    SourceCodeTokenState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SourceCodeToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SourceCodeToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/sourceCodeToken:SourceCodeToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    token = registerOutput<String>('token', isSecret: true);
    tokenSecret = registerOutput<String?>('tokenSecret', isSecret: true);
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SourceCodeToken] resource.
  SourceCodeToken.reference(String urn)
    : super(
        'azure:appservice/sourceCodeToken:SourceCodeToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['token', 'tokenSecret'],
        isResourceReference: true,
      ) {
    token = registerOutput<String>('token', isSecret: true);
    tokenSecret = registerOutput<String?>('tokenSecret', isSecret: true);
    type = registerOutput<String>('type');
  }
}
