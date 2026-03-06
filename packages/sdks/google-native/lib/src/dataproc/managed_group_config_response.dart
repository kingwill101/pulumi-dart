// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the resources used to actively manage an instance group.
class ManagedGroupConfigResponse {
  /// The name of the Instance Group Manager for this group.
  final pulumi.Input<String> instanceGroupManagerName;
  /// The partial URI to the instance group manager for this group. E.g. projects/my-project/regions/us-central1/instanceGroupManagers/my-igm.
  final pulumi.Input<String> instanceGroupManagerUri;
  /// The name of the Instance Template used for the Managed Instance Group.
  final pulumi.Input<String> instanceTemplateName;

  /// Creates a new [ManagedGroupConfigResponse].
  /// [instanceGroupManagerName] The name of the Instance Group Manager for this group.
  /// [instanceGroupManagerUri] The partial URI to the instance group manager for this group. E.g. projects/my-project/regions/us-central1/instanceGroupManagers/my-igm.
  /// [instanceTemplateName] The name of the Instance Template used for the Managed Instance Group.
  const ManagedGroupConfigResponse({
    required this.instanceGroupManagerName,
    required this.instanceGroupManagerUri,
    required this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManagerName': instanceGroupManagerName,
      'instanceGroupManagerUri': instanceGroupManagerUri,
      'instanceTemplateName': instanceTemplateName,
    };
  }

  factory ManagedGroupConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedGroupConfigResponse(
      instanceGroupManagerName: pulumi.Input.fromValue(map['instanceGroupManagerName'] as String),
      instanceGroupManagerUri: pulumi.Input.fromValue(map['instanceGroupManagerUri'] as String),
      instanceTemplateName: pulumi.Input.fromValue(map['instanceTemplateName'] as String),
    );
  }
}

