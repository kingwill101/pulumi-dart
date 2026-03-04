import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_http_args.dart';
import 'profile_http_state.dart';

/// `f5bigip.ltm.ProfileHttp` Configures a custom profile_http for use by health checks.
///
/// For resources should be named with their "full path". The full path is the combination of the partition + name of the resource. For example /Common/my-pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const sanjose_http = new f5bigip.ltm.ProfileHttp("sanjose-http", {
///     name: "/Common/sanjose-http",
///     defaultsFrom: "/Common/http",
///     fallbackHost: "titanic",
///     fallbackStatusCodes: [
///         "400",
///         "500",
///         "300",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// sanjose_http = f5bigip.ltm.ProfileHttp("sanjose-http",
///     name="/Common/sanjose-http",
///     defaults_from="/Common/http",
///     fallback_host="titanic",
///     fallback_status_codes=[
///         "400",
///         "500",
///         "300",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sanjose_http = new F5BigIP.Ltm.ProfileHttp("sanjose-http", new()
///     {
///         Name = "/Common/sanjose-http",
///         DefaultsFrom = "/Common/http",
///         FallbackHost = "titanic",
///         FallbackStatusCodes = new[]
///         {
///             "400",
///             "500",
///             "300",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewProfileHttp(ctx, "sanjose-http", &ltm.ProfileHttpArgs{
/// 			Name:         pulumi.String("/Common/sanjose-http"),
/// 			DefaultsFrom: pulumi.String("/Common/http"),
/// 			FallbackHost: pulumi.String("titanic"),
/// 			FallbackStatusCodes: pulumi.StringArray{
/// 				pulumi.String("400"),
/// 				pulumi.String("500"),
/// 				pulumi.String("300"),
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
/// import com.pulumi.f5bigip.ltm.ProfileHttp;
/// import com.pulumi.f5bigip.ltm.ProfileHttpArgs;
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
///         var sanjose_http = new ProfileHttp("sanjose-http", ProfileHttpArgs.builder()
///             .name("/Common/sanjose-http")
///             .defaultsFrom("/Common/http")
///             .fallbackHost("titanic")
///             .fallbackStatusCodes(
///                 "400",
///                 "500",
///                 "300")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sanjose-http:
///     type: f5bigip:ltm:ProfileHttp
///     properties:
///       name: /Common/sanjose-http
///       defaultsFrom: /Common/http
///       fallbackHost: titanic
///       fallbackStatusCodes:
///         - '400'
///         - '500'
///         - '300'
/// ```
///
///
/// ## Import
///
/// BIG-IP LTM http profiles can be imported using the `name`, e.g.
///
/// bash
///
/// ```sh
/// $ pulumi import f5bigip:ltm/profileHttp:ProfileHttp test-http /Common/test-http
/// ```
class ProfileHttp extends pulumi.CustomResource {
  /// Enables or disables trusting the client IP address, and statistics from the client IP address, based on the request's XFF (X-forwarded-for) headers, if they exist.
  late final pulumi.Output<String> acceptXff;

  /// The application service to which the object belongs.
  late final pulumi.Output<String?> appService;

  /// Specifies a quoted string for the basic authentication realm. The system sends this string to a client whenever authorization fails. The default value is `none`
  late final pulumi.Output<String> basicAuthRealm;

  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;

  /// Specifies user-defined description.
  late final pulumi.Output<String> description;

  /// Type a passphrase for cookie encryption. Note: Since it's a sensitive entity idempotency will fail for it in the update call.
  late final pulumi.Output<String?> encryptCookieSecret;

  /// Type the cookie names for the system to encrypt.
  late final pulumi.Output<List<String>?> encryptCookies;

  /// See Enforcement below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> enforcements;

  /// Specifies an HTTP fallback host. HTTP redirection allows you to redirect HTTP traffic to another protocol identifier, host name, port number
  late final pulumi.Output<String?> fallbackHost;

  /// Specifies one or more three-digit status codes that can be returned by an HTTP server,that should trigger a redirection to the fallback host.
  late final pulumi.Output<List<String>?> fallbackStatusCodes;

  /// Specifies the header string that you want to erase from an HTTP request. Default is `none`.
  late final pulumi.Output<String> headErase;

  /// Specifies a quoted header string that you want to insert into an HTTP request.Default is `none`.
  late final pulumi.Output<String> headInsert;

  /// See Http_Strict_Transport_Security below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>>
  httpStrictTransportSecurities;

  /// Specifies, when enabled, that the system inserts an X-Forwarded-For header in an HTTP request with the client IP address, to use with connection pooling. The default is `Disabled`.
  late final pulumi.Output<String> insertXforwardedFor;

  /// Specifies the linear white space (LWS) separator that the system inserts when a header exceeds the maximum width you specify in the LWS Maximum Columns setting.
  late final pulumi.Output<String> lwsSeparator;

  /// Specifies the linear white space (LWS) separator that the system inserts when a header exceeds the maximum width you specify in the LWS Maximum Columns setting.
  late final pulumi.Output<int> lwsWidth;

  /// Specifies the name of the http profile,name of Profile should be full path. Full path is the combination of the `partition + profile name`,For example `/Common/test-http-profile`.
  late final pulumi.Output<String> name;

  /// Enables the system to perform HTTP header transformations for the purpose of  keeping server-side connections open. This feature requires configuration of a OneConnect profile
  late final pulumi.Output<String> oneconnectTransformations;

  /// Specifies the proxy mode for this profile: reverse, explicit, or transparent. The default is `reverse`.
  late final pulumi.Output<String> proxyType;

  /// Specifies whether the system rewrites the URIs that are part of HTTP redirect (3XX) responses. The default is `none`.
  late final pulumi.Output<String> redirectRewrite;

  /// Specifies how the system handles HTTP content that is chunked by a client. The default is `preserve`.
  late final pulumi.Output<String> requestChunking;

  /// Specifies how the system handles HTTP content that is chunked by a server. The default is `selective`.
  late final pulumi.Output<String> responseChunking;

  /// Specifies headers that the BIG-IP system allows in an HTTP response.If you are specifying more than one header, separate the headers with a blank space.
  late final pulumi.Output<List<String>> responseHeadersPermitteds;

  /// Specifies the value of the Server header in responses that the BIG-IP itself generates. The default is BigIP. In order to remove it, "none" string is to be passed. If server_agent_name is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "BigIP" explicitly.
  late final pulumi.Output<String> serverAgentName;

  /// Displays the administrative partition within which this profile resides.
  late final pulumi.Output<String?> tmPartition;

  /// Specifies the hostname to include into Via header
  late final pulumi.Output<String> viaHostName;

  /// Specifies whether to append, remove, or preserve a Via header in an HTTP request
  late final pulumi.Output<String> viaRequest;

  /// Specifies whether to append, remove, or preserve a Via header in an HTTP request
  late final pulumi.Output<String> viaResponse;

  /// Specifies alternative XFF headers instead of the default X-forwarded-for header.
  late final pulumi.Output<List<String>> xffAlternativeNames;

  /// Creates a new [ProfileHttp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileHttp]. {@macro pulumi_ltm_profile_http_profile_http_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileHttp(
    String name, {
    ProfileHttpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileHttp:ProfileHttp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptXff = registerOutput<String>('acceptXff');
    appService = registerOutput<String?>('appService');
    basicAuthRealm = registerOutput<String>('basicAuthRealm');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    description = registerOutput<String>('description');
    encryptCookieSecret = registerOutput<String?>('encryptCookieSecret');
    encryptCookies = registerOutput<List<String>?>('encryptCookies');
    enforcements = registerOutput<List<Map<String, dynamic>>>('enforcements');
    fallbackHost = registerOutput<String?>('fallbackHost');
    fallbackStatusCodes = registerOutput<List<String>?>('fallbackStatusCodes');
    headErase = registerOutput<String>('headErase');
    headInsert = registerOutput<String>('headInsert');
    httpStrictTransportSecurities = registerOutput<List<Map<String, dynamic>>>(
      'httpStrictTransportSecurities',
    );
    insertXforwardedFor = registerOutput<String>('insertXforwardedFor');
    lwsSeparator = registerOutput<String>('lwsSeparator');
    lwsWidth = registerOutput<int>('lwsWidth');
    this.name = registerOutput<String>('name');
    oneconnectTransformations = registerOutput<String>(
      'oneconnectTransformations',
    );
    proxyType = registerOutput<String>('proxyType');
    redirectRewrite = registerOutput<String>('redirectRewrite');
    requestChunking = registerOutput<String>('requestChunking');
    responseChunking = registerOutput<String>('responseChunking');
    responseHeadersPermitteds = registerOutput<List<String>>(
      'responseHeadersPermitteds',
    );
    serverAgentName = registerOutput<String>('serverAgentName');
    tmPartition = registerOutput<String?>('tmPartition');
    viaHostName = registerOutput<String>('viaHostName');
    viaRequest = registerOutput<String>('viaRequest');
    viaResponse = registerOutput<String>('viaResponse');
    xffAlternativeNames = registerOutput<List<String>>('xffAlternativeNames');
  }

  /// Gets an existing [ProfileHttp] resource's state with the given [name] and [id].
  static ProfileHttp get(
    String name,
    pulumi.Input<String> id, {
    ProfileHttpState? state,
  }) {
    return ProfileHttp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileHttp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileHttp:ProfileHttp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptXff = registerOutput<String>('acceptXff');
    appService = registerOutput<String?>('appService');
    basicAuthRealm = registerOutput<String>('basicAuthRealm');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    description = registerOutput<String>('description');
    encryptCookieSecret = registerOutput<String?>('encryptCookieSecret');
    encryptCookies = registerOutput<List<String>?>('encryptCookies');
    enforcements = registerOutput<List<Map<String, dynamic>>>('enforcements');
    fallbackHost = registerOutput<String?>('fallbackHost');
    fallbackStatusCodes = registerOutput<List<String>?>('fallbackStatusCodes');
    headErase = registerOutput<String>('headErase');
    headInsert = registerOutput<String>('headInsert');
    httpStrictTransportSecurities = registerOutput<List<Map<String, dynamic>>>(
      'httpStrictTransportSecurities',
    );
    insertXforwardedFor = registerOutput<String>('insertXforwardedFor');
    lwsSeparator = registerOutput<String>('lwsSeparator');
    lwsWidth = registerOutput<int>('lwsWidth');
    this.name = registerOutput<String>('name');
    oneconnectTransformations = registerOutput<String>(
      'oneconnectTransformations',
    );
    proxyType = registerOutput<String>('proxyType');
    redirectRewrite = registerOutput<String>('redirectRewrite');
    requestChunking = registerOutput<String>('requestChunking');
    responseChunking = registerOutput<String>('responseChunking');
    responseHeadersPermitteds = registerOutput<List<String>>(
      'responseHeadersPermitteds',
    );
    serverAgentName = registerOutput<String>('serverAgentName');
    tmPartition = registerOutput<String?>('tmPartition');
    viaHostName = registerOutput<String>('viaHostName');
    viaRequest = registerOutput<String>('viaRequest');
    viaResponse = registerOutput<String>('viaResponse');
    xffAlternativeNames = registerOutput<List<String>>('xffAlternativeNames');
  }
}
