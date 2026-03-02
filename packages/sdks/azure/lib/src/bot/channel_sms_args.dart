// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_channel_sms_channel_sms_args_doc}
/// The set of arguments for ChannelSms.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_sms_channel_sms_args_doc}
class ChannelSmsArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The phone number for the SMS Channel.
  final pulumi.Input<String> phoneNumber;
  /// The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The account security identifier (SID) for the SMS Channel.
  final pulumi.Input<String> smsChannelAccountSecurityId;
  /// The authorization token for the SMS Channel.
  final pulumi.Input<String> smsChannelAuthToken;

  /// Creates a new [ChannelSmsArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [phoneNumber] The phone number for the SMS Channel.
  /// [resourceGroupName] The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created.
  /// [smsChannelAccountSecurityId] The account security identifier (SID) for the SMS Channel.
  /// [smsChannelAuthToken] The authorization token for the SMS Channel.
  ChannelSmsArgs({
    required this.botName,
    this.location,
    required this.phoneNumber,
    required this.resourceGroupName,
    required this.smsChannelAccountSecurityId,
    required this.smsChannelAuthToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'location': ?location,
      'phoneNumber': phoneNumber,
      'resourceGroupName': resourceGroupName,
      'smsChannelAccountSecurityId': smsChannelAccountSecurityId,
      'smsChannelAuthToken': smsChannelAuthToken,
    };
  }

  factory ChannelSmsArgs.fromMap(Map<String, dynamic> map) {
    return ChannelSmsArgs(
      botName: (map['botName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      smsChannelAccountSecurityId: (map['smsChannelAccountSecurityId'] as String).input(),
      smsChannelAuthToken: (map['smsChannelAuthToken'] as String).input(),
    );
  }
}

