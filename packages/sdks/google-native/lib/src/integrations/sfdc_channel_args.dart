// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_sfdc_channel_args_doc}
/// The set of arguments for SfdcChannel.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_sfdc_channel_args_doc}
class SfdcChannelArgs {
  /// The Channel topic defined by salesforce once an channel is opened
  final pulumi.Input<String>? channelTopic;
  /// The description for this channel
  final pulumi.Input<String>? description;
  /// Client level unique name/alias to easily reference a channel.
  final pulumi.Input<String>? displayName;
  /// Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  final pulumi.Input<bool>? isActive;
  /// Last sfdc messsage replay id for channel
  final pulumi.Input<String>? lastReplayId;
  final pulumi.Input<String>? location;
  /// Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sfdcInstanceId;

  /// Creates a new [SfdcChannelArgs].
  /// [channelTopic] The Channel topic defined by salesforce once an channel is opened
  /// [description] The description for this channel
  /// [displayName] Client level unique name/alias to easily reference a channel.
  /// [isActive] Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  /// [lastReplayId] Last sfdc messsage replay id for channel
  /// [location] Optional.
  /// [name] Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  /// [productId] Required.
  /// [project] Optional.
  /// [sfdcInstanceId] Required.
  SfdcChannelArgs({
    this.channelTopic,
    this.description,
    this.displayName,
    this.isActive,
    this.lastReplayId,
    this.location,
    this.name,
    required this.productId,
    this.project,
    required this.sfdcInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelTopic': ?channelTopic,
      'description': ?description,
      'displayName': ?displayName,
      'isActive': ?isActive,
      'lastReplayId': ?lastReplayId,
      'location': ?location,
      'name': ?name,
      'productId': productId,
      'project': ?project,
      'sfdcInstanceId': sfdcInstanceId,
    };
  }

  factory SfdcChannelArgs.fromMap(Map<String, dynamic> map) {
    return SfdcChannelArgs(
      channelTopic: map['channelTopic'] == null ? null : (map['channelTopic'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      isActive: map['isActive'] == null ? null : (map['isActive'] as bool).input(),
      lastReplayId: map['lastReplayId'] == null ? null : (map['lastReplayId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sfdcInstanceId: (map['sfdcInstanceId'] as String).input(),
    );
  }
}

