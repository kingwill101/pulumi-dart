// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_channel_email_channel_email_args_doc}
/// The set of arguments for ChannelEmail.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_email_channel_email_args_doc}
class ChannelEmailArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The email address that the Bot will authenticate with.
  final pulumi.Input<String> emailAddress;
  /// The email password that the Bot will authenticate with.
  final pulumi.Input<String>? emailPassword;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The magic code used to set up OAUTH authentication.
  final pulumi.Input<String>? magicCode;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ChannelEmailArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [emailAddress] The email address that the Bot will authenticate with.
  /// [emailPassword] The email password that the Bot will authenticate with.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [magicCode] The magic code used to set up OAUTH authentication.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  ChannelEmailArgs({
    required this.botName,
    required this.emailAddress,
    this.emailPassword,
    this.location,
    this.magicCode,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'emailAddress': emailAddress,
      'emailPassword': ?emailPassword,
      'location': ?location,
      'magicCode': ?magicCode,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ChannelEmailArgs.fromMap(Map<String, dynamic> map) {
    return ChannelEmailArgs(
      botName: pulumi.Input.fromValue(map['botName'] as String),
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      emailPassword: (() { final guardedValue = map['emailPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      magicCode: (() { final guardedValue = map['magicCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

