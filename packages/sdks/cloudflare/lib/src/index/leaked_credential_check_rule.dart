import 'package:pulumi/pulumi.dart' as pulumi;
import 'leaked_credential_check_rule_args.dart';
import 'leaked_credential_check_rule_state.dart';

/// Accepted Permissions
///
/// - `Account WAF Read`
/// - `Account WAF Write`
/// - `Zone WAF Read`
/// - `Zone WAF Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLeakedCredentialCheckRule = new cloudflare.LeakedCredentialCheckRule("example_leaked_credential_check_rule", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     password: "lookup_json_string(http.request.body.raw, \"secret\")",
///     username: "lookup_json_string(http.request.body.raw, \"user\")",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_leaked_credential_check_rule = cloudflare.LeakedCredentialCheckRule("example_leaked_credential_check_rule",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     password="lookup_json_string(http.request.body.raw, \"secret\")",
///     username="lookup_json_string(http.request.body.raw, \"user\")")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLeakedCredentialCheckRule = new Cloudflare.LeakedCredentialCheckRule("example_leaked_credential_check_rule", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Password = "lookup_json_string(http.request.body.raw, \"secret\")",
///         Username = "lookup_json_string(http.request.body.raw, \"user\")",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewLeakedCredentialCheckRule(ctx, "example_leaked_credential_check_rule", &cloudflare.LeakedCredentialCheckRuleArgs{
/// 			ZoneId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Password: pulumi.String("lookup_json_string(http.request.body.raw, \"secret\")"),
/// 			Username: pulumi.String("lookup_json_string(http.request.body.raw, \"user\")"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_leakedcredentialcheckrule" "example_leaked_credential_check_rule" {
///   zone_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   password = "lookup_json_string(http.request.body.raw, \"secret\")"
///   username = "lookup_json_string(http.request.body.raw, \"user\")"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LeakedCredentialCheckRule;
/// import com.pulumi.cloudflare.LeakedCredentialCheckRuleArgs;
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
///         var exampleLeakedCredentialCheckRule = new LeakedCredentialCheckRule("exampleLeakedCredentialCheckRule", LeakedCredentialCheckRuleArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .password("lookup_json_string(http.request.body.raw, \"secret\")")
///             .username("lookup_json_string(http.request.body.raw, \"user\")")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLeakedCredentialCheckRule:
///     type: cloudflare:LeakedCredentialCheckRule
///     name: example_leaked_credential_check_rule
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       password: lookup_json_string(http.request.body.raw, "secret")
///       username: lookup_json_string(http.request.body.raw, "user")
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/leakedCredentialCheckRule:LeakedCredentialCheckRule example '<zone_id>/<detection_id>'
/// ```
class LeakedCredentialCheckRule extends pulumi.CustomResource {
  /// Defines ehe ruleset expression to use in matching the password in a request.
  late final pulumi.Output<String?> password;
  /// Defines the ruleset expression to use in matching the username in a request.
  late final pulumi.Output<String?> username;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LeakedCredentialCheckRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeakedCredentialCheckRule]. {@macro pulumi_index_leaked_credential_check_rule_leaked_credential_check_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeakedCredentialCheckRule(
    String name, {
    LeakedCredentialCheckRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/leakedCredentialCheckRule:LeakedCredentialCheckRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    password = registerOutput<String?>('password');
    username = registerOutput<String?>('username');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [LeakedCredentialCheckRule] resource's state with the given [name] and [id].
  static LeakedCredentialCheckRule get(
    String name,
    pulumi.Input<String> id, {
    LeakedCredentialCheckRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LeakedCredentialCheckRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LeakedCredentialCheckRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/leakedCredentialCheckRule:LeakedCredentialCheckRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    password = registerOutput<String?>('password');
    username = registerOutput<String?>('username');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [LeakedCredentialCheckRule] resource.
  LeakedCredentialCheckRule.reference(String urn)
    : super(
        'cloudflare:index/leakedCredentialCheckRule:LeakedCredentialCheckRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    password = registerOutput<String?>('password');
    username = registerOutput<String?>('username');
    zoneId = registerOutput<String>('zoneId');
  }
}
