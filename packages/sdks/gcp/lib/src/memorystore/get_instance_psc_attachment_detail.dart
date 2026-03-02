// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePscAttachmentDetail {
  /// Service attachment URI which your self-created PscConnection should use as target.
  final pulumi.Input<String> connectionType;
  /// Service attachment URI which your self-created PscConnection should use as target.
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GetInstancePscAttachmentDetail].
  /// [connectionType] Service attachment URI which your self-created PscConnection should use as target.
  /// [serviceAttachment] Service attachment URI which your self-created PscConnection should use as target.
  GetInstancePscAttachmentDetail({
    required this.connectionType,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetInstancePscAttachmentDetail.fromMap(Map<String, dynamic> map) {
    return GetInstancePscAttachmentDetail(
      connectionType: (map['connectionType'] as String).input(),
      serviceAttachment: (map['serviceAttachment'] as String).input(),
    );
  }
}

