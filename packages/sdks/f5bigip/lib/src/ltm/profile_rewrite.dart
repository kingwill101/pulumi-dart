import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_rewrite_args.dart';
import 'profile_rewrite_state.dart';

/// `bigip_ltm_rewrite_profile` Configures ltm policies to manage traffic assigned to a virtual server
///
/// For resources should be named with their `full path`. The full path is the combination of the `partition + name` of the resource. For example `/Common/test-profile`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_profile = new f5bigip.ltm.ProfileRewrite("test-profile", {
///     name: "/Common/tf_profile",
///     defaultsFrom: "/Common/rewrite",
///     bypassLists: ["http://notouch.com"],
///     rewriteLists: ["http://some.com"],
///     rewriteMode: "portal",
///     cacheType: "cache-img-css-js",
///     caFile: "/Common/ca-bundle.crt",
///     crlFile: "none",
///     signingCert: "/Common/default.crt",
///     signingKey: "/Common/default.key",
///     splitTunneling: "true",
/// });
/// const test_profile2 = new f5bigip.ltm.ProfileRewrite("test-profile2", {
///     name: "/Common/tf_profile_translate",
///     defaultsFrom: "/Common/rewrite",
///     rewriteMode: "uri-translation",
///     requests: [{
///         insertXfwdFor: "enabled",
///         insertXfwdHost: "disabled",
///         insertXfwdProtocol: "enabled",
///         rewriteHeaders: "disabled",
///     }],
///     responses: [{
///         rewriteContent: "enabled",
///         rewriteHeaders: "disabled",
///     }],
///     cookieRules: [
///         {
///             ruleName: "cookie1",
///             clientDomain: "wrong.com",
///             clientPath: "/this/",
///             serverDomain: "wrong.com",
///             serverPath: "/this/",
///         },
///         {
///             ruleName: "cookie2",
///             clientDomain: "incorrect.com",
///             clientPath: "/this/",
///             serverDomain: "absolute.com",
///             serverPath: "/this/",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_profile = f5bigip.ltm.ProfileRewrite("test-profile",
///     name="/Common/tf_profile",
///     defaults_from="/Common/rewrite",
///     bypass_lists=["http://notouch.com"],
///     rewrite_lists=["http://some.com"],
///     rewrite_mode="portal",
///     cache_type="cache-img-css-js",
///     ca_file="/Common/ca-bundle.crt",
///     crl_file="none",
///     signing_cert="/Common/default.crt",
///     signing_key="/Common/default.key",
///     split_tunneling="true")
/// test_profile2 = f5bigip.ltm.ProfileRewrite("test-profile2",
///     name="/Common/tf_profile_translate",
///     defaults_from="/Common/rewrite",
///     rewrite_mode="uri-translation",
///     requests=[{
///         "insert_xfwd_for": "enabled",
///         "insert_xfwd_host": "disabled",
///         "insert_xfwd_protocol": "enabled",
///         "rewrite_headers": "disabled",
///     }],
///     responses=[{
///         "rewrite_content": "enabled",
///         "rewrite_headers": "disabled",
///     }],
///     cookie_rules=[
///         {
///             "rule_name": "cookie1",
///             "client_domain": "wrong.com",
///             "client_path": "/this/",
///             "server_domain": "wrong.com",
///             "server_path": "/this/",
///         },
///         {
///             "rule_name": "cookie2",
///             "client_domain": "incorrect.com",
///             "client_path": "/this/",
///             "server_domain": "absolute.com",
///             "server_path": "/this/",
///         },
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
///     var test_profile = new F5BigIP.Ltm.ProfileRewrite("test-profile", new()
///     {
///         Name = "/Common/tf_profile",
///         DefaultsFrom = "/Common/rewrite",
///         BypassLists = new[]
///         {
///             "http://notouch.com",
///         },
///         RewriteLists = new[]
///         {
///             "http://some.com",
///         },
///         RewriteMode = "portal",
///         CacheType = "cache-img-css-js",
///         CaFile = "/Common/ca-bundle.crt",
///         CrlFile = "none",
///         SigningCert = "/Common/default.crt",
///         SigningKey = "/Common/default.key",
///         SplitTunneling = "true",
///     });
///
///     var test_profile2 = new F5BigIP.Ltm.ProfileRewrite("test-profile2", new()
///     {
///         Name = "/Common/tf_profile_translate",
///         DefaultsFrom = "/Common/rewrite",
///         RewriteMode = "uri-translation",
///         Requests = new[]
///         {
///             new F5BigIP.Ltm.Inputs.ProfileRewriteRequestArgs
///             {
///                 InsertXfwdFor = "enabled",
///                 InsertXfwdHost = "disabled",
///                 InsertXfwdProtocol = "enabled",
///                 RewriteHeaders = "disabled",
///             },
///         },
///         Responses = new[]
///         {
///             new F5BigIP.Ltm.Inputs.ProfileRewriteResponseArgs
///             {
///                 RewriteContent = "enabled",
///                 RewriteHeaders = "disabled",
///             },
///         },
///         CookieRules = new[]
///         {
///             new F5BigIP.Ltm.Inputs.ProfileRewriteCookieRuleArgs
///             {
///                 RuleName = "cookie1",
///                 ClientDomain = "wrong.com",
///                 ClientPath = "/this/",
///                 ServerDomain = "wrong.com",
///                 ServerPath = "/this/",
///             },
///             new F5BigIP.Ltm.Inputs.ProfileRewriteCookieRuleArgs
///             {
///                 RuleName = "cookie2",
///                 ClientDomain = "incorrect.com",
///                 ClientPath = "/this/",
///                 ServerDomain = "absolute.com",
///                 ServerPath = "/this/",
///             },
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
/// 		_, err := ltm.NewProfileRewrite(ctx, "test-profile", &ltm.ProfileRewriteArgs{
/// 			Name:         pulumi.String("/Common/tf_profile"),
/// 			DefaultsFrom: pulumi.String("/Common/rewrite"),
/// 			BypassLists: pulumi.StringArray{
/// 				pulumi.String("http://notouch.com"),
/// 			},
/// 			RewriteLists: pulumi.StringArray{
/// 				pulumi.String("http://some.com"),
/// 			},
/// 			RewriteMode:    pulumi.String("portal"),
/// 			CacheType:      pulumi.String("cache-img-css-js"),
/// 			CaFile:         pulumi.String("/Common/ca-bundle.crt"),
/// 			CrlFile:        pulumi.String("none"),
/// 			SigningCert:    pulumi.String("/Common/default.crt"),
/// 			SigningKey:     pulumi.String("/Common/default.key"),
/// 			SplitTunneling: pulumi.String("true"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewProfileRewrite(ctx, "test-profile2", &ltm.ProfileRewriteArgs{
/// 			Name:         pulumi.String("/Common/tf_profile_translate"),
/// 			DefaultsFrom: pulumi.String("/Common/rewrite"),
/// 			RewriteMode:  pulumi.String("uri-translation"),
/// 			Requests: ltm.ProfileRewriteRequestArray{
/// 				&ltm.ProfileRewriteRequestArgs{
/// 					InsertXfwdFor:      pulumi.String("enabled"),
/// 					InsertXfwdHost:     pulumi.String("disabled"),
/// 					InsertXfwdProtocol: pulumi.String("enabled"),
/// 					RewriteHeaders:     pulumi.String("disabled"),
/// 				},
/// 			},
/// 			Responses: ltm.ProfileRewriteResponseArray{
/// 				&ltm.ProfileRewriteResponseArgs{
/// 					RewriteContent: pulumi.String("enabled"),
/// 					RewriteHeaders: pulumi.String("disabled"),
/// 				},
/// 			},
/// 			CookieRules: ltm.ProfileRewriteCookieRuleArray{
/// 				&ltm.ProfileRewriteCookieRuleArgs{
/// 					RuleName:     pulumi.String("cookie1"),
/// 					ClientDomain: pulumi.String("wrong.com"),
/// 					ClientPath:   pulumi.String("/this/"),
/// 					ServerDomain: pulumi.String("wrong.com"),
/// 					ServerPath:   pulumi.String("/this/"),
/// 				},
/// 				&ltm.ProfileRewriteCookieRuleArgs{
/// 					RuleName:     pulumi.String("cookie2"),
/// 					ClientDomain: pulumi.String("incorrect.com"),
/// 					ClientPath:   pulumi.String("/this/"),
/// 					ServerDomain: pulumi.String("absolute.com"),
/// 					ServerPath:   pulumi.String("/this/"),
/// 				},
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
/// import com.pulumi.f5bigip.ltm.ProfileRewrite;
/// import com.pulumi.f5bigip.ltm.ProfileRewriteArgs;
/// import com.pulumi.f5bigip.ltm.inputs.ProfileRewriteRequestArgs;
/// import com.pulumi.f5bigip.ltm.inputs.ProfileRewriteResponseArgs;
/// import com.pulumi.f5bigip.ltm.inputs.ProfileRewriteCookieRuleArgs;
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
///         var test_profile = new ProfileRewrite("test-profile", ProfileRewriteArgs.builder()
///             .name("/Common/tf_profile")
///             .defaultsFrom("/Common/rewrite")
///             .bypassLists("http://notouch.com")
///             .rewriteLists("http://some.com")
///             .rewriteMode("portal")
///             .cacheType("cache-img-css-js")
///             .caFile("/Common/ca-bundle.crt")
///             .crlFile("none")
///             .signingCert("/Common/default.crt")
///             .signingKey("/Common/default.key")
///             .splitTunneling("true")
///             .build());
///
///         var test_profile2 = new ProfileRewrite("test-profile2", ProfileRewriteArgs.builder()
///             .name("/Common/tf_profile_translate")
///             .defaultsFrom("/Common/rewrite")
///             .rewriteMode("uri-translation")
///             .requests(ProfileRewriteRequestArgs.builder()
///                 .insertXfwdFor("enabled")
///                 .insertXfwdHost("disabled")
///                 .insertXfwdProtocol("enabled")
///                 .rewriteHeaders("disabled")
///                 .build())
///             .responses(ProfileRewriteResponseArgs.builder()
///                 .rewriteContent("enabled")
///                 .rewriteHeaders("disabled")
///                 .build())
///             .cookieRules(
///                 ProfileRewriteCookieRuleArgs.builder()
///                     .ruleName("cookie1")
///                     .clientDomain("wrong.com")
///                     .clientPath("/this/")
///                     .serverDomain("wrong.com")
///                     .serverPath("/this/")
///                     .build(),
///                 ProfileRewriteCookieRuleArgs.builder()
///                     .ruleName("cookie2")
///                     .clientDomain("incorrect.com")
///                     .clientPath("/this/")
///                     .serverDomain("absolute.com")
///                     .serverPath("/this/")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-profile:
///     type: f5bigip:ltm:ProfileRewrite
///     properties:
///       name: /Common/tf_profile
///       defaultsFrom: /Common/rewrite
///       bypassLists:
///         - http://notouch.com
///       rewriteLists:
///         - http://some.com
///       rewriteMode: portal
///       cacheType: cache-img-css-js
///       caFile: /Common/ca-bundle.crt
///       crlFile: none
///       signingCert: /Common/default.crt
///       signingKey: /Common/default.key
///       splitTunneling: 'true'
///   test-profile2:
///     type: f5bigip:ltm:ProfileRewrite
///     properties:
///       name: /Common/tf_profile_translate
///       defaultsFrom: /Common/rewrite
///       rewriteMode: uri-translation
///       requests:
///         - insertXfwdFor: enabled
///           insertXfwdHost: disabled
///           insertXfwdProtocol: enabled
///           rewriteHeaders: disabled
///       responses:
///         - rewriteContent: enabled
///           rewriteHeaders: disabled
///       cookieRules:
///         - ruleName: cookie1
///           clientDomain: wrong.com
///           clientPath: /this/
///           serverDomain: wrong.com
///           serverPath: /this/
///         - ruleName: cookie2
///           clientDomain: incorrect.com
///           clientPath: /this/
///           serverDomain: absolute.com
///           serverPath: /this/
/// ```
class ProfileRewrite extends pulumi.CustomResource {
  /// Specifies a list of URIs to bypass inside a web page when the page is accessed using Portal Access.
  late final pulumi.Output<List<String>?> bypassLists;

  /// Specifies a CA against which to verify signed Java applets signatures. (name should be in full path which is combination of partition and CA file name )
  late final pulumi.Output<String> caFile;

  /// Specifies the type of Client caching. Valid choices are: `cache-css-js, cache-all, no-cache, cache-img-css-js`. Default value: `cache-img-css-js`
  late final pulumi.Output<String?> cacheType;

  /// Specifies the cookie rewrite rules. Block type. Each request is block type with following arguments.
  late final pulumi.Output<List<Map<String, dynamic>>?> cookieRules;

  /// Specifies a CRL against which to verify signed Java applets signature certificates. The default option is `none`.
  late final pulumi.Output<String?> crlFile;

  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `rewrite` profile.
  late final pulumi.Output<String?> defaultsFrom;

  /// Name of the rewrite profile. ( profile name should be in full path which is combination of partition and profile name )
  late final pulumi.Output<String> name;

  /// Block type. Each request is block type with following arguments.
  late final pulumi.Output<List<Map<String, dynamic>>> requests;

  /// Block type. Each request is block type with following arguments.
  late final pulumi.Output<List<Map<String, dynamic>>> responses;

  /// Specifies a list of URIs to rewrite inside a web page when the page is accessed using Portal Access.
  late final pulumi.Output<List<String>?> rewriteLists;

  /// Specifies the type of Client caching. Valid choices are: `portal, uri-translation`
  late final pulumi.Output<String> rewriteMode;

  /// Specifies a certificate to use for re-signing of signed Java applets after patching. (name should be in full path which is combination of partition and certificate name )
  late final pulumi.Output<String> signingCert;

  /// Specifies a certificate to use for re-signing of signed Java applets after patching. (name should be in full path which is combination of partition and key name )
  late final pulumi.Output<String> signingKey;

  /// Specifies a pass phrase to use for encrypting the private signing key. Since it's a sensitive entity idempotency will fail in the update call.
  late final pulumi.Output<String> signingKeyPassword;

  /// Specifies the type of Client caching. Valid choices are: `true, false`
  late final pulumi.Output<String> splitTunneling;

  /// Creates a new [ProfileRewrite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileRewrite]. {@macro pulumi_ltm_profile_rewrite_profile_rewrite_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileRewrite(
    String name, {
    ProfileRewriteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileRewrite:ProfileRewrite',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bypassLists = registerOutput<List<String>?>('bypassLists');
    caFile = registerOutput<String>('caFile');
    cacheType = registerOutput<String?>('cacheType');
    cookieRules = registerOutput<List<Map<String, dynamic>>?>('cookieRules');
    crlFile = registerOutput<String?>('crlFile');
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    this.name = registerOutput<String>('name');
    requests = registerOutput<List<Map<String, dynamic>>>('requests');
    responses = registerOutput<List<Map<String, dynamic>>>('responses');
    rewriteLists = registerOutput<List<String>?>('rewriteLists');
    rewriteMode = registerOutput<String>('rewriteMode');
    signingCert = registerOutput<String>('signingCert');
    signingKey = registerOutput<String>('signingKey');
    signingKeyPassword = registerOutput<String>('signingKeyPassword');
    splitTunneling = registerOutput<String>('splitTunneling');
  }

  /// Gets an existing [ProfileRewrite] resource's state with the given [name] and [id].
  static ProfileRewrite get(
    String name,
    pulumi.Input<String> id, {
    ProfileRewriteState? state,
  }) {
    return ProfileRewrite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileRewrite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/profileRewrite:ProfileRewrite',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bypassLists = registerOutput<List<String>?>('bypassLists');
    caFile = registerOutput<String>('caFile');
    cacheType = registerOutput<String?>('cacheType');
    cookieRules = registerOutput<List<Map<String, dynamic>>?>('cookieRules');
    crlFile = registerOutput<String?>('crlFile');
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    this.name = registerOutput<String>('name');
    requests = registerOutput<List<Map<String, dynamic>>>('requests');
    responses = registerOutput<List<Map<String, dynamic>>>('responses');
    rewriteLists = registerOutput<List<String>?>('rewriteLists');
    rewriteMode = registerOutput<String>('rewriteMode');
    signingCert = registerOutput<String>('signingCert');
    signingKey = registerOutput<String>('signingKey');
    signingKeyPassword = registerOutput<String>('signingKeyPassword');
    splitTunneling = registerOutput<String>('splitTunneling');
  }
}
