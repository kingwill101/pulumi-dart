// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSfdcChannel.
class GetSfdcChannelResult {
  /// The Channel topic defined by salesforce once an channel is opened
  final String? channelTopic;
  /// Time when the channel is created
  final String? createTime;
  /// Time when the channel was deleted. Empty if not deleted.
  final String? deleteTime;
  /// The description for this channel
  final String? description;
  /// Client level unique name/alias to easily reference a channel.
  final String? displayName;
  /// Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  final bool? isActive;
  /// Last sfdc messsage replay id for channel
  final String? lastReplayId;
  /// Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  final String? name;
  /// Time when the channel was last updated
  final String? updateTime;

  /// Creates a new [GetSfdcChannelResult].
  /// [channelTopic] The Channel topic defined by salesforce once an channel is opened
  /// [createTime] Time when the channel is created
  /// [deleteTime] Time when the channel was deleted. Empty if not deleted.
  /// [description] The description for this channel
  /// [displayName] Client level unique name/alias to easily reference a channel.
  /// [isActive] Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  /// [lastReplayId] Last sfdc messsage replay id for channel
  /// [name] Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  /// [updateTime] Time when the channel was last updated
  const GetSfdcChannelResult({
    this.channelTopic,
    this.createTime,
    this.deleteTime,
    this.description,
    this.displayName,
    this.isActive,
    this.lastReplayId,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelTopic': ?channelTopic,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'isActive': ?isActive,
      'lastReplayId': ?lastReplayId,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetSfdcChannelResult.fromMap(Map<String, dynamic> map) {
    return GetSfdcChannelResult(
      channelTopic: (() { final guardedValue = map['channelTopic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isActive: (() { final guardedValue = map['isActive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastReplayId: (() { final guardedValue = map['lastReplayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
