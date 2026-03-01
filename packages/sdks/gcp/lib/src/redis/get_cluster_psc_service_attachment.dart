// ignore_for_file: unused_element, unnecessary_cast


class GetClusterPscServiceAttachment {
  /// Type of a PSC connection targeting this service attachment.
  final String connectionType;
  /// Service attachment URI which your self-created PscConnection should use as
  final String serviceAttachment;

  /// Creates a new [GetClusterPscServiceAttachment].
  /// [connectionType] Type of a PSC connection targeting this service attachment.
  /// [serviceAttachment] Service attachment URI which your self-created PscConnection should use as
  GetClusterPscServiceAttachment({
    required this.connectionType,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetClusterPscServiceAttachment.fromMap(Map<String, dynamic> map) {
    return GetClusterPscServiceAttachment(
      connectionType: map['connectionType'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}

