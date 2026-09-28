// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartnerAttachmentServiceKey.
class GetPartnerAttachmentServiceKeyResult {
  final String? attachmentId;
  final String? createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? state;
  final String? value;

  /// Creates a new [GetPartnerAttachmentServiceKeyResult].
  /// [attachmentId] Optional.
  /// [createdAt] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [state] Optional.
  /// [value] Optional.
  const GetPartnerAttachmentServiceKeyResult({
    this.attachmentId,
    this.createdAt,
    this.id,
    this.state,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'createdAt': ?createdAt,
      'id': ?id,
      'state': ?state,
      'value': ?value,
    };
  }

  factory GetPartnerAttachmentServiceKeyResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentServiceKeyResult(
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
