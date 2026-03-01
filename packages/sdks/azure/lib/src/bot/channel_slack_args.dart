// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_channel_slack_channel_slack_args_doc}
/// The set of arguments for ChannelSlack.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_slack_channel_slack_args_doc}
class ChannelSlackArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The Client ID that will be used to authenticate with Slack.
  final pulumi.Input<String> clientId;
  /// The Client Secret that will be used to authenticate with Slack.
  final pulumi.Input<String> clientSecret;
  /// The Slack Landing Page URL.
  final pulumi.Input<String>? landingPageUrl;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Signing Secret that will be used to sign the requests.
  final pulumi.Input<String>? signingSecret;
  /// The Verification Token that will be used to authenticate with Slack.
  final pulumi.Input<String> verificationToken;

  /// Creates a new [ChannelSlackArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [clientId] The Client ID that will be used to authenticate with Slack.
  /// [clientSecret] The Client Secret that will be used to authenticate with Slack.
  /// [landingPageUrl] The Slack Landing Page URL.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  /// [signingSecret] The Signing Secret that will be used to sign the requests.
  /// [verificationToken] The Verification Token that will be used to authenticate with Slack.
  ChannelSlackArgs({
    required pulumi.Output<String> botName,
    required pulumi.Output<String> clientId,
    required pulumi.Output<String> clientSecret,
    pulumi.Output<String>? landingPageUrl,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? signingSecret,
    required pulumi.Output<String> verificationToken,
  }) :
      botName = pulumi.Input.asInput<String>(botName),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      landingPageUrl = pulumi.Input.asOptionalInput<String>(landingPageUrl),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signingSecret = pulumi.Input.asOptionalInput<String>(signingSecret),
      verificationToken = pulumi.Input.asInput<String>(verificationToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'landingPageUrl': ?landingPageUrl,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'signingSecret': ?signingSecret,
      'verificationToken': verificationToken,
    };
  }

  factory ChannelSlackArgs.fromMap(Map<String, dynamic> map) {
    return ChannelSlackArgs(
      botName: pulumi.Output.create<String>(map['botName'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      landingPageUrl: map['landingPageUrl'] == null ? null : pulumi.Output.create<String>(map['landingPageUrl'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signingSecret: map['signingSecret'] == null ? null : pulumi.Output.create<String>(map['signingSecret'] as String),
      verificationToken: pulumi.Output.create<String>(map['verificationToken'] as String),
    );
  }
}

