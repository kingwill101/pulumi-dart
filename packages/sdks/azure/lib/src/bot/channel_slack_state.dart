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
  const ChannelSlackState({
    this.botName,
    this.clientId,
    this.clientSecret,
    this.landingPageUrl,
    this.location,
    this.resourceGroupName,
    this.signingSecret,
    this.verificationToken,
  });

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
      botName: (() { final guardedValue = map['botName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      landingPageUrl: (() { final guardedValue = map['landingPageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingSecret: (() { final guardedValue = map['signingSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verificationToken: (() { final guardedValue = map['verificationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
