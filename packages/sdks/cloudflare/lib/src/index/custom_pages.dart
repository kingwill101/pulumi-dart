import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_pages_args.dart';
import 'custom_pages_state.dart';

/// Accepted Permissions
///
/// - `Account Custom Pages Read`
/// - `Account Custom Pages Write`
/// - `Account Settings Read`
/// - `Account Settings Write`
/// - `Zero Trust: PII Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCustomPages = new cloudflare.CustomPages("example_custom_pages", {
///     identifier: "ratelimit_block",
///     state: "default",
///     url: "http://www.example.com",
///     zoneId: "zone_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_custom_pages = cloudflare.CustomPages("example_custom_pages",
///     identifier="ratelimit_block",
///     state="default",
///     url="http://www.example.com",
///     zone_id="zone_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCustomPages = new Cloudflare.CustomPages("example_custom_pages", new()
///     {
///         Identifier = "ratelimit_block",
///         State = "default",
///         Url = "http://www.example.com",
///         ZoneId = "zone_id",
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
/// 		_, err := cloudflare.NewCustomPages(ctx, "example_custom_pages", &cloudflare.CustomPagesArgs{
/// 			Identifier: pulumi.String("ratelimit_block"),
/// 			State:      pulumi.String("default"),
/// 			Url:        pulumi.String("http://www.example.com"),
/// 			ZoneId:     pulumi.String("zone_id"),
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
/// resource "cloudflare_custompages" "example_custom_pages" {
///   identifier = "ratelimit_block"
///   state      = "default"
///   url        = "http://www.example.com"
///   zone_id    = "zone_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CustomPages;
/// import com.pulumi.cloudflare.CustomPagesArgs;
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
///         var exampleCustomPages = new CustomPages("exampleCustomPages", CustomPagesArgs.builder()
///             .identifier("ratelimit_block")
///             .state("default")
///             .url("http://www.example.com")
///             .zoneId("zone_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomPages:
///     type: cloudflare:CustomPages
///     name: example_custom_pages
///     properties:
///       identifier: ratelimit_block
///       state: default
///       url: http://www.example.com
///       zoneId: zone_id
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/customPages:CustomPages example '<{accounts|zones}/{account_id|zone_id}>/<identifier>'
/// ```
class CustomPages extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  late final pulumi.Output<String> createdOn;
  late final pulumi.Output<String> description;
  /// Error Page Types
  /// Available values: "1000*errors", "500*errors", "basic*challenge", "country*challenge", "ip*block", "managed*challenge", "ratelimit*block", "under*attack", "waf*block", "waf*challenge".
  late final pulumi.Output<String> identifier;
  late final pulumi.Output<String> modifiedOn;
  late final pulumi.Output<String> previewTarget;
  late final pulumi.Output<List<String>> requiredTokens;
  /// The custom page state.
  /// Available values: "default", "customized".
  late final pulumi.Output<String> state;
  /// The URL associated with the custom page.
  late final pulumi.Output<String> url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [CustomPages].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomPages]. {@macro pulumi_index_custom_pages_custom_pages_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomPages(
    String name, {
    CustomPagesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customPages:CustomPages',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    identifier = registerOutput<String>('identifier');
    modifiedOn = registerOutput<String>('modifiedOn');
    previewTarget = registerOutput<String>('previewTarget');
    requiredTokens = registerOutput<List<String>>('requiredTokens', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    state = registerOutput<String>('state');
    url = registerOutput<String>('url');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [CustomPages] resource's state with the given [name] and [id].
  static CustomPages get(
    String name,
    pulumi.Input<String> id, {
    CustomPagesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomPages._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomPages._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customPages:CustomPages',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    identifier = registerOutput<String>('identifier');
    modifiedOn = registerOutput<String>('modifiedOn');
    previewTarget = registerOutput<String>('previewTarget');
    requiredTokens = registerOutput<List<String>>('requiredTokens', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.state = registerOutput<String>('state');
    url = registerOutput<String>('url');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [CustomPages] resource.
  CustomPages.reference(String urn)
    : super(
        'cloudflare:index/customPages:CustomPages',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    identifier = registerOutput<String>('identifier');
    modifiedOn = registerOutput<String>('modifiedOn');
    previewTarget = registerOutput<String>('previewTarget');
    requiredTokens = registerOutput<List<String>>('requiredTokens', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    state = registerOutput<String>('state');
    url = registerOutput<String>('url');
    zoneId = registerOutput<String?>('zoneId');
  }
}
