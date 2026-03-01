// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelSlack resources.
class ChannelSlackState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The Client ID that will be used to authenticate with Slack.
  final pulumi.Input<String>? clientId;
  /// The Client Secret that will be used to authenticate with Slack.
  final pulumi.Input<String>? clientSecret;
  /// The Slack Landing Page URL.
  final pulumi.Input<String>? landingPageUrl;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Signing Secret that will be used to sign the requests.
  final pulumi.Input<String>? signingSecret;
  /// The Verification Token that will be used to authenticate with Slack.
  final pulumi.Input<String>? verificationToken;

  /// Creates a new [ChannelSlackState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [clientId] The Client ID that will be used to authenticate with Slack.
  /// [clientSecret] The Client Secret that will be used to authenticate with Slack.
  /// [landingPageUrl] The Slack Landing Page URL.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  /// [signingSecret] The Signing Secret that will be used to sign the requests.
  /// [verificationToken] The Verification Token that will be used to authenticate with Slack.
  ChannelSlackState({
    pulumi.Output<String>? botName,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? landingPageUrl,
    pulumi.Output<String>? location,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? signingSecret,
    pulumi.Output<String>? verificationToken,
  }) :
      botName = pulumi.Input.asOptionalInput<String>(botName),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      landingPageUrl = pulumi.Input.asOptionalInput<String>(landingPageUrl),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      signingSecret = pulumi.Input.asOptionalInput<String>(signingSecret),
      verificationToken = pulumi.Input.asOptionalInput<String>(verificationToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'landingPageUrl': ?landingPageUrl,
      'location': ?location,
      'resourceGroupName': ?resourceGroupName,
      'signingSecret': ?signingSecret,
      'verificationToken': ?verificationToken,
    };
  }

  factory ChannelSlackState.fromMap(Map<String, dynamic> map) {
    return ChannelSlackState(
      botName: map['botName'] == null ? null : pulumi.Output.create<String>(map['botName'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      landingPageUrl: map['landingPageUrl'] == null ? null : pulumi.Output.create<String>(map['landingPageUrl'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      signingSecret: map['signingSecret'] == null ? null : pulumi.Output.create<String>(map['signingSecret'] as String),
      verificationToken: map['verificationToken'] == null ? null : pulumi.Output.create<String>(map['verificationToken'] as String),
    );
  }
}

