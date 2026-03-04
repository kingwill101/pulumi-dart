// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the file share configuration where the transport directory fileshare already exists, and user wishes to mount the fileshare as a part of the create infra flow.
class MountFileShareConfigurationResponse {
  /// The type of file share config.
  /// Expected value is 'Mount'.
  final pulumi.Input<String> configurationType;

  /// The fileshare resource ID
  final pulumi.Input<String> id;

  /// The private endpoint resource ID
  final pulumi.Input<String> privateEndpointId;

  /// Creates a new [MountFileShareConfigurationResponse].
  /// [configurationType] The type of file share config.
  /// [id] The fileshare resource ID
  /// [privateEndpointId] The private endpoint resource ID
  MountFileShareConfigurationResponse({
    required this.configurationType,
    required this.id,
    required this.privateEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': configurationType,
      'id': id,
      'privateEndpointId': privateEndpointId,
    };
  }

  factory MountFileShareConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MountFileShareConfigurationResponse(
      configurationType: pulumi.Input.fromValue(
        map['configurationType'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      privateEndpointId: pulumi.Input.fromValue(
        map['privateEndpointId'] as String,
      ),
    );
  }
}
