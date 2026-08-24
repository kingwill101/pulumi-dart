// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustDlpCustomPromptTopic.
class GetZeroTrustDlpCustomPromptTopicResult {
  final String? accountId;
  final String? createdAt;
  final String? description;
  final bool? enabled;
  final String? entryId;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final String? profileId;
  final String? topic;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpCustomPromptTopicResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [enabled] Optional.
  /// [entryId] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [profileId] Optional.
  /// [topic] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustDlpCustomPromptTopicResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.enabled,
    this.entryId,
    this.id,
    this.name,
    this.profileId,
    this.topic,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'enabled': ?enabled,
      'entryId': ?entryId,
      'id': ?id,
      'name': ?name,
      'profileId': ?profileId,
      'topic': ?topic,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDlpCustomPromptTopicResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomPromptTopicResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
