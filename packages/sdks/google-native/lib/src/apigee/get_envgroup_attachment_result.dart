// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvgroupAttachment.
class GetEnvgroupAttachmentResult {
  /// The time at which the environment group attachment was created as milliseconds since epoch.
  final String? createdAt;
  /// ID of the attached environment.
  final String? environment;
  /// ID of the environment group.
  final String? environmentGroupId;
  /// ID of the environment group attachment.
  final String? name;

  /// Creates a new [GetEnvgroupAttachmentResult].
  /// [createdAt] The time at which the environment group attachment was created as milliseconds since epoch.
  /// [environment] ID of the attached environment.
  /// [environmentGroupId] ID of the environment group.
  /// [name] ID of the environment group attachment.
  const GetEnvgroupAttachmentResult({
    this.createdAt,
    this.environment,
    this.environmentGroupId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'environment': ?environment,
      'environmentGroupId': ?environmentGroupId,
      'name': ?name,
    };
  }

  factory GetEnvgroupAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupAttachmentResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentGroupId: (() { final guardedValue = map['environmentGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
