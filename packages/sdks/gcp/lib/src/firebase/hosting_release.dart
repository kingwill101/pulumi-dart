import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_release_args.dart';
import 'hosting_release_state.dart';

/// A Release is a particular collection of configurations that is set to be public at a particular time.
///
/// To get more information about Release, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/sites.releases)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Release In Site
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
///     message: "Test release",
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
///     message="Test release")
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
///         Message = "Test release",
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
/// 			Message:     pulumi.String("Test release"),
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
///             .message("Test release")
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
///       message: Test release
/// ```
///
/// ### Firebasehosting Release In Channel
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-with-channel",
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
/// const defaultHostingChannel = new gcp.firebase.HostingChannel("default", {
///     siteId: _default.siteId,
///     channelId: "channel-id",
/// });
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     channelId: defaultHostingChannel.channelId,
///     versionName: defaultHostingVersion.name,
///     message: "Test release in channel",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-with-channel")
/// default_hosting_version = gcp.firebase.HostingVersion("default",
///     site_id=default.site_id,
///     config={
///         "redirects": [{
///             "glob": "/google/**",
///             "status_code": 302,
///             "location": "https://www.google.com",
///         }],
///     })
/// default_hosting_channel = gcp.firebase.HostingChannel("default",
///     site_id=default.site_id,
///     channel_id="channel-id")
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     channel_id=default_hosting_channel.channel_id,
///     version_name=default_hosting_version.name,
///     message="Test release in channel")
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
///         SiteId = "site-with-channel",
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
///     var defaultHostingChannel = new Gcp.Firebase.HostingChannel("default", new()
///     {
///         SiteId = @default.SiteId,
///         ChannelId = "channel-id",
///     });
///
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         ChannelId = defaultHostingChannel.ChannelId,
///         VersionName = defaultHostingVersion.Name,
///         Message = "Test release in channel",
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
/// 			SiteId:  pulumi.String("site-with-channel"),
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
/// 		defaultHostingChannel, err := firebase.NewHostingChannel(ctx, "default", &firebase.HostingChannelArgs{
/// 			SiteId:    _default.SiteId,
/// 			ChannelId: pulumi.String("channel-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:      _default.SiteId,
/// 			ChannelId:   defaultHostingChannel.ChannelId,
/// 			VersionName: defaultHostingVersion.Name,
/// 			Message:     pulumi.String("Test release in channel"),
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
/// import com.pulumi.gcp.firebase.HostingChannel;
/// import com.pulumi.gcp.firebase.HostingChannelArgs;
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
///             .siteId("site-with-channel")
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
///         var defaultHostingChannel = new HostingChannel("defaultHostingChannel", HostingChannelArgs.builder()
///             .siteId(default_.siteId())
///             .channelId("channel-id")
///             .build());
///
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .channelId(defaultHostingChannel.channelId())
///             .versionName(defaultHostingVersion.name())
///             .message("Test release in channel")
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
///       siteId: site-with-channel
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
///   defaultHostingChannel:
///     type: gcp:firebase:HostingChannel
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       channelId: channel-id
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       channelId: ${defaultHostingChannel.channelId}
///       versionName: ${defaultHostingVersion.name}
///       message: Test release in channel
/// ```
///
/// ### Firebasehosting Release Disable
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
/// const defaultHostingRelease = new gcp.firebase.HostingRelease("default", {
///     siteId: _default.siteId,
///     type: "SITE_DISABLE",
///     message: "Take down site",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-id")
/// default_hosting_release = gcp.firebase.HostingRelease("default",
///     site_id=default.site_id,
///     type="SITE_DISABLE",
///     message="Take down site")
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
///     var defaultHostingRelease = new Gcp.Firebase.HostingRelease("default", new()
///     {
///         SiteId = @default.SiteId,
///         Type = "SITE_DISABLE",
///         Message = "Take down site",
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
/// 		_, err = firebase.NewHostingRelease(ctx, "default", &firebase.HostingReleaseArgs{
/// 			SiteId:  _default.SiteId,
/// 			Type:    pulumi.String("SITE_DISABLE"),
/// 			Message: pulumi.String("Take down site"),
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
///         var defaultHostingRelease = new HostingRelease("defaultHostingRelease", HostingReleaseArgs.builder()
///             .siteId(default_.siteId())
///             .type("SITE_DISABLE")
///             .message("Take down site")
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
///   defaultHostingRelease:
///     type: gcp:firebase:HostingRelease
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       type: SITE_DISABLE
///       message: Take down site
/// ```
///
///
/// ## Import
///
/// Release can be imported using any of these accepted formats:
///
/// * `sites/{{site_id}}/channels/{{channel_id}}/releases/{{release_id}}`
///
/// * `sites/{{site_id}}/releases/{{release_id}}`
///
/// * `{{site_id}}/{{channel_id}}/{{release_id}}`
///
/// * `{{site_id}}/{{release_id}}`
///
/// When using the `pulumi import` command, Release can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default sites/{{site_id}}/channels/{{channel_id}}/releases/{{release_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default sites/{{site_id}}/releases/{{release_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default {{site_id}}/{{channel_id}}/{{release_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default {{site_id}}/{{release_id}}
/// ```
class HostingRelease extends pulumi.CustomResource {
  /// The ID of the channel to which the release belongs. If not provided, the release will
  /// belong to the default "live" channel
  late final pulumi.Output<String?> channelId;
  /// The deploy description when the release was created. The value can be up to 512 characters.
  late final pulumi.Output<String?> message;
  /// The unique identifier for the release, in either of the following formats:
  /// sites/SITE_ID/releases/RELEASE_ID
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID
  late final pulumi.Output<String> name;
  /// The unique identifier for the Release.
  late final pulumi.Output<String> releaseId;
  /// Required. The ID of the site to which the release belongs.
  late final pulumi.Output<String> siteId;
  /// The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// `DEPLOY` or `ROLLBACK` type if a `version_name` is provided.
  /// DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
  /// ROLLBACK: The release points back to a previously deployed version. Output only.
  /// SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed
  /// Possible values are: `DEPLOY`, `ROLLBACK`, `SITE_DISABLE`.
  late final pulumi.Output<String> type;
  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  /// The content of the version specified will be actively displayed on the appropriate URL.
  /// The Version must belong to the same site as in the `site_id`.
  /// This parameter must be empty if the `type` of the release is `SITE_DISABLE`.
  late final pulumi.Output<String?> versionName;

  /// Creates a new [HostingRelease].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostingRelease]. {@macro pulumi_firebase_hosting_release_hosting_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostingRelease(
    String name, {
    HostingReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingRelease:HostingRelease',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    channelId = registerOutput<String?>('channelId');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    releaseId = registerOutput<String>('releaseId');
    siteId = registerOutput<String>('siteId');
    type = registerOutput<String>('type');
    versionName = registerOutput<String?>('versionName');
  }

  /// Gets an existing [HostingRelease] resource's state with the given [name] and [id].
  static HostingRelease get(
    String name,
    pulumi.Input<String> id, {
    HostingReleaseState? state,
  }) {
    return HostingRelease._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostingRelease._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingRelease:HostingRelease',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    channelId = registerOutput<String?>('channelId');
    message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    releaseId = registerOutput<String>('releaseId');
    siteId = registerOutput<String>('siteId');
    type = registerOutput<String>('type');
    versionName = registerOutput<String?>('versionName');
  }
}
