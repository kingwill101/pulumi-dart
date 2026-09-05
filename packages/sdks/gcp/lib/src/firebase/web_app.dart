import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_args.dart';
import 'web_app_state.dart';

/// A Google Cloud Firebase web application instance
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about WebApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/)
///
/// ## Example Usage
///
/// ### Firebase Web App Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const basicWebApp = new gcp.firebase.WebApp("basic", {
///     project: "my-project-name",
///     displayName: "Display Name Basic",
/// });
/// const basic = gcp.firebase.getWebAppConfigOutput({
///     webAppId: basicWebApp.appId,
/// });
/// const _default = new gcp.storage.Bucket("default", {
///     name: "fb-webapp-",
///     location: "US",
/// });
/// const defaultBucketObject = new gcp.storage.BucketObject("default", {
///     bucket: _default.name,
///     name: "firebase-config.json",
///     content: pulumi.jsonStringify({
///         appId: basicWebApp.appId,
///         apiKey: basic.apiKey,
///         authDomain: basic.authDomain,
///         databaseURL: std.lookupOutput({
///             map: basic,
///             key: "database_url",
///             "default": "",
///         }).result,
///         storageBucket: std.lookupOutput({
///             map: basic,
///             key: "storage_bucket",
///             "default": "",
///         }).result,
///         messagingSenderId: std.lookupOutput({
///             map: basic,
///             key: "messaging_sender_id",
///             "default": "",
///         }).result,
///         measurementId: std.lookupOutput({
///             map: basic,
///             key: "measurement_id",
///             "default": "",
///         }).result,
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// basic_web_app = gcp.firebase.WebApp("basic",
///     project="my-project-name",
///     display_name="Display Name Basic")
/// basic = gcp.firebase.get_web_app_config_output(web_app_id=basic_web_app.app_id)
/// default = gcp.storage.Bucket("default",
///     name="fb-webapp-",
///     location="US")
/// default_bucket_object = gcp.storage.BucketObject("default",
///     bucket=default.name,
///     name="firebase-config.json",
///     content=pulumi.Output.json_dumps({
///         "appId": basic_web_app.app_id,
///         "apiKey": basic.api_key,
///         "authDomain": basic.auth_domain,
///         "databaseURL": std.lookup_output(map=basic,
///             key="database_url",
///             default="").result,
///         "storageBucket": std.lookup_output(map=basic,
///             key="storage_bucket",
///             default="").result,
///         "messagingSenderId": std.lookup_output(map=basic,
///             key="messaging_sender_id",
///             default="").result,
///         "measurementId": std.lookup_output(map=basic,
///             key="measurement_id",
///             default="").result,
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicWebApp = new Gcp.Firebase.WebApp("basic", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Display Name Basic",
///     });
///
///     var basic = Gcp.Firebase.GetWebAppConfig.Invoke(new()
///     {
///         WebAppId = basicWebApp.AppId,
///     });
///
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "fb-webapp-",
///         Location = "US",
///     });
///
///     var defaultBucketObject = new Gcp.Storage.BucketObject("default", new()
///     {
///         Bucket = @default.Name,
///         Name = "firebase-config.json",
///         Content = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["appId"] = basicWebApp.AppId,
///             ["apiKey"] = basic.Apply(getWebAppConfigResult => getWebAppConfigResult.ApiKey),
///             ["authDomain"] = basic.Apply(getWebAppConfigResult => getWebAppConfigResult.AuthDomain),
///             ["databaseURL"] = Std.Lookup.Invoke(new()
///             {
///                 Map = basic,
///                 Key = "database_url",
///                 Default = "",
///             }).Apply(invoke => invoke.Result),
///             ["storageBucket"] = Std.Lookup.Invoke(new()
///             {
///                 Map = basic,
///                 Key = "storage_bucket",
///                 Default = "",
///             }).Apply(invoke => invoke.Result),
///             ["messagingSenderId"] = Std.Lookup.Invoke(new()
///             {
///                 Map = basic,
///                 Key = "messaging_sender_id",
///                 Default = "",
///             }).Apply(invoke => invoke.Result),
///             ["measurementId"] = Std.Lookup.Invoke(new()
///             {
///                 Map = basic,
///                 Key = "measurement_id",
///                 Default = "",
///             }).Apply(invoke => invoke.Result),
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicWebApp, err := firebase.NewWebApp(ctx, "basic", &firebase.WebAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Display Name Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic := firebase.GetWebAppConfigOutput(ctx, firebase.GetWebAppConfigOutputArgs{
/// 			WebAppId: basicWebApp.AppId,
/// 		}, nil)
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:     pulumi.String("fb-webapp-"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketObject(ctx, "default", &storage.BucketObjectArgs{
/// 			Bucket: _default.Name,
/// 			Name:   pulumi.String("firebase-config.json"),
/// 			Content: pulumi.All(basicWebApp.AppId, basic, std.LookupOutput(ctx, std.LookupOutputArgs{
/// 				Map:     basic,
/// 				Key:     pulumi.String("database_url"),
/// 				Default: pulumi.Any(""),
/// 			}, nil), std.LookupOutput(ctx, std.LookupOutputArgs{
/// 				Map:     basic,
/// 				Key:     pulumi.String("storage_bucket"),
/// 				Default: pulumi.Any(""),
/// 			}, nil), std.LookupOutput(ctx, std.LookupOutputArgs{
/// 				Map:     basic,
/// 				Key:     pulumi.String("messaging_sender_id"),
/// 				Default: pulumi.Any(""),
/// 			}, nil), std.LookupOutput(ctx, std.LookupOutputArgs{
/// 				Map:     basic,
/// 				Key:     pulumi.String("measurement_id"),
/// 				Default: pulumi.Any(""),
/// 			}, nil)).ApplyT(func(_args []interface{}) (string, error) {
/// 				appId := _args[0].(string)
/// 				basic := _args[1].(firebase.GetWebAppConfigResult)
/// 				invoke := _args[2].(std.LookupResult)
/// 				invoke1 := _args[3].(std.LookupResult)
/// 				invoke2 := _args[4].(std.LookupResult)
/// 				invoke3 := _args[5].(std.LookupResult)
/// 				var _zero string
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"appId":             appId,
/// 					"apiKey":            basic.ApiKey,
/// 					"authDomain":        basic.AuthDomain,
/// 					"databaseURL":       invoke.Result,
/// 					"storageBucket":     invoke1.Result,
/// 					"messagingSenderId": invoke2.Result,
/// 					"measurementId":     invoke3.Result,
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return json0, nil
/// 			}).(pulumi.StringOutput),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_firebase_getwebappconfig" "basic" {
///   web_app_id = gcp_firebase_webapp.basic.app_id
/// }
///
/// resource "gcp_firebase_webapp" "basic" {
///   project      = "my-project-name"
///   display_name = "Display Name Basic"
/// }
/// resource "gcp_storage_bucket" "default" {
///   name     = "fb-webapp-"
///   location = "US"
/// }
/// resource "gcp_storage_bucketobject" "default" {
///   bucket = gcp_storage_bucket.default.name
///   name   = "firebase-config.json"
///   content = jsonencode({
///     "appId"             = gcp_firebase_webapp.basic.app_id
///     "apiKey"            = data.gcp_firebase_getwebappconfig.basic.api_key
///     "authDomain"        = data.gcp_firebase_getwebappconfig.basic.auth_domain
///     "databaseURL"       = lookup(data.gcp_firebase_getwebappconfig.basic, "database_url", "")
///     "storageBucket"     = lookup(data.gcp_firebase_getwebappconfig.basic, "storage_bucket", "")
///     "messagingSenderId" = lookup(data.gcp_firebase_getwebappconfig.basic, "messaging_sender_id", "")
///     "measurementId"     = lookup(data.gcp_firebase_getwebappconfig.basic, "measurement_id", "")
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.WebApp;
/// import com.pulumi.gcp.firebase.WebAppArgs;
/// import com.pulumi.gcp.firebase.FirebaseFunctions;
/// import com.pulumi.gcp.firebase.inputs.GetWebAppConfigArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.LookupArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var basicWebApp = new WebApp("basicWebApp", WebAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Display Name Basic")
///             .build());
///
///         final var basic = FirebaseFunctions.getWebAppConfig(GetWebAppConfigArgs.builder()
///             .webAppId(basicWebApp.appId())
///             .build());
///
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("fb-webapp-")
///             .location("US")
///             .build());
///
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(default_.name())
///             .name("firebase-config.json")
///             .content(Output.tuple(basicWebApp.appId(), basic, StdFunctions.lookup(LookupArgs.builder()
///                 .map(basic)
///                 .key("database_url")
///                 .default_("")
///                 .build()), StdFunctions.lookup(LookupArgs.builder()
///                 .map(basic)
///                 .key("storage_bucket")
///                 .default_("")
///                 .build()), StdFunctions.lookup(LookupArgs.builder()
///                 .map(basic)
///                 .key("messaging_sender_id")
///                 .default_("")
///                 .build()), StdFunctions.lookup(LookupArgs.builder()
///                 .map(basic)
///                 .key("measurement_id")
///                 .default_("")
///                 .build())).applyValue(values -> {
///                 var appId = values.t1;
///                 var basic = values.t2;
///                 var invoke = values.t3;
///                 var invoke1 = values.t4;
///                 var invoke2 = values.t5;
///                 var invoke3 = values.t6;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty("appId", appId),
///                         jsonProperty("apiKey", basic.apiKey()),
///                         jsonProperty("authDomain", basic.authDomain()),
///                         jsonProperty("databaseURL", invoke.result()),
///                         jsonProperty("storageBucket", invoke1.result()),
///                         jsonProperty("messagingSenderId", invoke2.result()),
///                         jsonProperty("measurementId", invoke3.result())
///                     ));
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicWebApp:
///     type: gcp:firebase:WebApp
///     name: basic
///     properties:
///       project: my-project-name
///       displayName: Display Name Basic
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: fb-webapp-
///       location: US
///   defaultBucketObject:
///     type: gcp:storage:BucketObject
///     name: default
///     properties:
///       bucket: ${default.name}
///       name: firebase-config.json
///       content:
///         fn::toJSON:
///           appId: ${basicWebApp.appId}
///           apiKey: ${basic.apiKey}
///           authDomain: ${basic.authDomain}
///           databaseURL:
///             fn::invoke:
///               function: std:lookup
///               arguments:
///                 map: ${basic}
///                 key: database_url
///                 default: ""
///               return: result
///           storageBucket:
///             fn::invoke:
///               function: std:lookup
///               arguments:
///                 map: ${basic}
///                 key: storage_bucket
///                 default: ""
///               return: result
///           messagingSenderId:
///             fn::invoke:
///               function: std:lookup
///               arguments:
///                 map: ${basic}
///                 key: messaging_sender_id
///                 default: ""
///               return: result
///           measurementId:
///             fn::invoke:
///               function: std:lookup
///               arguments:
///                 map: ${basic}
///                 key: measurement_id
///                 default: ""
///               return: result
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:firebase:getWebAppConfig
///       arguments:
///         webAppId: ${basicWebApp.appId}
/// ```
///
/// ### Firebase Web App Custom Api Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const web = new gcp.projects.ApiKey("web", {
///     project: "my-project-name",
///     name: "api-key",
///     displayName: "Display Name",
///     restrictions: {
///         browserKeyRestrictions: {
///             allowedReferrers: ["*"],
///         },
///     },
/// });
/// const _default = new gcp.firebase.WebApp("default", {
///     project: "my-project-name",
///     displayName: "Display Name",
///     apiKeyId: web.uid,
///     deletionPolicy: "DELETE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// web = gcp.projects.ApiKey("web",
///     project="my-project-name",
///     name="api-key",
///     display_name="Display Name",
///     restrictions={
///         "browser_key_restrictions": {
///             "allowed_referrers": ["*"],
///         },
///     })
/// default = gcp.firebase.WebApp("default",
///     project="my-project-name",
///     display_name="Display Name",
///     api_key_id=web.uid,
///     deletion_policy="DELETE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new Gcp.Projects.ApiKey("web", new()
///     {
///         Project = "my-project-name",
///         Name = "api-key",
///         DisplayName = "Display Name",
///         Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
///         {
///             BrowserKeyRestrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsBrowserKeyRestrictionsArgs
///             {
///                 AllowedReferrers = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.Firebase.WebApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Display Name",
///         ApiKeyId = web.Uid,
///         DeletionPolicy = "DELETE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		web, err := projects.NewApiKey(ctx, "web", &projects.ApiKeyArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			Name:        pulumi.String("api-key"),
/// 			DisplayName: pulumi.String("Display Name"),
/// 			Restrictions: &projects.ApiKeyRestrictionsArgs{
/// 				BrowserKeyRestrictions: &projects.ApiKeyRestrictionsBrowserKeyRestrictionsArgs{
/// 					AllowedReferrers: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewWebApp(ctx, "default", &firebase.WebAppArgs{
/// 			Project:        pulumi.String("my-project-name"),
/// 			DisplayName:    pulumi.String("Display Name"),
/// 			ApiKeyId:       web.Uid,
/// 			DeletionPolicy: pulumi.String("DELETE"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_firebase_webapp" "default" {
///   project         = "my-project-name"
///   display_name    = "Display Name"
///   api_key_id      = gcp_projects_apikey.web.uid
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_apikey" "web" {
///   project      = "my-project-name"
///   name         = "api-key"
///   display_name = "Display Name"
///   restrictions = {
///     browser_key_restrictions = {
///       allowed_referrers = ["*"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ApiKey;
/// import com.pulumi.gcp.projects.ApiKeyArgs;
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsArgs;
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsBrowserKeyRestrictionsArgs;
/// import com.pulumi.gcp.firebase.WebApp;
/// import com.pulumi.gcp.firebase.WebAppArgs;
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
///         var web = new ApiKey("web", ApiKeyArgs.builder()
///             .project("my-project-name")
///             .name("api-key")
///             .displayName("Display Name")
///             .restrictions(ApiKeyRestrictionsArgs.builder()
///                 .browserKeyRestrictions(ApiKeyRestrictionsBrowserKeyRestrictionsArgs.builder()
///                     .allowedReferrers("*")
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new WebApp("default", WebAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Display Name")
///             .apiKeyId(web.uid())
///             .deletionPolicy("DELETE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:WebApp
///     properties:
///       project: my-project-name
///       displayName: Display Name
///       apiKeyId: ${web.uid}
///       deletionPolicy: DELETE
///   web:
///     type: gcp:projects:ApiKey
///     properties:
///       project: my-project-name
///       name: api-key
///       displayName: Display Name
///       restrictions:
///         browserKeyRestrictions:
///           allowedReferrers:
///             - '*'
/// ```
///
///
/// ## Import
///
/// WebApp can be imported using any of these accepted formats:
///
/// * `{{project}} projects/{{project}}/webApps/{{app_id}}`
/// * `projects/{{project}}/webApps/{{app_id}}`
/// * `{{project}}/{{project}}/{{app_id}}`
/// * `webApps/{{app_id}}`
/// * `{{app_id}}`
///
///
/// When using the `pulumi import` command, WebApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ terraform import google_firebase_web_app.default "{{project}} projects/{{project}}/webApps/{{app_id}}"
/// $ pulumi import gcp:firebase/webApp:WebApp default projects/{{project}}/webApps/{{app_id}}
/// $ pulumi import gcp:firebase/webApp:WebApp default {{project}}/{{project}}/{{app_id}}
/// $ pulumi import gcp:firebase/webApp:WebApp default webApps/{{app_id}}
/// $ pulumi import gcp:firebase/webApp:WebApp default {{app_id}}
/// ```
class WebApp extends pulumi.CustomResource {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the WebApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  late final pulumi.Output<String> apiKeyId;
  /// The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  late final pulumi.Output<String> appId;
  /// The URLs where the `WebApp` is hosted.
  late final pulumi.Output<List<String>> appUrls;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-assigned display name of the App.
  late final pulumi.Output<String> displayName;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/webApps/appId
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [WebApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebApp]. {@macro pulumi_firebase_web_app_web_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebApp(
    String name, {
    WebAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/webApp:WebApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    apiKeyId = registerOutput<String>('apiKeyId');
    appId = registerOutput<String>('appId');
    appUrls = registerOutput<List<String>>('appUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [WebApp] resource's state with the given [name] and [id].
  static WebApp get(
    String name,
    pulumi.Input<String> id, {
    WebAppState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/webApp:WebApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKeyId = registerOutput<String>('apiKeyId');
    appId = registerOutput<String>('appId');
    appUrls = registerOutput<List<String>>('appUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [WebApp] resource.
  WebApp.reference(String urn)
    : super(
        'gcp:firebase/webApp:WebApp',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiKeyId = registerOutput<String>('apiKeyId');
    appId = registerOutput<String>('appId');
    appUrls = registerOutput<List<String>>('appUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
