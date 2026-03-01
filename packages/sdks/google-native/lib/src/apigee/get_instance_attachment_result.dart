// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceAttachment.
class GetInstanceAttachmentResult {
  /// Time the attachment was created in milliseconds since epoch.
  final String createdAt;
  /// ID of the attached environment.
  final String environment;
  /// ID of the attachment.
  final String name;

  /// Creates a new [GetInstanceAttachmentResult].
  /// [createdAt] Time the attachment was created in milliseconds since epoch.
  /// [environment] ID of the attached environment.
  /// [name] ID of the attachment.
  GetInstanceAttachmentResult({
    required this.createdAt,
    required this.environment,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'environment': environment,
      'name': name,
    };
  }

  factory GetInstanceAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentResult(
      createdAt: map['createdAt'] as String,
      environment: map['environment'] as String,
      name: map['name'] as String,
    );
  }
}

