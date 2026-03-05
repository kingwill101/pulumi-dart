// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterPscServiceAttachment {
  /// Type of a PSC connection targeting this service attachment.
  final pulumi.Input<String> connectionType;
  /// Service attachment URI which your self-created PscConnection should use as
  final pulumi.Input<String> serviceAttachment;

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
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}

