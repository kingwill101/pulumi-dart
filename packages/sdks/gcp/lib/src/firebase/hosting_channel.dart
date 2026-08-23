import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_channel_args.dart';
import 'hosting_channel_state.dart';

/// A `Channel` represents a stream of releases for a site. All sites have a default
/// `live` channel that serves content to the Firebase-provided subdomains and any
/// connected custom domains.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about Channel, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/sites.channels)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Channel Basic
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
/// const defaultHostingChannel = new gcp.firebase.HostingChannel("default", {
///     siteId: _default.siteId,
///     channelId: "channel-basic",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-with-channel")
/// default_hosting_channel = gcp.firebase.HostingChannel("default",
///     site_id=default.site_id,
///     channel_id="channel-basic")
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
///     var defaultHostingChannel = new Gcp.Firebase.HostingChannel("default", new()
///     {
///         SiteId = @default.SiteId,
///         ChannelId = "channel-basic",
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
/// 		_, err = firebase.NewHostingChannel(ctx, "default", &firebase.HostingChannelArgs{
/// 			SiteId:    _default.SiteId,
/// 			ChannelId: pulumi.String("channel-basic"),
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
/// resource "gcp_firebase_hostingsite" "default" {
///   project = "my-project-name"
///   site_id = "site-with-channel"
/// }
/// resource "gcp_firebase_hostingchannel" "default" {
///   site_id    = gcp_firebase_hostingsite.default.site_id
///   channel_id = "channel-basic"
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
/// import com.pulumi.gcp.firebase.HostingChannel;
/// import com.pulumi.gcp.firebase.HostingChannelArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-with-channel")
///             .build());
///
///         var defaultHostingChannel = new HostingChannel("defaultHostingChannel", HostingChannelArgs.builder()
///             .siteId(default_.siteId())
///             .channelId("channel-basic")
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
///   defaultHostingChannel:
///     type: gcp:firebase:HostingChannel
///     name: default
///     properties:
///       siteId: ${default.siteId}
///       channelId: channel-basic
/// ```
///
/// ### Firebasehosting Channel Full
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
/// const full = new gcp.firebase.HostingChannel("full", {
///     siteId: _default.siteId,
///     channelId: "channel-full",
///     ttl: "86400s",
///     retainedReleaseCount: 20,
///     labels: {
///         "some-key": "some-value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-with-channel")
/// full = gcp.firebase.HostingChannel("full",
///     site_id=default.site_id,
///     channel_id="channel-full",
///     ttl="86400s",
///     retained_release_count=20,
///     labels={
///         "some-key": "some-value",
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
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-with-channel",
///     });
///
///     var full = new Gcp.Firebase.HostingChannel("full", new()
///     {
///         SiteId = @default.SiteId,
///         ChannelId = "channel-full",
///         Ttl = "86400s",
///         RetainedReleaseCount = 20,
///         Labels =
///         {
///             { "some-key", "some-value" },
///         },
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
/// 		_, err = firebase.NewHostingChannel(ctx, "full", &firebase.HostingChannelArgs{
/// 			SiteId:               _default.SiteId,
/// 			ChannelId:            pulumi.String("channel-full"),
/// 			Ttl:                  pulumi.String("86400s"),
/// 			RetainedReleaseCount: pulumi.Int(20),
/// 			Labels: pulumi.StringMap{
/// 				"some-key": pulumi.String("some-value"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_firebase_hostingsite" "default" {
///   project = "my-project-name"
///   site_id = "site-with-channel"
/// }
/// resource "gcp_firebase_hostingchannel" "full" {
///   site_id                = gcp_firebase_hostingsite.default.site_id
///   channel_id             = "channel-full"
///   ttl                    = "86400s"
///   retained_release_count = 20
///   labels = {
///     "some-key" = "some-value"
///   }
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
/// import com.pulumi.gcp.firebase.HostingChannel;
/// import com.pulumi.gcp.firebase.HostingChannelArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-with-channel")
///             .build());
///
///         var full = new HostingChannel("full", HostingChannelArgs.builder()
///             .siteId(default_.siteId())
///             .channelId("channel-full")
///             .ttl("86400s")
///             .retainedReleaseCount(20)
///             .labels(Map.of("some-key", "some-value"))
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
///   full:
///     type: gcp:firebase:HostingChannel
///     properties:
///       siteId: ${default.siteId}
///       channelId: channel-full
///       ttl: 86400s
///       retainedReleaseCount: 20
///       labels:
///         some-key: some-value
/// ```
///
///
/// ## Import
///
/// Channel can be imported using any of these accepted formats:
///
/// * `sites/{{site_id}}/channels/{{channel_id}}`
/// * `{{site_id}}/{{channel_id}}`
///
///
/// When using the `pulumi import` command, Channel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingChannel:HostingChannel default sites/{{site_id}}/channels/{{channel_id}}
/// $ pulumi import gcp:firebase/hostingChannel:HostingChannel default {{site_id}}/{{channel_id}}
/// ```
class HostingChannel extends pulumi.CustomResource {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  late final pulumi.Output<String> channelId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The time at which the channel will be automatically deleted. If null, the channel
  /// will not be automatically deleted. This field is present in the output whether it's
  /// set directly or via the `ttl` field.
  late final pulumi.Output<String> expireTime;
  /// Text labels used for extra metadata and/or filtering
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The fully-qualified resource name for the channel, in the format:
  /// sites/SITE_ID/channels/CHANNEL_ID
  late final pulumi.Output<String> name;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The number of previous releases to retain on the channel for rollback or other
  /// purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  late final pulumi.Output<int> retainedReleaseCount;
  /// Required. The ID of the site in which to create this channel.
  late final pulumi.Output<String> siteId;
  /// Input only. A time-to-live for this channel. Sets `expireTime` to the provided
  /// duration past the time of the request. A duration in seconds with up to nine fractional
  /// digits, terminated by 's'. Example: "86400s" (one day).
  late final pulumi.Output<String?> ttl;

  /// Creates a new [HostingChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostingChannel]. {@macro pulumi_firebase_hosting_channel_hosting_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostingChannel(
    String name, {
    HostingChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingChannel:HostingChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    channelId = registerOutput<String>('channelId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    retainedReleaseCount = registerOutput<int>('retainedReleaseCount');
    siteId = registerOutput<String>('siteId');
    ttl = registerOutput<String?>('ttl');
  }

  /// Gets an existing [HostingChannel] resource's state with the given [name] and [id].
  static HostingChannel get(
    String name,
    pulumi.Input<String> id, {
    HostingChannelState? state,
  }) {
    return HostingChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostingChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingChannel:HostingChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    channelId = registerOutput<String>('channelId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    retainedReleaseCount = registerOutput<int>('retainedReleaseCount');
    siteId = registerOutput<String>('siteId');
    ttl = registerOutput<String?>('ttl');
  }
}
