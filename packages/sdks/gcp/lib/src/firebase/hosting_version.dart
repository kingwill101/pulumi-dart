import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_version_args.dart';
import 'hosting_version_config.dart';
import 'hosting_version_state.dart';

/// A `Version` is a configuration which determine how a site is displayed. Static files are not supported at the moment.
///
/// To get more information about Version, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/sites.versions)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Version Redirect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-id",
/// });
/// const defaultHostingVersion = new gcp.firebase.HostingVersion("default", {
///     siteId: _default.siteId,
///     config: {
///         redirects: [{
///             glob: "/google/**",
///             statusCode: 302,
///             location: "https://www.google.com",
///         }],
///     },
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     versionName: defaultHostingVersion.name,
///     message: "Redirect to Google",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-id")
/// default_hosting_version = gcp.firebase.HostingVersion("default",
///     site_id=default.site_id,
///     config={
///         "redirects": [{
///             "glob": "/google/**",
///             "status_code": 302,
///             "location": "https://www.google.com",
///         }],
///     })
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     version_name=default_hosting_version.name,
///     message="Redirect to Google")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-id",
///     });
///
///     var defaultHostingVersion = new Gcp.Firebase.HostingVersion("default", new()
///     {
///         SiteId = @default.SiteId,
///         Config = new Gcp.Firebase.Inputs.HostingVersionConfigArgs
///         {
///             Redirects = new[]
///             {
///                 new Gcp.Firebase.Inputs.HostingVersionConfigRedirectArgs
///                 {
///                     Glob = "/google/**",
///                     StatusCode = 302,
///                     Location = "https://www.google.com",
///                 },
///             },
///         },
///     });
///
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         VersionName = defaultHostingVersion.Name,
///         Message = "Redirect to Google",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHostingVersion, err := firebase.NewHostingVersion(ctx, "default", &firebase.HostingVersionArgs{
/// 			SiteId: _default.SiteId,
/// 			Config: &firebase.HostingVersionConfigArgs{
/// 				Redirects: firebase.HostingVersionConfigRedirectArray{
/// 					&firebase.HostingVersionConfigRedirectArgs{
/// 						Glob:       pulumi.String("/google/**"),
/// 						StatusCode: pulumi.Int(302),
/// 						Location:   pulumi.String("https://www.google.com"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:      _default.SiteId,
/// 			VersionName: defaultHostingVersion.Name,
/// 			Message:     pulumi.String("Redirect to Google"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.firebase.HostingVersion;
/// import com.pulumi.gcp.firebase.HostingVersionArgs;
/// import com.pulumi.gcp.firebase.inputs.HostingVersionConfigArgs;
/// import com.pulumi.gcp.firebase.HostingRelease;
/// import com.pulumi.gcp.firebase.HostingReleaseArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-id")
///             .build());
///
///         var defaultHostingVersion = new HostingVersion("defaultHostingVersion", HostingVersionArgs.builder()
///             .siteId(default_.siteId())
///             .config(HostingVersionConfigArgs.builder()
///                 .redirects(HostingVersionConfigRedirectArgs.builder()
///                     .glob("/google/**")
///                     .statusCode(302)
///                     .location("https://www.google.com")
///                     .build())
///                 .build())
///             .build());
///
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .versionName(defaultHostingVersion.name())
///             .message("Redirect to Google")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-id
///   defaultHostingVersion:
///     type: gcp:firebase:HostingVersion
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       config:
///         redirects:
///           - glob: /google/**
///             statusCode: 302
///             location: https://www.google.com
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       versionName: ${defaultHostingVersion.name}
///       message: Redirect to Google
/// ```
///
/// ### Firebasehosting Version Headers
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-id",
/// });
/// const defaultHostingVersion = new gcp.firebase.HostingVersion("default", {
///     siteId: _default.siteId,
///     config: {
///         headers: [{
///             glob: "/headers/**",
///             headers: {
///                 "my-header": "my-value",
///             },
///         }],
///     },
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     versionName: defaultHostingVersion.name,
///     message: "With custom headers",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-id")
/// default_hosting_version = gcp.firebase.HostingVersion("default",
///     site_id=default.site_id,
///     config={
///         "headers": [{
///             "glob": "/headers/**",
///             "headers": {
///                 "my-header": "my-value",
///             },
///         }],
///     })
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     version_name=default_hosting_version.name,
///     message="With custom headers")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-id",
///     });
///
///     var defaultHostingVersion = new Gcp.Firebase.HostingVersion("default", new()
///     {
///         SiteId = @default.SiteId,
///         Config = new Gcp.Firebase.Inputs.HostingVersionConfigArgs
///         {
///             Headers = new[]
///             {
///                 new Gcp.Firebase.Inputs.HostingVersionConfigHeaderArgs
///                 {
///                     Glob = "/headers/**",
///                     Headers =
///                     {
///                         { "my-header", "my-value" },
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         VersionName = defaultHostingVersion.Name,
///         Message = "With custom headers",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHostingVersion, err := firebase.NewHostingVersion(ctx, "default", &firebase.HostingVersionArgs{
/// 			SiteId: _default.SiteId,
/// 			Config: &firebase.HostingVersionConfigArgs{
/// 				Headers: firebase.HostingVersionConfigHeaderArray{
/// 					&firebase.HostingVersionConfigHeaderArgs{
/// 						Glob: pulumi.String("/headers/**"),
/// 						Headers: pulumi.StringMap{
/// 							"my-header": pulumi.String("my-value"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:      _default.SiteId,
/// 			VersionName: defaultHostingVersion.Name,
/// 			Message:     pulumi.String("With custom headers"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.firebase.HostingVersion;
/// import com.pulumi.gcp.firebase.HostingVersionArgs;
/// import com.pulumi.gcp.firebase.inputs.HostingVersionConfigArgs;
/// import com.pulumi.gcp.firebase.HostingRelease;
/// import com.pulumi.gcp.firebase.HostingReleaseArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-id")
///             .build());
///
///         var defaultHostingVersion = new HostingVersion("defaultHostingVersion", HostingVersionArgs.builder()
///             .siteId(default_.siteId())
///             .config(HostingVersionConfigArgs.builder()
///                 .headers(HostingVersionConfigHeaderArgs.builder()
///                     .glob("/headers/**")
///                     .headers(Map.of("my-header", "my-value"))
///                     .build())
///                 .build())
///             .build());
///
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .versionName(defaultHostingVersion.name())
///             .message("With custom headers")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-id
///   defaultHostingVersion:
///     type: gcp:firebase:HostingVersion
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       config:
///         headers:
///           - glob: /headers/**
///             headers:
///               my-header: my-value
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       versionName: ${defaultHostingVersion.name}
///       message: With custom headers
/// ```
///
/// ### Firebasehosting Version Headers Regex
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-id",
/// });
/// const defaultHostingVersion = new gcp.firebase.HostingVersion("default", {
///     siteId: _default.siteId,
///     config: {
///         headers: [{
///             regex: "^~/headers$",
///             headers: {
///                 "my-header": "my-value",
///             },
///         }],
///     },
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     versionName: defaultHostingVersion.name,
///     message: "With custom headers",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-id")
/// default_hosting_version = gcp.firebase.HostingVersion("default",
///     site_id=default.site_id,
///     config={
///         "headers": [{
///             "regex": "^~/headers$",
///             "headers": {
///                 "my-header": "my-value",
///             },
///         }],
///     })
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     version_name=default_hosting_version.name,
///     message="With custom headers")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-id",
///     });
///
///     var defaultHostingVersion = new Gcp.Firebase.HostingVersion("default", new()
///     {
///         SiteId = @default.SiteId,
///         Config = new Gcp.Firebase.Inputs.HostingVersionConfigArgs
///         {
///             Headers = new[]
///             {
///                 new Gcp.Firebase.Inputs.HostingVersionConfigHeaderArgs
///                 {
///                     Regex = "^~/headers$",
///                     Headers =
///                     {
///                         { "my-header", "my-value" },
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         VersionName = defaultHostingVersion.Name,
///         Message = "With custom headers",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHostingVersion, err := firebase.NewHostingVersion(ctx, "default", &firebase.HostingVersionArgs{
/// 			SiteId: _default.SiteId,
/// 			Config: &firebase.HostingVersionConfigArgs{
/// 				Headers: firebase.HostingVersionConfigHeaderArray{
/// 					&firebase.HostingVersionConfigHeaderArgs{
/// 						Regex: pulumi.String("^~/headers$"),
/// 						Headers: pulumi.StringMap{
/// 							"my-header": pulumi.String("my-value"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:      _default.SiteId,
/// 			VersionName: defaultHostingVersion.Name,
/// 			Message:     pulumi.String("With custom headers"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.firebase.HostingVersion;
/// import com.pulumi.gcp.firebase.HostingVersionArgs;
/// import com.pulumi.gcp.firebase.inputs.HostingVersionConfigArgs;
/// import com.pulumi.gcp.firebase.HostingRelease;
/// import com.pulumi.gcp.firebase.HostingReleaseArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-id")
///             .build());
///
///         var defaultHostingVersion = new HostingVersion("defaultHostingVersion", HostingVersionArgs.builder()
///             .siteId(default_.siteId())
///             .config(HostingVersionConfigArgs.builder()
///                 .headers(HostingVersionConfigHeaderArgs.builder()
///                     .regex("^~/headers$")
///                     .headers(Map.of("my-header", "my-value"))
///                     .build())
///                 .build())
///             .build());
///
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .versionName(defaultHostingVersion.name())
///             .message("With custom headers")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-id
///   defaultHostingVersion:
///     type: gcp:firebase:HostingVersion
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       config:
///         headers:
///           - regex: ^~/headers$
///             headers:
///               my-header: my-value
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       versionName: ${defaultHostingVersion.name}
///       message: With custom headers
/// ```
///
/// ### Firebasehosting Version Path
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-id",
/// });
/// const defaultHostingVersion = new gcp.firebase.HostingVersion("default", {
///     siteId: _default.siteId,
///     config: {
///         rewrites: [{
///             glob: "**",
///             path: "/index.html",
///         }],
///     },
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     versionName: defaultHostingVersion.name,
///     message: "Path Rewrite",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-id")
/// default_hosting_version = gcp.firebase.HostingVersion("default",
///     site_id=default.site_id,
///     config={
///         "rewrites": [{
///             "glob": "**",
///             "path": "/index.html",
///         }],
///     })
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     version_name=default_hosting_version.name,
///     message="Path Rewrite")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-id",
///     });
///
///     var defaultHostingVersion = new Gcp.Firebase.HostingVersion("default", new()
///     {
///         SiteId = @default.SiteId,
///         Config = new Gcp.Firebase.Inputs.HostingVersionConfigArgs
///         {
///             Rewrites = new[]
///             {
///                 new Gcp.Firebase.Inputs.HostingVersionConfigRewriteArgs
///                 {
///                     Glob = "**",
///                     Path = "/index.html",
///                 },
///             },
///         },
///     });
///
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         VersionName = defaultHostingVersion.Name,
///         Message = "Path Rewrite",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHostingVersion, err := firebase.NewHostingVersion(ctx, "default", &firebase.HostingVersionArgs{
/// 			SiteId: _default.SiteId,
/// 			Config: &firebase.HostingVersionConfigArgs{
/// 				Rewrites: firebase.HostingVersionConfigRewriteArray{
/// 					&firebase.HostingVersionConfigRewriteArgs{
/// 						Glob: pulumi.String("**"),
/// 						Path: pulumi.String("/index.html"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:      _default.SiteId,
/// 			VersionName: defaultHostingVersion.Name,
/// 			Message:     pulumi.String("Path Rewrite"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.firebase.HostingVersion;
/// import com.pulumi.gcp.firebase.HostingVersionArgs;
/// import com.pulumi.gcp.firebase.inputs.HostingVersionConfigArgs;
/// import com.pulumi.gcp.firebase.HostingRelease;
/// import com.pulumi.gcp.firebase.HostingReleaseArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-id")
///             .build());
///
///         var defaultHostingVersion = new HostingVersion("defaultHostingVersion", HostingVersionArgs.builder()
///             .siteId(default_.siteId())
///             .config(HostingVersionConfigArgs.builder()
///                 .rewrites(HostingVersionConfigRewriteArgs.builder()
///                     .glob("**")
///                     .path("/index.html")
///                     .build())
///                 .build())
///             .build());
///
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .versionName(defaultHostingVersion.name())
///             .message("Path Rewrite")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-id
///   defaultHostingVersion:
///     type: gcp:firebase:HostingVersion
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       config:
///         rewrites:
///           - glob: '**'
///             path: /index.html
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       versionName: ${defaultHostingVersion.name}
///       message: Path Rewrite
/// ```
///
/// ### Firebasehosting Version Cloud Run
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-id",
/// });
/// const defaultService = new gcp.cloudrunv2.Service("default", {
///     project: "my-project-name",
///     name: "cloud-run-service-via-hosting",
///     location: "us-central1",
///     ingress: "INGRESS_TRAFFIC_ALL",
///     template: {
///         containers: [{
///             image: "us-docker.pkg.dev/cloudrun/container/hello",
///         }],
///     },
///     deletionProtection: true,
/// });
/// const defaultHostingVersion = new gcp.firebase.HostingVersion("default", {
///     siteId: _default.siteId,
///     config: {
///         rewrites: [{
///             glob: "/hello/**",
///             run: {
///                 serviceId: defaultService.name,
///                 region: defaultService.location,
///             },
///         }],
///     },
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     versionName: defaultHostingVersion.name,
///     message: "Cloud Run Integration",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-id")
/// default_service = gcp.cloudrunv2.Service("default",
///     project="my-project-name",
///     name="cloud-run-service-via-hosting",
///     location="us-central1",
///     ingress="INGRESS_TRAFFIC_ALL",
///     template={
///         "containers": [{
///             "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         }],
///     },
///     deletion_protection=True)
/// default_hosting_version = gcp.firebase.HostingVersion("default",
///     site_id=default.site_id,
///     config={
///         "rewrites": [{
///             "glob": "/hello/**",
///             "run": {
///                 "service_id": default_service.name,
///                 "region": default_service.location,
///             },
///         }],
///     })
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     version_name=default_hosting_version.name,
///     message="Cloud Run Integration")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-id",
///     });
///
///     var defaultService = new Gcp.CloudRunV2.Service("default", new()
///     {
///         Project = "my-project-name",
///         Name = "cloud-run-service-via-hosting",
///         Location = "us-central1",
///         Ingress = "INGRESS_TRAFFIC_ALL",
///         Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
///                 {
///                     Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 },
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var defaultHostingVersion = new Gcp.Firebase.HostingVersion("default", new()
///     {
///         SiteId = @default.SiteId,
///         Config = new Gcp.Firebase.Inputs.HostingVersionConfigArgs
///         {
///             Rewrites = new[]
///             {
///                 new Gcp.Firebase.Inputs.HostingVersionConfigRewriteArgs
///                 {
///                     Glob = "/hello/**",
///                     Run = new Gcp.Firebase.Inputs.HostingVersionConfigRewriteRunArgs
///                     {
///                         ServiceId = defaultService.Name,
///                         Region = defaultService.Location,
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         VersionName = defaultHostingVersion.Name,
///         Message = "Cloud Run Integration",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultService, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			Name:     pulumi.String("cloud-run-service-via-hosting"),
/// 			Location: pulumi.String("us-central1"),
/// 			Ingress:  pulumi.String("INGRESS_TRAFFIC_ALL"),
/// 			Template: &cloudrunv2.ServiceTemplateArgs{
/// 				Containers: cloudrunv2.ServiceTemplateContainerArray{
/// 					&cloudrunv2.ServiceTemplateContainerArgs{
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					},
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHostingVersion, err := firebase.NewHostingVersion(ctx, "default", &firebase.HostingVersionArgs{
/// 			SiteId: _default.SiteId,
/// 			Config: &firebase.HostingVersionConfigArgs{
/// 				Rewrites: firebase.HostingVersionConfigRewriteArray{
/// 					&firebase.HostingVersionConfigRewriteArgs{
/// 						Glob: pulumi.String("/hello/**"),
/// 						Run: &firebase.HostingVersionConfigRewriteRunArgs{
/// 							ServiceId: defaultService.Name,
/// 							Region:    defaultService.Location,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:      _default.SiteId,
/// 			VersionName: defaultHostingVersion.Name,
/// 			Message:     pulumi.String("Cloud Run Integration"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.firebase.HostingVersion;
/// import com.pulumi.gcp.firebase.HostingVersionArgs;
/// import com.pulumi.gcp.firebase.inputs.HostingVersionConfigArgs;
/// import com.pulumi.gcp.firebase.HostingRelease;
/// import com.pulumi.gcp.firebase.HostingReleaseArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-id")
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .project("my-project-name")
///             .name("cloud-run-service-via-hosting")
///             .location("us-central1")
///             .ingress("INGRESS_TRAFFIC_ALL")
///             .template(ServiceTemplateArgs.builder()
///                 .containers(ServiceTemplateContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/hello")
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var defaultHostingVersion = new HostingVersion("defaultHostingVersion", HostingVersionArgs.builder()
///             .siteId(default_.siteId())
///             .config(HostingVersionConfigArgs.builder()
///                 .rewrites(HostingVersionConfigRewriteArgs.builder()
///                     .glob("/hello/**")
///                     .run(HostingVersionConfigRewriteRunArgs.builder()
///                         .serviceId(defaultService.name())
///                         .region(defaultService.location())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .versionName(defaultHostingVersion.name())
///             .message("Cloud Run Integration")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-id
///   defaultService:
///     type: gcp:cloudrunv2:Service
///     name: default
///     properties:
///       project: my-project-name
///       name: cloud-run-service-via-hosting
///       location: us-central1
///       ingress: INGRESS_TRAFFIC_ALL
///       template:
///         containers:
///           - image: us-docker.pkg.dev/cloudrun/container/hello
///       deletionProtection: true
///   defaultHostingVersion:
///     type: gcp:firebase:HostingVersion
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       config:
///         rewrites:
///           - glob: /hello/**
///             run:
///               serviceId: ${defaultService.name}
///               region: ${defaultService.location}
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       versionName: ${defaultHostingVersion.name}
///       message: Cloud Run Integration
/// ```
///
/// ### Firebasehosting Version Cloud Functions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-id",
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     project: "my-project-name",
///     name: "site-id-function-source",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("function-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     project: "my-project-name",
///     name: "cloud-function-via-hosting",
///     location: "us-central1",
///     description: "A Cloud Function connected to Firebase Hosing",
///     buildConfig: {
///         runtime: "nodejs22",
///         entryPoint: "helloHttp",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///     },
/// });
/// const defaultHostingVersion = new gcp.firebase.HostingVersion("default", {
///     siteId: _default.siteId,
///     config: {
///         rewrites: [{
///             glob: "/hello/**",
///             "function": _function.name,
///         }],
///     },
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     versionName: defaultHostingVersion.name,
///     message: "Cloud Functions Integration",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-id")
/// bucket = gcp.storage.Bucket("bucket",
///     project="my-project-name",
///     name="site-id-function-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("function-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     project="my-project-name",
///     name="cloud-function-via-hosting",
///     location="us-central1",
///     description="A Cloud Function connected to Firebase Hosing",
///     build_config={
///         "runtime": "nodejs22",
///         "entry_point": "helloHttp",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///     })
/// default_hosting_version = gcp.firebase.HostingVersion("default",
///     site_id=default.site_id,
///     config={
///         "rewrites": [{
///             "glob": "/hello/**",
///             "function": function.name,
///         }],
///     })
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     version_name=default_hosting_version.name,
///     message="Cloud Functions Integration")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-id",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Project = "my-project-name",
///         Name = "site-id-function-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("function-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Project = "my-project-name",
///         Name = "cloud-function-via-hosting",
///         Location = "us-central1",
///         Description = "A Cloud Function connected to Firebase Hosing",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs22",
///             EntryPoint = "helloHttp",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///         },
///     });
///
///     var defaultHostingVersion = new Gcp.Firebase.HostingVersion("default", new()
///     {
///         SiteId = @default.SiteId,
///         Config = new Gcp.Firebase.Inputs.HostingVersionConfigArgs
///         {
///             Rewrites = new[]
///             {
///                 new Gcp.Firebase.Inputs.HostingVersionConfigRewriteArgs
///                 {
///                     Glob = "/hello/**",
///                     Function = function.Name,
///                 },
///             },
///         },
///     });
///
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         VersionName = defaultHostingVersion.Name,
///         Message = "Cloud Functions Integration",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Project:                  pulumi.String("my-project-name"),
/// 			Name:                     pulumi.String("site-id-function-source"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("function-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		function, err := cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			Name:        pulumi.String("cloud-function-via-hosting"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A Cloud Function connected to Firebase Hosing"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs22"),
/// 				EntryPoint: pulumi.String("helloHttp"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHostingVersion, err := firebase.NewHostingVersion(ctx, "default", &firebase.HostingVersionArgs{
/// 			SiteId: _default.SiteId,
/// 			Config: &firebase.HostingVersionConfigArgs{
/// 				Rewrites: firebase.HostingVersionConfigRewriteArray{
/// 					&firebase.HostingVersionConfigRewriteArgs{
/// 						Glob:     pulumi.String("/hello/**"),
/// 						Function: function.Name,
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:      _default.SiteId,
/// 			VersionName: defaultHostingVersion.Name,
/// 			Message:     pulumi.String("Cloud Functions Integration"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.firebase.HostingVersion;
/// import com.pulumi.gcp.firebase.HostingVersionArgs;
/// import com.pulumi.gcp.firebase.inputs.HostingVersionConfigArgs;
/// import com.pulumi.gcp.firebase.HostingRelease;
/// import com.pulumi.gcp.firebase.HostingReleaseArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-id")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .project("my-project-name")
///             .name("site-id-function-source")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("function-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .project("my-project-name")
///             .name("cloud-function-via-hosting")
///             .location("us-central1")
///             .description("A Cloud Function connected to Firebase Hosing")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs22")
///                 .entryPoint("helloHttp")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .build())
///             .build());
///
///         var defaultHostingVersion = new HostingVersion("defaultHostingVersion", HostingVersionArgs.builder()
///             .siteId(default_.siteId())
///             .config(HostingVersionConfigArgs.builder()
///                 .rewrites(HostingVersionConfigRewriteArgs.builder()
///                     .glob("/hello/**")
///                     .function(function.name())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .versionName(defaultHostingVersion.name())
///             .message("Cloud Functions Integration")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-id
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       project: my-project-name
///       name: site-id-function-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: function-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       project: my-project-name
///       name: cloud-function-via-hosting
///       location: us-central1
///       description: A Cloud Function connected to Firebase Hosing
///       buildConfig:
///         runtime: nodejs22
///         entryPoint: helloHttp
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///   defaultHostingVersion:
///     type: gcp:firebase:HostingVersion
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       config:
///         rewrites:
///           - glob: /hello/**
///             function: ${function.name}
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       versionName: ${defaultHostingVersion.name}
///       message: Cloud Functions Integration
/// ```
///
///
/// ## Import
///
/// Version can be imported using any of these accepted formats:
///
/// * `sites/{{site_id}}/versions/{{version_id}}`
///
/// * `{{site_id}}/{{version_id}}`
///
/// When using the `pulumi import` command, Version can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingVersion:HostingVersion default sites/{{site_id}}/versions/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingVersion:HostingVersion default {{site_id}}/{{version_id}}
/// ```
class HostingVersion extends pulumi.CustomResource {
  /// The configuration for the behavior of the site. This configuration exists in the `firebase.json` file.
  /// Structure is documented below.
  late final pulumi.Output<HostingVersionConfig?> config;

  /// The fully-qualified resource name for the version, in the format:
  /// sites/SITE_ID/versions/VERSION_ID
  late final pulumi.Output<String> name;

  /// Required. The ID of the site in which to create this Version.
  late final pulumi.Output<String> siteId;

  /// The ID for the version as in sites/SITE_ID/versions/VERSION_ID
  late final pulumi.Output<String> versionId;

  /// Creates a new [HostingVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostingVersion]. {@macro pulumi_firebase_hosting_version_hosting_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostingVersion(
    String name, {
    HostingVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:firebase/hostingVersion:HostingVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<HostingVersionConfig?>('config');
    this.name = registerOutput<String>('name');
    siteId = registerOutput<String>('siteId');
    versionId = registerOutput<String>('versionId');
  }

  /// Gets an existing [HostingVersion] resource's state with the given [name] and [id].
  static HostingVersion get(
    String name,
    pulumi.Input<String> id, {
    HostingVersionState? state,
  }) {
    return HostingVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostingVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:firebase/hostingVersion:HostingVersion',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<HostingVersionConfig?>('config');
    this.name = registerOutput<String>('name');
    siteId = registerOutput<String>('siteId');
    versionId = registerOutput<String>('versionId');
  }
}
