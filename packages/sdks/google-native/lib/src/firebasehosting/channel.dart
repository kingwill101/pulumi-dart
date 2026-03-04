import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';
import 'release_response.dart';

/// Creates a new channel in the specified site.
class Channel extends pulumi.CustomResource {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  late final pulumi.Output<String> channelId;

  /// The time at which the channel was created.
  late final pulumi.Output<String> createTime;

  /// The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  late final pulumi.Output<String> expireTime;

  /// Text labels used for extra metadata and/or filtering.
  late final pulumi.Output<Map<String, String>> labels;

  /// The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The current release for the channel, if any.
  late final pulumi.Output<ReleaseResponse> release;

  /// The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  late final pulumi.Output<int> retainedReleaseCount;
  late final pulumi.Output<String> siteId;

  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  late final pulumi.Output<String> ttl;

  /// The time at which the channel was last updated.
  late final pulumi.Output<String> updateTime;

  /// The URL at which the content of this channel's current release can be viewed. This URL is a Firebase-provided subdomain of `web.app`. The content of this channel's current release can also be viewed at the Firebase-provided subdomain of `firebaseapp.com`. If this channel is the `live` channel for the Hosting site, then the content of this channel's current release can also be viewed at any connected custom domains.
  late final pulumi.Output<String> url;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_firebasehosting_v1beta1_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:firebasehosting/v1beta1:Channel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    channelId = registerOutput<String>('channelId');
    createTime = registerOutput<String>('createTime');
    expireTime = registerOutput<String>('expireTime');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    release = registerOutput<ReleaseResponse>('release');
    retainedReleaseCount = registerOutput<int>('retainedReleaseCount');
    siteId = registerOutput<String>('siteId');
    ttl = registerOutput<String>('ttl');
    updateTime = registerOutput<String>('updateTime');
    url = registerOutput<String>('url');
  }
}
