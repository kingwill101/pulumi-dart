import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_custom_page_args.dart';
import 'zero_trust_access_custom_page_state.dart';

/// Accepted Permissions
///
/// - `Access: Custom Pages Read`
/// - `Access: Custom Pages Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessCustomPage = new cloudflare.ZeroTrustAccessCustomPage("example_zero_trust_access_custom_page", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     customHtml: "<html><body><h1>Access Denied</h1></body></html>",
///     name: "name",
///     type: "identity_denied",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_custom_page = cloudflare.ZeroTrustAccessCustomPage("example_zero_trust_access_custom_page",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     custom_html="<html><body><h1>Access Denied</h1></body></html>",
///     name="name",
///     type="identity_denied")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessCustomPage = new Cloudflare.ZeroTrustAccessCustomPage("example_zero_trust_access_custom_page", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         CustomHtml = "<html><body><h1>Access Denied</h1></body></html>",
///         Name = "name",
///         Type = "identity_denied",
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
/// 		_, err := cloudflare.NewZeroTrustAccessCustomPage(ctx, "example_zero_trust_access_custom_page", &cloudflare.ZeroTrustAccessCustomPageArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			CustomHtml: pulumi.String("<html><body><h1>Access Denied</h1></body></html>"),
/// 			Name:       pulumi.String("name"),
/// 			Type:       pulumi.String("identity_denied"),
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
/// resource "cloudflare_zerotrustaccesscustompage" "example_zero_trust_access_custom_page" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   custom_html = "<html><body><h1>Access Denied</h1></body></html>"
///   name        = "name"
///   type        = "identity_denied"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessCustomPage;
/// import com.pulumi.cloudflare.ZeroTrustAccessCustomPageArgs;
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
///         var exampleZeroTrustAccessCustomPage = new ZeroTrustAccessCustomPage("exampleZeroTrustAccessCustomPage", ZeroTrustAccessCustomPageArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .customHtml("<html><body><h1>Access Denied</h1></body></html>")
///             .name("name")
///             .type("identity_denied")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessCustomPage:
///     type: cloudflare:ZeroTrustAccessCustomPage
///     name: example_zero_trust_access_custom_page
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       customHtml: <html><body><h1>Access Denied</h1></body></html>
///       name: name
///       type: identity_denied
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessCustomPage:ZeroTrustAccessCustomPage example '<account_id>/<custom_page_id>'
/// ```
class ZeroTrustAccessCustomPage extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Custom page HTML.
  late final pulumi.Output<String> customHtml;
  /// Custom page name.
  late final pulumi.Output<String> name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden".
  late final pulumi.Output<String> type;
  /// UUID.
  late final pulumi.Output<String> uid;

  /// Creates a new [ZeroTrustAccessCustomPage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessCustomPage]. {@macro pulumi_index_zero_trust_access_custom_page_zero_trust_access_custom_page_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessCustomPage(
    String name, {
    ZeroTrustAccessCustomPageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessCustomPage:ZeroTrustAccessCustomPage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    customHtml = registerOutput<String>('customHtml');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [ZeroTrustAccessCustomPage] resource's state with the given [name] and [id].
  static ZeroTrustAccessCustomPage get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessCustomPageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessCustomPage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessCustomPage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessCustomPage:ZeroTrustAccessCustomPage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    customHtml = registerOutput<String>('customHtml');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessCustomPage] resource.
  ZeroTrustAccessCustomPage.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessCustomPage:ZeroTrustAccessCustomPage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    customHtml = registerOutput<String>('customHtml');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
  }
}
