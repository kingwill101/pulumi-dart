import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_rewrite_uri_rules_args.dart';
import 'profile_rewrite_uri_rules_client.dart';
import 'profile_rewrite_uri_rules_server.dart';
import 'profile_rewrite_uri_rules_state.dart';

/// `f5bigip.ltm.ProfileRewriteUriRules` Configures uri rewrite rules attached to the ltm rewrite profile
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const tftest = new f5bigip.ltm.ProfileRewrite("tftest", {
///     name: "/Common/tf_profile",
///     defaultsFrom: "/Common/rewrite",
///     rewriteMode: "uri-translation",
/// });
/// const tftestrule1 = new f5bigip.ltm.ProfileRewriteUriRules("tftestrule1", {
///     profileName: tftest.name,
///     ruleName: "tf_rule",
///     ruleType: "request",
///     clients: [{
///         host: "www.foo.com",
///         scheme: "https",
///     }],
///     servers: [{
///         host: "www.bar.com",
///         path: "/this/",
///         scheme: "https",
///         port: "8888",
///     }],
/// });
/// const tftestrule2 = new f5bigip.ltm.ProfileRewriteUriRules("tftestrule2", {
///     profileName: tftest.name,
///     ruleName: "tf_rule2",
///     clients: [{
///         host: "www.baz.com",
///         path: "/that/",
///         scheme: "ftp",
///         port: "8888",
///     }],
///     servers: [{
///         host: "www.buz.com",
///         path: "/those/",
///         scheme: "ftps",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// tftest = f5bigip.ltm.ProfileRewrite("tftest",
///     name="/Common/tf_profile",
///     defaults_from="/Common/rewrite",
///     rewrite_mode="uri-translation")
/// tftestrule1 = f5bigip.ltm.ProfileRewriteUriRules("tftestrule1",
///     profile_name=tftest.name,
///     rule_name="tf_rule",
///     rule_type="request",
///     clients=[{
///         "host": "www.foo.com",
///         "scheme": "https",
///     }],
///     servers=[{
///         "host": "www.bar.com",
///         "path": "/this/",
///         "scheme": "https",
///         "port": "8888",
///     }])
/// tftestrule2 = f5bigip.ltm.ProfileRewriteUriRules("tftestrule2",
///     profile_name=tftest.name,
///     rule_name="tf_rule2",
///     clients=[{
///         "host": "www.baz.com",
///         "path": "/that/",
///         "scheme": "ftp",
///         "port": "8888",
///     }],
///     servers=[{
///         "host": "www.buz.com",
///         "path": "/those/",
///         "scheme": "ftps",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tftest = new F5BigIP.Ltm.ProfileRewrite("tftest", new()
///     {
///         Name = "/Common/tf_profile",
///         DefaultsFrom = "/Common/rewrite",
///         RewriteMode = "uri-translation",
///     });
///
///     var tftestrule1 = new F5BigIP.Ltm.ProfileRewriteUriRules("tftestrule1", new()
///     {
///         ProfileName = tftest.Name,
///         RuleName = "tf_rule",
///         RuleType = "request",
///         Clients = new[]
///         {
///             new F5BigIP.Ltm.Inputs.ProfileRewriteUriRulesClientArgs
///             {
///                 Host = "www.foo.com",
///                 Scheme = "https",
///             },
///         },
///         Servers = new[]
///         {
///             new F5BigIP.Ltm.Inputs.ProfileRewriteUriRulesServerArgs
///             {
///                 Host = "www.bar.com",
///                 Path = "/this/",
///                 Scheme = "https",
///                 Port = "8888",
///             },
///         },
///     });
///
///     var tftestrule2 = new F5BigIP.Ltm.ProfileRewriteUriRules("tftestrule2", new()
///     {
///         ProfileName = tftest.Name,
///         RuleName = "tf_rule2",
///         Clients = new[]
///         {
///             new F5BigIP.Ltm.Inputs.ProfileRewriteUriRulesClientArgs
///             {
///                 Host = "www.baz.com",
///                 Path = "/that/",
///                 Scheme = "ftp",
///                 Port = "8888",
///             },
///         },
///         Servers = new[]
///         {
///             new F5BigIP.Ltm.Inputs.ProfileRewriteUriRulesServerArgs
///             {
///                 Host = "www.buz.com",
///                 Path = "/those/",
///                 Scheme = "ftps",
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
/// 		tftest, err := ltm.NewProfileRewrite(ctx, "tftest", &ltm.ProfileRewriteArgs{
/// 			Name:         pulumi.String("/Common/tf_profile"),
/// 			DefaultsFrom: pulumi.String("/Common/rewrite"),
/// 			RewriteMode:  pulumi.String("uri-translation"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewProfileRewriteUriRules(ctx, "tftestrule1", &ltm.ProfileRewriteUriRulesArgs{
/// 			ProfileName: tftest.Name,
/// 			RuleName:    pulumi.String("tf_rule"),
/// 			RuleType:    pulumi.String("request"),
/// 			Clients: ltm.ProfileRewriteUriRulesClientArray{
/// 				&ltm.ProfileRewriteUriRulesClientArgs{
/// 					Host:   pulumi.String("www.foo.com"),
/// 					Scheme: pulumi.String("https"),
/// 				},
/// 			},
/// 			Servers: ltm.ProfileRewriteUriRulesServerArray{
/// 				&ltm.ProfileRewriteUriRulesServerArgs{
/// 					Host:   pulumi.String("www.bar.com"),
/// 					Path:   pulumi.String("/this/"),
/// 					Scheme: pulumi.String("https"),
/// 					Port:   pulumi.String("8888"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewProfileRewriteUriRules(ctx, "tftestrule2", &ltm.ProfileRewriteUriRulesArgs{
/// 			ProfileName: tftest.Name,
/// 			RuleName:    pulumi.String("tf_rule2"),
/// 			Clients: ltm.ProfileRewriteUriRulesClientArray{
/// 				&ltm.ProfileRewriteUriRulesClientArgs{
/// 					Host:   pulumi.String("www.baz.com"),
/// 					Path:   pulumi.String("/that/"),
/// 					Scheme: pulumi.String("ftp"),
/// 					Port:   pulumi.String("8888"),
/// 				},
/// 			},
/// 			Servers: ltm.ProfileRewriteUriRulesServerArray{
/// 				&ltm.ProfileRewriteUriRulesServerArgs{
/// 					Host:   pulumi.String("www.buz.com"),
/// 					Path:   pulumi.String("/those/"),
/// 					Scheme: pulumi.String("ftps"),
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
/// import com.pulumi.f5bigip.ltm.ProfileRewriteUriRules;
/// import com.pulumi.f5bigip.ltm.ProfileRewriteUriRulesArgs;
/// import com.pulumi.f5bigip.ltm.inputs.ProfileRewriteUriRulesClientArgs;
/// import com.pulumi.f5bigip.ltm.inputs.ProfileRewriteUriRulesServerArgs;
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
///         var tftest = new ProfileRewrite("tftest", ProfileRewriteArgs.builder()
///             .name("/Common/tf_profile")
///             .defaultsFrom("/Common/rewrite")
///             .rewriteMode("uri-translation")
///             .build());
///
///         var tftestrule1 = new ProfileRewriteUriRules("tftestrule1", ProfileRewriteUriRulesArgs.builder()
///             .profileName(tftest.name())
///             .ruleName("tf_rule")
///             .ruleType("request")
///             .clients(ProfileRewriteUriRulesClientArgs.builder()
///                 .host("www.foo.com")
///                 .scheme("https")
///                 .build())
///             .servers(ProfileRewriteUriRulesServerArgs.builder()
///                 .host("www.bar.com")
///                 .path("/this/")
///                 .scheme("https")
///                 .port("8888")
///                 .build())
///             .build());
///
///         var tftestrule2 = new ProfileRewriteUriRules("tftestrule2", ProfileRewriteUriRulesArgs.builder()
///             .profileName(tftest.name())
///             .ruleName("tf_rule2")
///             .clients(ProfileRewriteUriRulesClientArgs.builder()
///                 .host("www.baz.com")
///                 .path("/that/")
///                 .scheme("ftp")
///                 .port("8888")
///                 .build())
///             .servers(ProfileRewriteUriRulesServerArgs.builder()
///                 .host("www.buz.com")
///                 .path("/those/")
///                 .scheme("ftps")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tftest:
///     type: f5bigip:ltm:ProfileRewrite
///     properties:
///       name: /Common/tf_profile
///       defaultsFrom: /Common/rewrite
///       rewriteMode: uri-translation
///   tftestrule1:
///     type: f5bigip:ltm:ProfileRewriteUriRules
///     properties:
///       profileName: ${tftest.name}
///       ruleName: tf_rule
///       ruleType: request
///       clients:
///         - host: www.foo.com
///           scheme: https
///       servers:
///         - host: www.bar.com
///           path: /this/
///           scheme: https
///           port: '8888'
///   tftestrule2:
///     type: f5bigip:ltm:ProfileRewriteUriRules
///     properties:
///       profileName: ${tftest.name}
///       ruleName: tf_rule2
///       clients:
///         - host: www.baz.com
///           path: /that/
///           scheme: ftp
///           port: '8888'
///       servers:
///         - host: www.buz.com
///           path: /those/
///           scheme: ftps
/// ```
class ProfileRewriteUriRules extends pulumi.CustomResource {
  /// Block type. Each request is block type with following arguments.
  late final pulumi.Output<List<ProfileRewriteUriRulesClient>> clients;
  /// Name of the rewrite profile. ( policy name should be in full path which is combination of partition and policy name )
  late final pulumi.Output<String> profileName;
  /// Specifies the name of the uri rule.
  late final pulumi.Output<String> ruleName;
  /// Specifies the type of the uri rule. Valid choices are: `request, response, both`. Default value is: `both`
  late final pulumi.Output<String?> ruleType;
  /// Block type. Each request is block type with following arguments.
  late final pulumi.Output<List<ProfileRewriteUriRulesServer>> servers;

  /// Creates a new [ProfileRewriteUriRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileRewriteUriRules]. {@macro pulumi_ltm_profile_rewrite_uri_rules_profile_rewrite_uri_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileRewriteUriRules(
    String name, {
    ProfileRewriteUriRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileRewriteUriRules:ProfileRewriteUriRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clients = registerOutput<List<ProfileRewriteUriRulesClient>>('clients');
    this.profileName = registerOutput<String>('profileName');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleType = registerOutput<String?>('ruleType');
    this.servers = registerOutput<List<ProfileRewriteUriRulesServer>>('servers');
  }

  /// Gets an existing [ProfileRewriteUriRules] resource's state with the given [name] and [id].
  static ProfileRewriteUriRules get(
    String name,
    pulumi.Input<String> id, {
    ProfileRewriteUriRulesState? state,
  }) {
    return ProfileRewriteUriRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileRewriteUriRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileRewriteUriRules:ProfileRewriteUriRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clients = registerOutput<List<ProfileRewriteUriRulesClient>>('clients');
    this.profileName = registerOutput<String>('profileName');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleType = registerOutput<String?>('ruleType');
    this.servers = registerOutput<List<ProfileRewriteUriRulesServer>>('servers');
  }
}
