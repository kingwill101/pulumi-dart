// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelEmail resources.
class ChannelEmailState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The email address that the Bot will authenticate with.
  final pulumi.Input<String>? emailAddress;
  /// The email password that the Bot will authenticate with.
  final pulumi.Input<String>? emailPassword;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The magic code used to set up OAUTH authentication.
  final pulumi.Input<String>? magicCode;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ChannelEmailState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [emailAddress] The email address that the Bot will authenticate with.
  /// [emailPassword] The email password that the Bot will authenticate with.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [magicCode] The magic code used to set up OAUTH authentication.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  ChannelEmailState({
    this.botName,
    this.emailAddress,
    this.emailPassword,
    this.location,
    this.magicCode,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'emailAddress': ?emailAddress,
      'emailPassword': ?emailPassword,
      'location': ?location,
      'magicCode': ?magicCode,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ChannelEmailState.fromMap(Map<String, dynamic> map) {
    return ChannelEmailState(
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress'] as String).input(),
      emailPassword: map['emailPassword'] == null ? null : (map['emailPassword'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      magicCode: map['magicCode'] == null ? null : (map['magicCode'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

