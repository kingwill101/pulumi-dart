// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartnerAttachmentServiceKey.
class GetPartnerAttachmentServiceKeyResult {
  final String attachmentId;
  final String createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String state;
  final String value;

  /// Creates a new [GetPartnerAttachmentServiceKeyResult].
  /// [attachmentId] Required.
  /// [createdAt] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [state] Required.
  /// [value] Required.
  const GetPartnerAttachmentServiceKeyResult({
    required this.attachmentId,
    required this.createdAt,
    required this.id,
    required this.state,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'createdAt': createdAt,
      'id': id,
      'state': state,
      'value': value,
    };
  }

  factory GetPartnerAttachmentServiceKeyResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentServiceKeyResult(
      attachmentId: map['attachmentId'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      state: map['state'] as String,
      value: map['value'] as String,
    );
  }
}
