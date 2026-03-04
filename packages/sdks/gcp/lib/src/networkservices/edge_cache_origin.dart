import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_origin_args.dart';
import 'edge_cache_origin_aws_v4_authentication.dart';
import 'edge_cache_origin_flex_shielding.dart';
import 'edge_cache_origin_origin_override_action.dart';
import 'edge_cache_origin_origin_redirect.dart';
import 'edge_cache_origin_state.dart';
import 'edge_cache_origin_timeout.dart';

/// EdgeCacheOrigin represents a HTTP-reachable backend for an EdgeCacheService.
///
///
/// To get more information about EdgeCacheOrigin, see:
///
/// * [API documentation](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheOrigins)
///
/// ## Example Usage
///
/// ### Network Services Edge Cache Origin Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.EdgeCacheOrigin("default", {
///     name: "my-origin",
///     originAddress: "gs://media-edge-default",
///     description: "The default bucket for media edge test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.EdgeCacheOrigin("default",
///     name="my-origin",
///     origin_address="gs://media-edge-default",
///     description="The default bucket for media edge test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.EdgeCacheOrigin("default", new()
///     {
///         Name = "my-origin",
///         OriginAddress = "gs://media-edge-default",
///         Description = "The default bucket for media edge test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewEdgeCacheOrigin(ctx, "default", &networkservices.EdgeCacheOriginArgs{
/// 			Name:          pulumi.String("my-origin"),
/// 			OriginAddress: pulumi.String("gs://media-edge-default"),
/// 			Description:   pulumi.String("The default bucket for media edge test"),
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
/// import com.pulumi.gcp.networkservices.EdgeCacheOrigin;
/// import com.pulumi.gcp.networkservices.EdgeCacheOriginArgs;
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
///         var default_ = new EdgeCacheOrigin("default", EdgeCacheOriginArgs.builder()
///             .name("my-origin")
///             .originAddress("gs://media-edge-default")
///             .description("The default bucket for media edge test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-origin
///       originAddress: gs://media-edge-default
///       description: The default bucket for media edge test
/// ```
///
/// ### Network Services Edge Cache Origin Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fallback = new gcp.networkservices.EdgeCacheOrigin("fallback", {
///     name: "my-fallback",
///     originAddress: "fallback.example.com",
///     description: "The default bucket for media edge test",
///     maxAttempts: 3,
///     protocol: "HTTP",
///     port: 80,
///     retryConditions: [
///         "CONNECT_FAILURE",
///         "NOT_FOUND",
///         "HTTP_5XX",
///         "FORBIDDEN",
///     ],
///     timeout: {
///         connectTimeout: "10s",
///         maxAttemptsTimeout: "20s",
///         responseTimeout: "60s",
///         readTimeout: "5s",
///     },
///     originOverrideAction: {
///         urlRewrite: {
///             hostRewrite: "example.com",
///         },
///         headerAction: {
///             requestHeadersToAdds: [{
///                 headerName: "x-header",
///                 headerValue: "value",
///                 replace: true,
///             }],
///         },
///     },
///     originRedirect: {
///         redirectConditions: [
///             "MOVED_PERMANENTLY",
///             "FOUND",
///             "SEE_OTHER",
///             "TEMPORARY_REDIRECT",
///             "PERMANENT_REDIRECT",
///         ],
///     },
/// });
/// const _default = new gcp.networkservices.EdgeCacheOrigin("default", {
///     name: "my-origin",
///     originAddress: "gs://media-edge-default",
///     failoverOrigin: fallback.id,
///     description: "The default bucket for media edge test",
///     maxAttempts: 2,
///     labels: {
///         a: "b",
///     },
///     timeout: {
///         connectTimeout: "10s",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// fallback = gcp.networkservices.EdgeCacheOrigin("fallback",
///     name="my-fallback",
///     origin_address="fallback.example.com",
///     description="The default bucket for media edge test",
///     max_attempts=3,
///     protocol="HTTP",
///     port=80,
///     retry_conditions=[
///         "CONNECT_FAILURE",
///         "NOT_FOUND",
///         "HTTP_5XX",
///         "FORBIDDEN",
///     ],
///     timeout={
///         "connect_timeout": "10s",
///         "max_attempts_timeout": "20s",
///         "response_timeout": "60s",
///         "read_timeout": "5s",
///     },
///     origin_override_action={
///         "url_rewrite": {
///             "host_rewrite": "example.com",
///         },
///         "header_action": {
///             "request_headers_to_adds": [{
///                 "header_name": "x-header",
///                 "header_value": "value",
///                 "replace": True,
///             }],
///         },
///     },
///     origin_redirect={
///         "redirect_conditions": [
///             "MOVED_PERMANENTLY",
///             "FOUND",
///             "SEE_OTHER",
///             "TEMPORARY_REDIRECT",
///             "PERMANENT_REDIRECT",
///         ],
///     })
/// default = gcp.networkservices.EdgeCacheOrigin("default",
///     name="my-origin",
///     origin_address="gs://media-edge-default",
///     failover_origin=fallback.id,
///     description="The default bucket for media edge test",
///     max_attempts=2,
///     labels={
///         "a": "b",
///     },
///     timeout={
///         "connect_timeout": "10s",
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
///     var fallback = new Gcp.NetworkServices.EdgeCacheOrigin("fallback", new()
///     {
///         Name = "my-fallback",
///         OriginAddress = "fallback.example.com",
///         Description = "The default bucket for media edge test",
///         MaxAttempts = 3,
///         Protocol = "HTTP",
///         Port = 80,
///         RetryConditions = new[]
///         {
///             "CONNECT_FAILURE",
///             "NOT_FOUND",
///             "HTTP_5XX",
///             "FORBIDDEN",
///         },
///         Timeout = new Gcp.NetworkServices.Inputs.EdgeCacheOriginTimeoutArgs
///         {
///             ConnectTimeout = "10s",
///             MaxAttemptsTimeout = "20s",
///             ResponseTimeout = "60s",
///             ReadTimeout = "5s",
///         },
///         OriginOverrideAction = new Gcp.NetworkServices.Inputs.EdgeCacheOriginOriginOverrideActionArgs
///         {
///             UrlRewrite = new Gcp.NetworkServices.Inputs.EdgeCacheOriginOriginOverrideActionUrlRewriteArgs
///             {
///                 HostRewrite = "example.com",
///             },
///             HeaderAction = new Gcp.NetworkServices.Inputs.EdgeCacheOriginOriginOverrideActionHeaderActionArgs
///             {
///                 RequestHeadersToAdds = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAddArgs
///                     {
///                         HeaderName = "x-header",
///                         HeaderValue = "value",
///                         Replace = true,
///                     },
///                 },
///             },
///         },
///         OriginRedirect = new Gcp.NetworkServices.Inputs.EdgeCacheOriginOriginRedirectArgs
///         {
///             RedirectConditions = new[]
///             {
///                 "MOVED_PERMANENTLY",
///                 "FOUND",
///                 "SEE_OTHER",
///                 "TEMPORARY_REDIRECT",
///                 "PERMANENT_REDIRECT",
///             },
///         },
///     });
///
///     var @default = new Gcp.NetworkServices.EdgeCacheOrigin("default", new()
///     {
///         Name = "my-origin",
///         OriginAddress = "gs://media-edge-default",
///         FailoverOrigin = fallback.Id,
///         Description = "The default bucket for media edge test",
///         MaxAttempts = 2,
///         Labels =
///         {
///             { "a", "b" },
///         },
///         Timeout = new Gcp.NetworkServices.Inputs.EdgeCacheOriginTimeoutArgs
///         {
///             ConnectTimeout = "10s",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fallback, err := networkservices.NewEdgeCacheOrigin(ctx, "fallback", &networkservices.EdgeCacheOriginArgs{
/// 			Name:          pulumi.String("my-fallback"),
/// 			OriginAddress: pulumi.String("fallback.example.com"),
/// 			Description:   pulumi.String("The default bucket for media edge test"),
/// 			MaxAttempts:   pulumi.Int(3),
/// 			Protocol:      pulumi.String("HTTP"),
/// 			Port:          pulumi.Int(80),
/// 			RetryConditions: pulumi.StringArray{
/// 				pulumi.String("CONNECT_FAILURE"),
/// 				pulumi.String("NOT_FOUND"),
/// 				pulumi.String("HTTP_5XX"),
/// 				pulumi.String("FORBIDDEN"),
/// 			},
/// 			Timeout: &networkservices.EdgeCacheOriginTimeoutArgs{
/// 				ConnectTimeout:     pulumi.String("10s"),
/// 				MaxAttemptsTimeout: pulumi.String("20s"),
/// 				ResponseTimeout:    pulumi.String("60s"),
/// 				ReadTimeout:        pulumi.String("5s"),
/// 			},
/// 			OriginOverrideAction: &networkservices.EdgeCacheOriginOriginOverrideActionArgs{
/// 				UrlRewrite: &networkservices.EdgeCacheOriginOriginOverrideActionUrlRewriteArgs{
/// 					HostRewrite: pulumi.String("example.com"),
/// 				},
/// 				HeaderAction: &networkservices.EdgeCacheOriginOriginOverrideActionHeaderActionArgs{
/// 					RequestHeadersToAdds: networkservices.EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAddArray{
/// 						&networkservices.EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAddArgs{
/// 							HeaderName:  pulumi.String("x-header"),
/// 							HeaderValue: pulumi.String("value"),
/// 							Replace:     pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			OriginRedirect: &networkservices.EdgeCacheOriginOriginRedirectArgs{
/// 				RedirectConditions: pulumi.StringArray{
/// 					pulumi.String("MOVED_PERMANENTLY"),
/// 					pulumi.String("FOUND"),
/// 					pulumi.String("SEE_OTHER"),
/// 					pulumi.String("TEMPORARY_REDIRECT"),
/// 					pulumi.String("PERMANENT_REDIRECT"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewEdgeCacheOrigin(ctx, "default", &networkservices.EdgeCacheOriginArgs{
/// 			Name:           pulumi.String("my-origin"),
/// 			OriginAddress:  pulumi.String("gs://media-edge-default"),
/// 			FailoverOrigin: fallback.ID(),
/// 			Description:    pulumi.String("The default bucket for media edge test"),
/// 			MaxAttempts:    pulumi.Int(2),
/// 			Labels: pulumi.StringMap{
/// 				"a": pulumi.String("b"),
/// 			},
/// 			Timeout: &networkservices.EdgeCacheOriginTimeoutArgs{
/// 				ConnectTimeout: pulumi.String("10s"),
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
/// import com.pulumi.gcp.networkservices.EdgeCacheOrigin;
/// import com.pulumi.gcp.networkservices.EdgeCacheOriginArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginTimeoutArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginOriginOverrideActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginOriginOverrideActionUrlRewriteArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginOriginOverrideActionHeaderActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginOriginRedirectArgs;
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
///         var fallback = new EdgeCacheOrigin("fallback", EdgeCacheOriginArgs.builder()
///             .name("my-fallback")
///             .originAddress("fallback.example.com")
///             .description("The default bucket for media edge test")
///             .maxAttempts(3)
///             .protocol("HTTP")
///             .port(80)
///             .retryConditions(
///                 "CONNECT_FAILURE",
///                 "NOT_FOUND",
///                 "HTTP_5XX",
///                 "FORBIDDEN")
///             .timeout(EdgeCacheOriginTimeoutArgs.builder()
///                 .connectTimeout("10s")
///                 .maxAttemptsTimeout("20s")
///                 .responseTimeout("60s")
///                 .readTimeout("5s")
///                 .build())
///             .originOverrideAction(EdgeCacheOriginOriginOverrideActionArgs.builder()
///                 .urlRewrite(EdgeCacheOriginOriginOverrideActionUrlRewriteArgs.builder()
///                     .hostRewrite("example.com")
///                     .build())
///                 .headerAction(EdgeCacheOriginOriginOverrideActionHeaderActionArgs.builder()
///                     .requestHeadersToAdds(EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAddArgs.builder()
///                         .headerName("x-header")
///                         .headerValue("value")
///                         .replace(true)
///                         .build())
///                     .build())
///                 .build())
///             .originRedirect(EdgeCacheOriginOriginRedirectArgs.builder()
///                 .redirectConditions(
///                     "MOVED_PERMANENTLY",
///                     "FOUND",
///                     "SEE_OTHER",
///                     "TEMPORARY_REDIRECT",
///                     "PERMANENT_REDIRECT")
///                 .build())
///             .build());
///
///         var default_ = new EdgeCacheOrigin("default", EdgeCacheOriginArgs.builder()
///             .name("my-origin")
///             .originAddress("gs://media-edge-default")
///             .failoverOrigin(fallback.id())
///             .description("The default bucket for media edge test")
///             .maxAttempts(2)
///             .labels(Map.of("a", "b"))
///             .timeout(EdgeCacheOriginTimeoutArgs.builder()
///                 .connectTimeout("10s")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fallback:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-fallback
///       originAddress: fallback.example.com
///       description: The default bucket for media edge test
///       maxAttempts: 3
///       protocol: HTTP
///       port: 80
///       retryConditions:
///         - CONNECT_FAILURE
///         - NOT_FOUND
///         - HTTP_5XX
///         - FORBIDDEN
///       timeout:
///         connectTimeout: 10s
///         maxAttemptsTimeout: 20s
///         responseTimeout: 60s
///         readTimeout: 5s
///       originOverrideAction:
///         urlRewrite:
///           hostRewrite: example.com
///         headerAction:
///           requestHeadersToAdds:
///             - headerName: x-header
///               headerValue: value
///               replace: true
///       originRedirect:
///         redirectConditions:
///           - MOVED_PERMANENTLY
///           - FOUND
///           - SEE_OTHER
///           - TEMPORARY_REDIRECT
///           - PERMANENT_REDIRECT
///   default:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-origin
///       originAddress: gs://media-edge-default
///       failoverOrigin: ${fallback.id}
///       description: The default bucket for media edge test
///       maxAttempts: 2
///       labels:
///         a: b
///       timeout:
///         connectTimeout: 10s
/// ```
///
/// ### Network Services Edge Cache Origin V4auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-name",
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_basic = new gcp.secretmanager.SecretVersion("secret-version-basic", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
/// });
/// const _default = new gcp.networkservices.EdgeCacheOrigin("default", {
///     name: "my-origin",
///     originAddress: "gs://media-edge-default",
///     description: "The default bucket for V4 authentication",
///     awsV4Authentication: {
///         accessKeyId: "ACCESSKEYID",
///         secretAccessKeyVersion: secret_version_basic.id,
///         originRegion: "auto",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-name",
///     replication={
///         "auto": {},
///     })
/// secret_version_basic = gcp.secretmanager.SecretVersion("secret-version-basic",
///     secret=secret_basic.id,
///     secret_data="secret-data")
/// default = gcp.networkservices.EdgeCacheOrigin("default",
///     name="my-origin",
///     origin_address="gs://media-edge-default",
///     description="The default bucket for V4 authentication",
///     aws_v4_authentication={
///         "access_key_id": "ACCESSKEYID",
///         "secret_access_key_version": secret_version_basic.id,
///         "origin_region": "auto",
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
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-name",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_basic = new Gcp.SecretManager.SecretVersion("secret-version-basic", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///     });
///
///     var @default = new Gcp.NetworkServices.EdgeCacheOrigin("default", new()
///     {
///         Name = "my-origin",
///         OriginAddress = "gs://media-edge-default",
///         Description = "The default bucket for V4 authentication",
///         AwsV4Authentication = new Gcp.NetworkServices.Inputs.EdgeCacheOriginAwsV4AuthenticationArgs
///         {
///             AccessKeyId = "ACCESSKEYID",
///             SecretAccessKeyVersion = secret_version_basic.Id,
///             OriginRegion = "auto",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-name"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_version_basic, err := secretmanager.NewSecretVersion(ctx, "secret-version-basic", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret_basic.ID(),
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewEdgeCacheOrigin(ctx, "default", &networkservices.EdgeCacheOriginArgs{
/// 			Name:          pulumi.String("my-origin"),
/// 			OriginAddress: pulumi.String("gs://media-edge-default"),
/// 			Description:   pulumi.String("The default bucket for V4 authentication"),
/// 			AwsV4Authentication: &networkservices.EdgeCacheOriginAwsV4AuthenticationArgs{
/// 				AccessKeyId:            pulumi.String("ACCESSKEYID"),
/// 				SecretAccessKeyVersion: secret_version_basic.ID(),
/// 				OriginRegion:           pulumi.String("auto"),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheOrigin;
/// import com.pulumi.gcp.networkservices.EdgeCacheOriginArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheOriginAwsV4AuthenticationArgs;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-name")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_basic = new SecretVersion("secret-version-basic", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .build());
///
///         var default_ = new EdgeCacheOrigin("default", EdgeCacheOriginArgs.builder()
///             .name("my-origin")
///             .originAddress("gs://media-edge-default")
///             .description("The default bucket for V4 authentication")
///             .awsV4Authentication(EdgeCacheOriginAwsV4AuthenticationArgs.builder()
///                 .accessKeyId("ACCESSKEYID")
///                 .secretAccessKeyVersion(secret_version_basic.id())
///                 .originRegion("auto")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-name
///       replication:
///         auto: {}
///   secret-version-basic:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///   default:
///     type: gcp:networkservices:EdgeCacheOrigin
///     properties:
///       name: my-origin
///       originAddress: gs://media-edge-default
///       description: The default bucket for V4 authentication
///       awsV4Authentication:
///         accessKeyId: ACCESSKEYID
///         secretAccessKeyVersion: ${["secret-version-basic"].id}
///         originRegion: auto
/// ```
///
///
/// ## Import
///
/// EdgeCacheOrigin can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/edgeCacheOrigins/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EdgeCacheOrigin can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin default projects/{{project}}/locations/global/edgeCacheOrigins/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin default {{name}}
/// ```
class EdgeCacheOrigin extends pulumi.CustomResource {
  /// Enable AWS Signature Version 4 origin authentication.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheOriginAwsV4Authentication?>
  awsV4Authentication;

  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The Origin resource to try when the current origin cannot be reached.
  /// After maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.
  /// The value of timeout.maxAttemptsTimeout dictates the timeout across all origins.
  /// A reference to a Topic resource.
  late final pulumi.Output<String?> failoverOrigin;

  /// The FlexShieldingOptions to be used for all routes to this origin.
  /// If not set, defaults to a global caching layer in front of the origin.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheOriginFlexShielding?> flexShielding;

  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.
  /// Once maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,
  /// retryConditions and failoverOrigin to control its own cache fill failures.
  /// The total number of allowed attempts to cache fill across this and failover origins is limited to four.
  /// The total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.
  /// The last valid, non-retried response from all origins will be returned to the client.
  /// If no origin returns a valid response, an HTTP 502 will be returned to the client.
  /// Defaults to 1. Must be a value greater than 0 and less than 4.
  late final pulumi.Output<int?> maxAttempts;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;

  /// A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.
  /// This address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname
  /// When providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.
  /// If a Cloud Storage bucket is provided, it must be in the canonical "gs://bucketname" format. Other forms, such as "storage.googleapis.com", will be rejected.
  late final pulumi.Output<String> originAddress;

  /// The override actions, including url rewrites and header
  /// additions, for requests that use this origin.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheOriginOriginOverrideAction?>
  originOverrideAction;

  /// Follow redirects from this origin.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheOriginOriginRedirect?> originRedirect;

  /// The port to connect to the origin on.
  /// Defaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security & performance.
  /// When using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server.
  /// Possible values are: `HTTP2`, `HTTPS`, `HTTP`.
  late final pulumi.Output<String> protocol;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Specifies one or more retry conditions for the configured origin.
  /// If the failure mode during a connection attempt to the origin matches the configured retryCondition(s),
  /// the origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.
  /// The default retryCondition is "CONNECT_FAILURE".
  /// retryConditions apply to this origin, and not subsequent failoverOrigin(s),
  /// which may specify their own retryConditions and maxAttempts.
  /// Valid values are:
  /// - CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.
  /// - HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.
  /// - GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.
  /// - RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)
  /// - NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.
  /// - FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden).
  /// Each value may be one of: `CONNECT_FAILURE`, `HTTP_5XX`, `GATEWAY_ERROR`, `RETRIABLE_4XX`, `NOT_FOUND`, `FORBIDDEN`.
  late final pulumi.Output<List<String>> retryConditions;

  /// The connection and HTTP timeout configuration for this origin.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheOriginTimeout?> timeout;

  /// Creates a new [EdgeCacheOrigin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeCacheOrigin]. {@macro pulumi_networkservices_edge_cache_origin_edge_cache_origin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeCacheOrigin(
    String name, {
    EdgeCacheOriginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsV4Authentication = registerOutput<EdgeCacheOriginAwsV4Authentication?>(
      'awsV4Authentication',
    );
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    failoverOrigin = registerOutput<String?>('failoverOrigin');
    flexShielding = registerOutput<EdgeCacheOriginFlexShielding?>(
      'flexShielding',
    );
    labels = registerOutput<Map<String, String>?>('labels');
    maxAttempts = registerOutput<int?>('maxAttempts');
    this.name = registerOutput<String>('name');
    originAddress = registerOutput<String>('originAddress');
    originOverrideAction = registerOutput<EdgeCacheOriginOriginOverrideAction?>(
      'originOverrideAction',
    );
    originRedirect = registerOutput<EdgeCacheOriginOriginRedirect?>(
      'originRedirect',
    );
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
    protocol = registerOutput<String>('protocol');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    retryConditions = registerOutput<List<String>>('retryConditions');
    timeout = registerOutput<EdgeCacheOriginTimeout?>('timeout');
  }

  /// Gets an existing [EdgeCacheOrigin] resource's state with the given [name] and [id].
  static EdgeCacheOrigin get(
    String name,
    pulumi.Input<String> id, {
    EdgeCacheOriginState? state,
  }) {
    return EdgeCacheOrigin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EdgeCacheOrigin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsV4Authentication = registerOutput<EdgeCacheOriginAwsV4Authentication?>(
      'awsV4Authentication',
    );
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    failoverOrigin = registerOutput<String?>('failoverOrigin');
    flexShielding = registerOutput<EdgeCacheOriginFlexShielding?>(
      'flexShielding',
    );
    labels = registerOutput<Map<String, String>?>('labels');
    maxAttempts = registerOutput<int?>('maxAttempts');
    this.name = registerOutput<String>('name');
    originAddress = registerOutput<String>('originAddress');
    originOverrideAction = registerOutput<EdgeCacheOriginOriginOverrideAction?>(
      'originOverrideAction',
    );
    originRedirect = registerOutput<EdgeCacheOriginOriginRedirect?>(
      'originRedirect',
    );
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
    protocol = registerOutput<String>('protocol');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    retryConditions = registerOutput<List<String>>('retryConditions');
    timeout = registerOutput<EdgeCacheOriginTimeout?>('timeout');
  }
}
