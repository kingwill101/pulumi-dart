import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_resource_args.dart';
import 'web_resource_site.dart';
import 'web_resource_state.dart';

/// A web resource is a website or domain with verified ownership. Once your
/// ownership is verified you will be able to manage your website in the
/// [Google Search Console](https://www.google.com/webmasters/tools/).
///
/// &gt; **Note:** The verification data (DNS `TXT` record, HTML file, `meta` tag, etc.)
/// must already exist before the web resource is created, and must be deleted before
/// the web resource is destroyed. The Google Site Verification API checks that the
/// verification data exists at creation time and does not exist at destruction time
/// and will fail if the required condition is not met.
///
///
/// To get more information about WebResource, see:
///
/// * [API documentation](https://developers.google.com/site-verification/v1)
/// * How-to Guides
/// * [Getting Started](https://developers.google.com/site-verification/v1/getting_started)
///
/// ## Example Usage
///
/// ### Site Verification Domain Record
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const token = gcp.siteverification.getToken({
///     type: "INET_DOMAIN",
///     identifier: "www.example.com",
///     verificationMethod: "DNS_TXT",
/// });
/// const example = new gcp.dns.RecordSet("example", {
///     managedZone: "example.com",
///     name: "www.example.com.",
///     type: "TXT",
///     rrdatas: [token.then(token => token.token)],
///     ttl: 86400,
/// });
/// const exampleWebResource = new gcp.siteverification.WebResource("example", {
///     site: {
///         type: token.then(token => token.type),
///         identifier: token.then(token => token.identifier),
///     },
///     verificationMethod: token.then(token => token.verificationMethod),
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// token = gcp.siteverification.get_token(type="INET_DOMAIN",
///     identifier="www.example.com",
///     verification_method="DNS_TXT")
/// example = gcp.dns.RecordSet("example",
///     managed_zone="example.com",
///     name="www.example.com.",
///     type="TXT",
///     rrdatas=[token.token],
///     ttl=86400)
/// example_web_resource = gcp.siteverification.WebResource("example",
///     site={
///         "type": token.type,
///         "identifier": token.identifier,
///     },
///     verification_method=token.verification_method,
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var token = Gcp.SiteVerification.GetToken.Invoke(new()
///     {
///         Type = "INET_DOMAIN",
///         Identifier = "www.example.com",
///         VerificationMethod = "DNS_TXT",
///     });
///
///     var example = new Gcp.Dns.RecordSet("example", new()
///     {
///         ManagedZone = "example.com",
///         Name = "www.example.com.",
///         Type = "TXT",
///         Rrdatas = new[]
///         {
///             token.Apply(getTokenResult => getTokenResult.Token),
///         },
///         Ttl = 86400,
///     });
///
///     var exampleWebResource = new Gcp.SiteVerification.WebResource("example", new()
///     {
///         Site = new Gcp.SiteVerification.Inputs.WebResourceSiteArgs
///         {
///             Type = token.Apply(getTokenResult => getTokenResult.Type),
///             Identifier = token.Apply(getTokenResult => getTokenResult.Identifier),
///         },
///         VerificationMethod = token.Apply(getTokenResult => getTokenResult.VerificationMethod),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/siteverification"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		token, err := siteverification.GetToken(ctx, &siteverification.GetTokenArgs{
/// 			Type:               "INET_DOMAIN",
/// 			Identifier:         "www.example.com",
/// 			VerificationMethod: "DNS_TXT",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := dns.NewRecordSet(ctx, "example", &dns.RecordSetArgs{
/// 			ManagedZone: pulumi.String("example.com"),
/// 			Name:        pulumi.String("www.example.com."),
/// 			Type:        pulumi.String("TXT"),
/// 			Rrdatas: pulumi.StringArray{
/// 				pulumi.String(token.Token),
/// 			},
/// 			Ttl: pulumi.Int(86400),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siteverification.NewWebResource(ctx, "example", &siteverification.WebResourceArgs{
/// 			Site: &siteverification.WebResourceSiteArgs{
/// 				Type:       pulumi.String(token.Type),
/// 				Identifier: pulumi.String(token.Identifier),
/// 			},
/// 			VerificationMethod: pulumi.String(token.VerificationMethod),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// import com.pulumi.gcp.siteverification.SiteverificationFunctions;
/// import com.pulumi.gcp.siteverification.inputs.GetTokenArgs;
/// import com.pulumi.gcp.dns.RecordSet;
/// import com.pulumi.gcp.dns.RecordSetArgs;
/// import com.pulumi.gcp.siteverification.WebResource;
/// import com.pulumi.gcp.siteverification.WebResourceArgs;
/// import com.pulumi.gcp.siteverification.inputs.WebResourceSiteArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var token = SiteverificationFunctions.getToken(GetTokenArgs.builder()
///             .type("INET_DOMAIN")
///             .identifier("www.example.com")
///             .verificationMethod("DNS_TXT")
///             .build());
///
///         var example = new RecordSet("example", RecordSetArgs.builder()
///             .managedZone("example.com")
///             .name("www.example.com.")
///             .type("TXT")
///             .rrdatas(token.token())
///             .ttl(86400)
///             .build());
///
///         var exampleWebResource = new WebResource("exampleWebResource", WebResourceArgs.builder()
///             .site(WebResourceSiteArgs.builder()
///                 .type(token.type())
///                 .identifier(token.identifier())
///                 .build())
///             .verificationMethod(token.verificationMethod())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:dns:RecordSet
///     properties:
///       managedZone: example.com
///       name: www.example.com.
///       type: TXT
///       rrdatas:
///         - ${token.token}
///       ttl: 86400
///   exampleWebResource:
///     type: gcp:siteverification:WebResource
///     name: example
///     properties:
///       site:
///         type: ${token.type}
///         identifier: ${token.identifier}
///       verificationMethod: ${token.verificationMethod}
///     options:
///       dependsOn:
///         - ${example}
/// variables:
///   token:
///     fn::invoke:
///       function: gcp:siteverification:getToken
///       arguments:
///         type: INET_DOMAIN
///         identifier: www.example.com
///         verificationMethod: DNS_TXT
/// ```
///
///
/// ## Import
///
/// WebResource can be imported using any of these accepted formats:
///
/// * `webResource/{{web_resource_id}}`
///
/// * `{{web_resource_id}}`
///
/// When using the `pulumi import` command, WebResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:siteverification/webResource:WebResource default webResource/{{web_resource_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:siteverification/webResource:WebResource default {{web_resource_id}}
/// ```
class WebResource extends pulumi.CustomResource {
  /// The email addresses of all direct, verified owners of this exact property. Indirect owners —
  /// for example verified owners of the containing domain—are not included in this list.
  late final pulumi.Output<List<String>> owners;

  /// Container for the address and type of a site for which a verification token will be verified.
  /// Structure is documented below.
  late final pulumi.Output<WebResourceSite> site;

  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  late final pulumi.Output<String> verificationMethod;

  /// The string used to identify this web resource.
  late final pulumi.Output<String> webResourceId;

  /// Creates a new [WebResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebResource]. {@macro pulumi_siteverification_web_resource_web_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebResource(
    String name, {
    WebResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:siteverification/webResource:WebResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    owners = registerOutput<List<String>>('owners');
    site = registerOutput<WebResourceSite>('site');
    verificationMethod = registerOutput<String>('verificationMethod');
    webResourceId = registerOutput<String>('webResourceId');
  }

  /// Gets an existing [WebResource] resource's state with the given [name] and [id].
  static WebResource get(
    String name,
    pulumi.Input<String> id, {
    WebResourceState? state,
  }) {
    return WebResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WebResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:siteverification/webResource:WebResource',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    owners = registerOutput<List<String>>('owners');
    site = registerOutput<WebResourceSite>('site');
    verificationMethod = registerOutput<String>('verificationMethod');
    webResourceId = registerOutput<String>('webResourceId');
  }
}
