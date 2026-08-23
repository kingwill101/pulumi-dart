import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_spec.dart';
import 'app_state.dart';

/// Provides a DigitalOcean App resource.
///
/// ## Example Usage
///
/// To create an app, provide a [DigitalOcean app spec](https://docs.digitalocean.com/products/app-platform/reference/app-spec/) specifying the app's components.
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const golang_sample = new digitalocean.App("golang-sample", {spec: {
///     name: "golang-sample",
///     region: "ams",
///     services: [{
///         name: "go-service",
///         instanceCount: 1,
///         instanceSizeSlug: "apps-s-1vcpu-1gb",
///         git: {
///             repoCloneUrl: "https://github.com/digitalocean/sample-golang.git",
///             branch: "main",
///         },
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// golang_sample = digitalocean.App("golang-sample", spec={
///     "name": "golang-sample",
///     "region": "ams",
///     "services": [{
///         "name": "go-service",
///         "instance_count": 1,
///         "instance_size_slug": "apps-s-1vcpu-1gb",
///         "git": {
///             "repo_clone_url": "https://github.com/digitalocean/sample-golang.git",
///             "branch": "main",
///         },
///     }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var golang_sample = new DigitalOcean.App("golang-sample", new()
///     {
///         Spec = new DigitalOcean.Inputs.AppSpecArgs
///         {
///             Name = "golang-sample",
///             Region = "ams",
///             Services = new[]
///             {
///                 new DigitalOcean.Inputs.AppSpecServiceArgs
///                 {
///                     Name = "go-service",
///                     InstanceCount = 1,
///                     InstanceSizeSlug = "apps-s-1vcpu-1gb",
///                     Git = new DigitalOcean.Inputs.AppSpecServiceGitArgs
///                     {
///                         RepoCloneUrl = "https://github.com/digitalocean/sample-golang.git",
///                         Branch = "main",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewApp(ctx, "golang-sample", &digitalocean.AppArgs{
/// 			Spec: &digitalocean.AppSpecArgs{
/// 				Name:   pulumi.String("golang-sample"),
/// 				Region: pulumi.String("ams"),
/// 				Services: digitalocean.AppSpecServiceArray{
/// 					&digitalocean.AppSpecServiceArgs{
/// 						Name:             pulumi.String("go-service"),
/// 						InstanceCount:    pulumi.Int(1),
/// 						InstanceSizeSlug: pulumi.String("apps-s-1vcpu-1gb"),
/// 						Git: &digitalocean.AppSpecServiceGitArgs{
/// 							RepoCloneUrl: pulumi.String("https://github.com/digitalocean/sample-golang.git"),
/// 							Branch:       pulumi.String("main"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_app" "golang-sample" {
///   spec = {
///     name   = "golang-sample"
///     region = "ams"
///     services = [{
///       "name"             = "go-service"
///       "instanceCount"    = 1
///       "instanceSizeSlug" = "apps-s-1vcpu-1gb"
///       "git" = {
///         "repoCloneUrl" = "https://github.com/digitalocean/sample-golang.git"
///         "branch"       = "main"
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.App;
/// import com.pulumi.digitalocean.AppArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceGitArgs;
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
///         var golang_sample = new App("golang-sample", AppArgs.builder()
///             .spec(AppSpecArgs.builder()
///                 .name("golang-sample")
///                 .region("ams")
///                 .services(AppSpecServiceArgs.builder()
///                     .name("go-service")
///                     .instanceCount(1)
///                     .instanceSizeSlug("apps-s-1vcpu-1gb")
///                     .git(AppSpecServiceGitArgs.builder()
///                         .repoCloneUrl("https://github.com/digitalocean/sample-golang.git")
///                         .branch("main")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   golang-sample:
///     type: digitalocean:App
///     properties:
///       spec:
///         name: golang-sample
///         region: ams
///         services:
///           - name: go-service
///             instanceCount: 1
///             instanceSizeSlug: apps-s-1vcpu-1gb
///             git:
///               repoCloneUrl: https://github.com/digitalocean/sample-golang.git
///               branch: main
/// ```
///
///
/// ### Static Site Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const static_site_example = new digitalocean.App("static-site-example", {spec: {
///     name: "static-site-example",
///     region: "ams",
///     staticSites: [{
///         name: "sample-jekyll",
///         buildCommand: "bundle exec jekyll build -d ./public",
///         outputDir: "/public",
///         git: {
///             repoCloneUrl: "https://github.com/digitalocean/sample-jekyll.git",
///             branch: "main",
///         },
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// static_site_example = digitalocean.App("static-site-example", spec={
///     "name": "static-site-example",
///     "region": "ams",
///     "static_sites": [{
///         "name": "sample-jekyll",
///         "build_command": "bundle exec jekyll build -d ./public",
///         "output_dir": "/public",
///         "git": {
///             "repo_clone_url": "https://github.com/digitalocean/sample-jekyll.git",
///             "branch": "main",
///         },
///     }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var static_site_example = new DigitalOcean.App("static-site-example", new()
///     {
///         Spec = new DigitalOcean.Inputs.AppSpecArgs
///         {
///             Name = "static-site-example",
///             Region = "ams",
///             StaticSites = new[]
///             {
///                 new DigitalOcean.Inputs.AppSpecStaticSiteArgs
///                 {
///                     Name = "sample-jekyll",
///                     BuildCommand = "bundle exec jekyll build -d ./public",
///                     OutputDir = "/public",
///                     Git = new DigitalOcean.Inputs.AppSpecStaticSiteGitArgs
///                     {
///                         RepoCloneUrl = "https://github.com/digitalocean/sample-jekyll.git",
///                         Branch = "main",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewApp(ctx, "static-site-example", &digitalocean.AppArgs{
/// 			Spec: &digitalocean.AppSpecArgs{
/// 				Name:   pulumi.String("static-site-example"),
/// 				Region: pulumi.String("ams"),
/// 				StaticSites: digitalocean.AppSpecStaticSiteArray{
/// 					&digitalocean.AppSpecStaticSiteArgs{
/// 						Name:         pulumi.String("sample-jekyll"),
/// 						BuildCommand: pulumi.String("bundle exec jekyll build -d ./public"),
/// 						OutputDir:    pulumi.String("/public"),
/// 						Git: &digitalocean.AppSpecStaticSiteGitArgs{
/// 							RepoCloneUrl: pulumi.String("https://github.com/digitalocean/sample-jekyll.git"),
/// 							Branch:       pulumi.String("main"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_app" "static-site-example" {
///   spec = {
///     name   = "static-site-example"
///     region = "ams"
///     static_sites = [{
///       "name"         = "sample-jekyll"
///       "buildCommand" = "bundle exec jekyll build -d ./public"
///       "outputDir"    = "/public"
///       "git" = {
///         "repoCloneUrl" = "https://github.com/digitalocean/sample-jekyll.git"
///         "branch"       = "main"
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.App;
/// import com.pulumi.digitalocean.AppArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecStaticSiteArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecStaticSiteGitArgs;
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
///         var static_site_example = new App("static-site-example", AppArgs.builder()
///             .spec(AppSpecArgs.builder()
///                 .name("static-site-example")
///                 .region("ams")
///                 .staticSites(AppSpecStaticSiteArgs.builder()
///                     .name("sample-jekyll")
///                     .buildCommand("bundle exec jekyll build -d ./public")
///                     .outputDir("/public")
///                     .git(AppSpecStaticSiteGitArgs.builder()
///                         .repoCloneUrl("https://github.com/digitalocean/sample-jekyll.git")
///                         .branch("main")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   static-site-example:
///     type: digitalocean:App
///     properties:
///       spec:
///         name: static-site-example
///         region: ams
///         staticSites:
///           - name: sample-jekyll
///             buildCommand: bundle exec jekyll build -d ./public
///             outputDir: /public
///             git:
///               repoCloneUrl: https://github.com/digitalocean/sample-jekyll.git
///               branch: main
/// ```
///
///
/// ### Multiple Components Example
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_app" "mono-repo-example" {
///   spec = {
///     name   = "mono-repo-example"
///     region = "ams"
///     domains = [{
///       "name" = "foo.example.com"
///     }]
///     alerts = [{
///       "rule" = "DEPLOYMENT_FAILED"
///       "destinations" = {
///         "emails" = ["team.member1@org.com", "team.member2@org.com"]
///         "slackWebhooks" = [{
///           "channel" = "@user1"
///           "url"     = "https://hooks.slack.com/slack-url"
///         }]
///       }
///     }]
///     services = [{
///       "name"             = "go-api"
///       "instanceCount"    = 2
///       "instanceSizeSlug" = "apps-s-1vcpu-1gb"
///       "github" = {
///         "branch"       = "main"
///         "deployOnPush" = true
///         "repo"         = "username/repo"
///       }
///       "sourceDir" = "api/"
///       "httpPort"  = 3000
///       "alerts" = [{
///         "value"    = 75
///         "operator" = "GREATER_THAN"
///         "window"   = "TEN_MINUTES"
///         "rule"     = "CPU_UTILIZATION"
///         "destinations" = {
///           "emails" = ["team.member1@org.com", "team.member2@org.com"]
///           "slackWebhooks" = [{
///             "channel" = "@user1"
///             "url"     = "https://hooks.slack.com/slack-url"
///           }]
///         }
///       }]
///       "logDestinations" = [{
///         "name" = "MyLogs"
///         "papertrail" = {
///           "endpoint" = "syslog+tls://example.com:12345"
///         }
///       }]
///       "runCommand" = "bin/api"
///     }]
///     static_sites = [{
///       "name"         = "web"
///       "buildCommand" = "npm run build"
///       "bitbucket" = {
///         "branch"       = "main"
///         "deployOnPush" = true
///         "repo"         = "username/repo"
///       }
///     }]
///     databases = [{
///       "name"       = "starter-db"
///       "engine"     = "PG"
///       "production" = false
///     }]
///     ingress = {
///       rules = [{
///         "component" = {
///           "name" = "api"
///         }
///         "match" = {
///           "path" = {
///             "prefix" = "/api"
///           }
///         }
///         }, {
///         "component" = {
///           "name" = "web"
///         }
///         "match" = {
///           "path" = {
///             "prefix" = "/"
///           }
///         }
///       }]
///     }
///     vpcs = [{
///       "id" = "c22d8f48-4bc4-49f5-8ca0-58e7164427ac"
///     }]
///   }
/// }
/// ```
/// ```yaml
/// resources:
///   mono-repo-example:
///     type: digitalocean:App
///     properties:
///       spec:
///         name: mono-repo-example
///         region: ams
///         domains:
///           - name: foo.example.com
///         alerts:
///           - rule: DEPLOYMENT_FAILED
///             destinations:
///               emails:
///                 - team.member1@org.com
///                 - team.member2@org.com
///               slackWebhooks:
///                 - channel: '@user1'
///                   url: https://hooks.slack.com/slack-url
///         services:
///           - name: go-api
///             instanceCount: 2
///             instanceSizeSlug: apps-s-1vcpu-1gb
///             github:
///               branch: main
///               deployOnPush: true
///               repo: username/repo
///             sourceDir: api/
///             httpPort: 3000
///             alerts:
///               - value: 75
///                 operator: GREATER_THAN
///                 window: TEN_MINUTES
///                 rule: CPU_UTILIZATION
///                 destinations:
///                   emails:
///                     - team.member1@org.com
///                     - team.member2@org.com
///                   slackWebhooks:
///                     - channel: '@user1'
///                       url: https://hooks.slack.com/slack-url
///             logDestinations:
///               - name: MyLogs
///                 papertrail:
///                   endpoint: syslog+tls://example.com:12345
///             runCommand: bin/api
///         staticSites:
///           - name: web
///             buildCommand: npm run build
///             bitbucket:
///               branch: main
///               deployOnPush: true
///               repo: username/repo
///         databases:
///           - name: starter-db
///             engine: PG
///             production: false
///         ingress:
///           rules:
///             - component:
///                 name: api
///               match:
///                 path:
///                   prefix: /api
///             - component:
///                 name: web
///               match:
///                 path:
///                   prefix: /
///         vpcs:
///           - id: c22d8f48-4bc4-49f5-8ca0-58e7164427ac
/// ```
///
///
/// ### Log Destination Example with Opensearch
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const golang_sample = new digitalocean.App("golang-sample", {spec: {
///     name: "golang-sample",
///     region: "ams",
///     services: [{
///         name: "go-service",
///         instanceCount: 1,
///         instanceSizeSlug: "apps-s-1vcpu-1gb",
///         git: {
///             repoCloneUrl: "https://github.com/digitalocean/sample-golang.git",
///             branch: "main",
///         },
///         logDestinations: [{
///             name: "MyLogs",
///             openSearch: {
///                 endpoint: "https://something:1234",
///                 basicAuth: {
///                     user: "user",
///                     password: "hi",
///                 },
///             },
///         }],
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// golang_sample = digitalocean.App("golang-sample", spec={
///     "name": "golang-sample",
///     "region": "ams",
///     "services": [{
///         "name": "go-service",
///         "instance_count": 1,
///         "instance_size_slug": "apps-s-1vcpu-1gb",
///         "git": {
///             "repo_clone_url": "https://github.com/digitalocean/sample-golang.git",
///             "branch": "main",
///         },
///         "log_destinations": [{
///             "name": "MyLogs",
///             "open_search": {
///                 "endpoint": "https://something:1234",
///                 "basic_auth": {
///                     "user": "user",
///                     "password": "hi",
///                 },
///             },
///         }],
///     }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var golang_sample = new DigitalOcean.App("golang-sample", new()
///     {
///         Spec = new DigitalOcean.Inputs.AppSpecArgs
///         {
///             Name = "golang-sample",
///             Region = "ams",
///             Services = new[]
///             {
///                 new DigitalOcean.Inputs.AppSpecServiceArgs
///                 {
///                     Name = "go-service",
///                     InstanceCount = 1,
///                     InstanceSizeSlug = "apps-s-1vcpu-1gb",
///                     Git = new DigitalOcean.Inputs.AppSpecServiceGitArgs
///                     {
///                         RepoCloneUrl = "https://github.com/digitalocean/sample-golang.git",
///                         Branch = "main",
///                     },
///                     LogDestinations = new[]
///                     {
///                         new DigitalOcean.Inputs.AppSpecServiceLogDestinationArgs
///                         {
///                             Name = "MyLogs",
///                             OpenSearch = new DigitalOcean.Inputs.AppSpecServiceLogDestinationOpenSearchArgs
///                             {
///                                 Endpoint = "https://something:1234",
///                                 BasicAuth = new DigitalOcean.Inputs.AppSpecServiceLogDestinationOpenSearchBasicAuthArgs
///                                 {
///                                     User = "user",
///                                     Password = "hi",
///                                 },
///                             },
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewApp(ctx, "golang-sample", &digitalocean.AppArgs{
/// 			Spec: &digitalocean.AppSpecArgs{
/// 				Name:   pulumi.String("golang-sample"),
/// 				Region: pulumi.String("ams"),
/// 				Services: digitalocean.AppSpecServiceArray{
/// 					&digitalocean.AppSpecServiceArgs{
/// 						Name:             pulumi.String("go-service"),
/// 						InstanceCount:    pulumi.Int(1),
/// 						InstanceSizeSlug: pulumi.String("apps-s-1vcpu-1gb"),
/// 						Git: &digitalocean.AppSpecServiceGitArgs{
/// 							RepoCloneUrl: pulumi.String("https://github.com/digitalocean/sample-golang.git"),
/// 							Branch:       pulumi.String("main"),
/// 						},
/// 						LogDestinations: digitalocean.AppSpecServiceLogDestinationArray{
/// 							&digitalocean.AppSpecServiceLogDestinationArgs{
/// 								Name: pulumi.String("MyLogs"),
/// 								OpenSearch: &digitalocean.AppSpecServiceLogDestinationOpenSearchArgs{
/// 									Endpoint: pulumi.String("https://something:1234"),
/// 									BasicAuth: &digitalocean.AppSpecServiceLogDestinationOpenSearchBasicAuthArgs{
/// 										User:     pulumi.String("user"),
/// 										Password: pulumi.String("hi"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_app" "golang-sample" {
///   spec = {
///     name   = "golang-sample"
///     region = "ams"
///     services = [{
///       "name"             = "go-service"
///       "instanceCount"    = 1
///       "instanceSizeSlug" = "apps-s-1vcpu-1gb"
///       "git" = {
///         "repoCloneUrl" = "https://github.com/digitalocean/sample-golang.git"
///         "branch"       = "main"
///       }
///       "logDestinations" = [{
///         "name" = "MyLogs"
///         "openSearch" = {
///           "endpoint" = "https://something:1234"
///           "basicAuth" = {
///             "user"     = "user"
///             "password" = "hi"
///           }
///         }
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.App;
/// import com.pulumi.digitalocean.AppArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceGitArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceLogDestinationArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceLogDestinationOpenSearchArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceLogDestinationOpenSearchBasicAuthArgs;
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
///         var golang_sample = new App("golang-sample", AppArgs.builder()
///             .spec(AppSpecArgs.builder()
///                 .name("golang-sample")
///                 .region("ams")
///                 .services(AppSpecServiceArgs.builder()
///                     .name("go-service")
///                     .instanceCount(1)
///                     .instanceSizeSlug("apps-s-1vcpu-1gb")
///                     .git(AppSpecServiceGitArgs.builder()
///                         .repoCloneUrl("https://github.com/digitalocean/sample-golang.git")
///                         .branch("main")
///                         .build())
///                     .logDestinations(AppSpecServiceLogDestinationArgs.builder()
///                         .name("MyLogs")
///                         .openSearch(AppSpecServiceLogDestinationOpenSearchArgs.builder()
///                             .endpoint("https://something:1234")
///                             .basicAuth(AppSpecServiceLogDestinationOpenSearchBasicAuthArgs.builder()
///                                 .user("user")
///                                 .password("hi")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   golang-sample:
///     type: digitalocean:App
///     properties:
///       spec:
///         name: golang-sample
///         region: ams
///         services:
///           - name: go-service
///             instanceCount: 1
///             instanceSizeSlug: apps-s-1vcpu-1gb
///             git:
///               repoCloneUrl: https://github.com/digitalocean/sample-golang.git
///               branch: main
///             logDestinations:
///               - name: MyLogs
///                 openSearch:
///                   endpoint: https://something:1234
///                   basicAuth:
///                     user: user
///                     password: hi
/// ```
///
///
/// ### Edge Controls Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const golang_sample = new digitalocean.App("golang-sample", {spec: {
///     name: "golang-sample",
///     region: "ams",
///     disableEdgeCache: true,
///     disableEmailObfuscation: false,
///     enhancedThreatControlEnabled: true,
///     services: [{
///         name: "go-service",
///         instanceCount: 1,
///         instanceSizeSlug: "apps-s-1vcpu-1gb",
///         git: {
///             repoCloneUrl: "https://github.com/digitalocean/sample-golang.git",
///             branch: "main",
///         },
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// golang_sample = digitalocean.App("golang-sample", spec={
///     "name": "golang-sample",
///     "region": "ams",
///     "disable_edge_cache": True,
///     "disable_email_obfuscation": False,
///     "enhanced_threat_control_enabled": True,
///     "services": [{
///         "name": "go-service",
///         "instance_count": 1,
///         "instance_size_slug": "apps-s-1vcpu-1gb",
///         "git": {
///             "repo_clone_url": "https://github.com/digitalocean/sample-golang.git",
///             "branch": "main",
///         },
///     }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var golang_sample = new DigitalOcean.App("golang-sample", new()
///     {
///         Spec = new DigitalOcean.Inputs.AppSpecArgs
///         {
///             Name = "golang-sample",
///             Region = "ams",
///             DisableEdgeCache = true,
///             DisableEmailObfuscation = false,
///             EnhancedThreatControlEnabled = true,
///             Services = new[]
///             {
///                 new DigitalOcean.Inputs.AppSpecServiceArgs
///                 {
///                     Name = "go-service",
///                     InstanceCount = 1,
///                     InstanceSizeSlug = "apps-s-1vcpu-1gb",
///                     Git = new DigitalOcean.Inputs.AppSpecServiceGitArgs
///                     {
///                         RepoCloneUrl = "https://github.com/digitalocean/sample-golang.git",
///                         Branch = "main",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewApp(ctx, "golang-sample", &digitalocean.AppArgs{
/// 			Spec: &digitalocean.AppSpecArgs{
/// 				Name:                         pulumi.String("golang-sample"),
/// 				Region:                       pulumi.String("ams"),
/// 				DisableEdgeCache:             pulumi.Bool(true),
/// 				DisableEmailObfuscation:      pulumi.Bool(false),
/// 				EnhancedThreatControlEnabled: pulumi.Bool(true),
/// 				Services: digitalocean.AppSpecServiceArray{
/// 					&digitalocean.AppSpecServiceArgs{
/// 						Name:             pulumi.String("go-service"),
/// 						InstanceCount:    pulumi.Int(1),
/// 						InstanceSizeSlug: pulumi.String("apps-s-1vcpu-1gb"),
/// 						Git: &digitalocean.AppSpecServiceGitArgs{
/// 							RepoCloneUrl: pulumi.String("https://github.com/digitalocean/sample-golang.git"),
/// 							Branch:       pulumi.String("main"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_app" "golang-sample" {
///   spec = {
///     name                            = "golang-sample"
///     region                          = "ams"
///     disable_edge_cache              = true
///     disable_email_obfuscation       = false
///     enhanced_threat_control_enabled = true
///     services = [{
///       "name"             = "go-service"
///       "instanceCount"    = 1
///       "instanceSizeSlug" = "apps-s-1vcpu-1gb"
///       "git" = {
///         "repoCloneUrl" = "https://github.com/digitalocean/sample-golang.git"
///         "branch"       = "main"
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.App;
/// import com.pulumi.digitalocean.AppArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceGitArgs;
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
///         var golang_sample = new App("golang-sample", AppArgs.builder()
///             .spec(AppSpecArgs.builder()
///                 .name("golang-sample")
///                 .region("ams")
///                 .disableEdgeCache(true)
///                 .disableEmailObfuscation(false)
///                 .enhancedThreatControlEnabled(true)
///                 .services(AppSpecServiceArgs.builder()
///                     .name("go-service")
///                     .instanceCount(1)
///                     .instanceSizeSlug("apps-s-1vcpu-1gb")
///                     .git(AppSpecServiceGitArgs.builder()
///                         .repoCloneUrl("https://github.com/digitalocean/sample-golang.git")
///                         .branch("main")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   golang-sample:
///     type: digitalocean:App
///     properties:
///       spec:
///         name: golang-sample
///         region: ams
///         disableEdgeCache: true
///         disableEmailObfuscation: false
///         enhancedThreatControlEnabled: true
///         services:
///           - name: go-service
///             instanceCount: 1
///             instanceSizeSlug: apps-s-1vcpu-1gb
///             git:
///               repoCloneUrl: https://github.com/digitalocean/sample-golang.git
///               branch: main
/// ```
///
///
/// ### Maintenance Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const maintenance_example = new digitalocean.App("maintenance-example", {spec: {
///     name: "maintenance-example",
///     region: "ams",
///     maintenance: {
///         enabled: true,
///         offlinePageUrl: "https://example.com/maintenance.html",
///     },
///     services: [{
///         name: "go-service",
///         instanceCount: 1,
///         instanceSizeSlug: "apps-s-1vcpu-1gb",
///         git: {
///             repoCloneUrl: "https://github.com/digitalocean/sample-golang.git",
///             branch: "main",
///         },
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// maintenance_example = digitalocean.App("maintenance-example", spec={
///     "name": "maintenance-example",
///     "region": "ams",
///     "maintenance": {
///         "enabled": True,
///         "offline_page_url": "https://example.com/maintenance.html",
///     },
///     "services": [{
///         "name": "go-service",
///         "instance_count": 1,
///         "instance_size_slug": "apps-s-1vcpu-1gb",
///         "git": {
///             "repo_clone_url": "https://github.com/digitalocean/sample-golang.git",
///             "branch": "main",
///         },
///     }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var maintenance_example = new DigitalOcean.App("maintenance-example", new()
///     {
///         Spec = new DigitalOcean.Inputs.AppSpecArgs
///         {
///             Name = "maintenance-example",
///             Region = "ams",
///             Maintenance = new DigitalOcean.Inputs.AppSpecMaintenanceArgs
///             {
///                 Enabled = true,
///                 OfflinePageUrl = "https://example.com/maintenance.html",
///             },
///             Services = new[]
///             {
///                 new DigitalOcean.Inputs.AppSpecServiceArgs
///                 {
///                     Name = "go-service",
///                     InstanceCount = 1,
///                     InstanceSizeSlug = "apps-s-1vcpu-1gb",
///                     Git = new DigitalOcean.Inputs.AppSpecServiceGitArgs
///                     {
///                         RepoCloneUrl = "https://github.com/digitalocean/sample-golang.git",
///                         Branch = "main",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewApp(ctx, "maintenance-example", &digitalocean.AppArgs{
/// 			Spec: &digitalocean.AppSpecArgs{
/// 				Name:   pulumi.String("maintenance-example"),
/// 				Region: pulumi.String("ams"),
/// 				Maintenance: &digitalocean.AppSpecMaintenanceArgs{
/// 					Enabled:        pulumi.Bool(true),
/// 					OfflinePageUrl: pulumi.String("https://example.com/maintenance.html"),
/// 				},
/// 				Services: digitalocean.AppSpecServiceArray{
/// 					&digitalocean.AppSpecServiceArgs{
/// 						Name:             pulumi.String("go-service"),
/// 						InstanceCount:    pulumi.Int(1),
/// 						InstanceSizeSlug: pulumi.String("apps-s-1vcpu-1gb"),
/// 						Git: &digitalocean.AppSpecServiceGitArgs{
/// 							RepoCloneUrl: pulumi.String("https://github.com/digitalocean/sample-golang.git"),
/// 							Branch:       pulumi.String("main"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_app" "maintenance-example" {
///   spec = {
///     name   = "maintenance-example"
///     region = "ams"
///     maintenance = {
///       enabled          = true
///       offline_page_url = "https://example.com/maintenance.html"
///     }
///     services = [{
///       "name"             = "go-service"
///       "instanceCount"    = 1
///       "instanceSizeSlug" = "apps-s-1vcpu-1gb"
///       "git" = {
///         "repoCloneUrl" = "https://github.com/digitalocean/sample-golang.git"
///         "branch"       = "main"
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.App;
/// import com.pulumi.digitalocean.AppArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecMaintenanceArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceArgs;
/// import com.pulumi.digitalocean.inputs.AppSpecServiceGitArgs;
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
///         var maintenance_example = new App("maintenance-example", AppArgs.builder()
///             .spec(AppSpecArgs.builder()
///                 .name("maintenance-example")
///                 .region("ams")
///                 .maintenance(AppSpecMaintenanceArgs.builder()
///                     .enabled(true)
///                     .offlinePageUrl("https://example.com/maintenance.html")
///                     .build())
///                 .services(AppSpecServiceArgs.builder()
///                     .name("go-service")
///                     .instanceCount(1)
///                     .instanceSizeSlug("apps-s-1vcpu-1gb")
///                     .git(AppSpecServiceGitArgs.builder()
///                         .repoCloneUrl("https://github.com/digitalocean/sample-golang.git")
///                         .branch("main")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   maintenance-example:
///     type: digitalocean:App
///     properties:
///       spec:
///         name: maintenance-example
///         region: ams
///         maintenance:
///           enabled: true
///           offlinePageUrl: https://example.com/maintenance.html
///         services:
///           - name: go-service
///             instanceCount: 1
///             instanceSizeSlug: apps-s-1vcpu-1gb
///             git:
///               repoCloneUrl: https://github.com/digitalocean/sample-golang.git
///               branch: main
/// ```
///
///
/// ## Import
///
/// An app can be imported using its `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/app:App myapp fb06ad00-351f-45c8-b5eb-13523c438661
/// ```
class App extends pulumi.CustomResource {
  /// The ID the app's currently active deployment.
  late final pulumi.Output<String> activeDeploymentId;
  /// The uniform resource identifier for the app.
  late final pulumi.Output<String> appUrn;
  /// The date and time of when the app was created.
  late final pulumi.Output<String> createdAt;
  /// The dedicated egress IP addresses associated with the app.
  late final pulumi.Output<List<Map<String, dynamic>>> dedicatedIps;
  /// The default URL to access the app.
  late final pulumi.Output<String> defaultIngress;
  /// (Optional) Controls how many deployments are requested per API page when listing deployments during create/update waits. Defaults to `20`. Reduce this value (for example `5`) if you experience API timeouts when listing deployments.
  late final pulumi.Output<int?> deploymentPerPage;
  /// The live domain of the app.
  late final pulumi.Output<String> liveDomain;
  /// The live URL of the app.
  late final pulumi.Output<String> liveUrl;
  /// The ID of the project that the app is assigned to.
  ///
  /// A spec can contain multiple components.
  ///
  /// A `service` can contain:
  late final pulumi.Output<String> projectId;
  /// A DigitalOcean App spec describing the app.
  late final pulumi.Output<AppSpec?> spec;
  /// The date and time of when the app was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_index_app_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(
    String name, {
    AppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/app:App',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeDeploymentId = registerOutput<String>('activeDeploymentId');
    appUrn = registerOutput<String>('appUrn');
    createdAt = registerOutput<String>('createdAt');
    dedicatedIps = registerOutput<List<Map<String, dynamic>>>('dedicatedIps');
    defaultIngress = registerOutput<String>('defaultIngress');
    deploymentPerPage = registerOutput<int?>('deploymentPerPage');
    liveDomain = registerOutput<String>('liveDomain');
    liveUrl = registerOutput<String>('liveUrl');
    projectId = registerOutput<String>('projectId');
    spec = registerOutput<AppSpec?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [App] resource's state with the given [name] and [id].
  static App get(
    String name,
    pulumi.Input<String> id, {
    AppState? state,
  }) {
    return App._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  App._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/app:App',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeDeploymentId = registerOutput<String>('activeDeploymentId');
    appUrn = registerOutput<String>('appUrn');
    createdAt = registerOutput<String>('createdAt');
    dedicatedIps = registerOutput<List<Map<String, dynamic>>>('dedicatedIps');
    defaultIngress = registerOutput<String>('defaultIngress');
    deploymentPerPage = registerOutput<int?>('deploymentPerPage');
    liveDomain = registerOutput<String>('liveDomain');
    liveUrl = registerOutput<String>('liveUrl');
    projectId = registerOutput<String>('projectId');
    spec = registerOutput<AppSpec?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
