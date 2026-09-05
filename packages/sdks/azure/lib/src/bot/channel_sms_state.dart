// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelSms resources.
class ChannelSmsState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? botName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The phone number for the SMS Channel.
  final pulumi.Input<String?>? phoneNumber;
  /// The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The account security identifier (SID) for the SMS Channel.
  final pulumi.Input<String?>? smsChannelAccountSecurityId;
  /// The authorization token for the SMS Channel.
  final pulumi.Input<String?>? smsChannelAuthToken;

  /// Creates a new [ChannelSmsState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [phoneNumber] The phone number for the SMS Channel.
  /// [resourceGroupName] The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created.
  /// [smsChannelAccountSecurityId] The account security identifier (SID) for the SMS Channel.
  /// [smsChannelAuthToken] The authorization token for the SMS Channel.
  const ChannelSmsState({
    this.botName,
    this.location,
    this.phoneNumber,
    this.resourceGroupName,
    this.smsChannelAccountSecurityId,
    this.smsChannelAuthToken,
  });

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
      botName: (() { final guardedValue = map['botName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smsChannelAccountSecurityId: (() { final guardedValue = map['smsChannelAccountSecurityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smsChannelAuthToken: (() { final guardedValue = map['smsChannelAuthToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
