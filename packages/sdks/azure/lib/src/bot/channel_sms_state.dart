// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelSms resources.
class ChannelSmsState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The phone number for the SMS Channel.
  final pulumi.Input<String>? phoneNumber;
  /// The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The account security identifier (SID) for the SMS Channel.
  final pulumi.Input<String>? smsChannelAccountSecurityId;
  /// The authorization token for the SMS Channel.
  final pulumi.Input<String>? smsChannelAuthToken;

  /// Creates a new [ChannelSmsState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [phoneNumber] The phone number for the SMS Channel.
  /// [resourceGroupName] The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created.
  /// [smsChannelAccountSecurityId] The account security identifier (SID) for the SMS Channel.
  /// [smsChannelAuthToken] The authorization token for the SMS Channel.
  ChannelSmsState({
    pulumi.Output<String>? botName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? phoneNumber,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? smsChannelAccountSecurityId,
    pulumi.Output<String>? smsChannelAuthToken,
  }) :
      botName = pulumi.Input.asOptionalInput<String>(botName),
      location = pulumi.Input.asOptionalInput<String>(location),
      phoneNumber = pulumi.Input.asOptionalInput<String>(phoneNumber),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      smsChannelAccountSecurityId = pulumi.Input.asOptionalInput<String>(smsChannelAccountSecurityId),
      smsChannelAuthToken = pulumi.Input.asOptionalInput<String>(smsChannelAuthToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'location': ?location,
      'phoneNumber': ?phoneNumber,
      'resourceGroupName': ?resourceGroupName,
      'smsChannelAccountSecurityId': ?smsChannelAccountSecurityId,
      'smsChannelAuthToken': ?smsChannelAuthToken,
    };
  }

  factory ChannelSmsState.fromMap(Map<String, dynamic> map) {
    return ChannelSmsState(
      botName: map['botName'] == null ? null : pulumi.Output.create<String>(map['botName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      phoneNumber: map['phoneNumber'] == null ? null : pulumi.Output.create<String>(map['phoneNumber'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      smsChannelAccountSecurityId: map['smsChannelAccountSecurityId'] == null ? null : pulumi.Output.create<String>(map['smsChannelAccountSecurityId'] as String),
      smsChannelAuthToken: map['smsChannelAuthToken'] == null ? null : pulumi.Output.create<String>(map['smsChannelAuthToken'] as String),
    );
  }
}

