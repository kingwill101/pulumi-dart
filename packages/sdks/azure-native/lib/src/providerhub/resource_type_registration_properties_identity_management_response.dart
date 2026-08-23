// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity management.
class ResourceTypeRegistrationPropertiesIdentityManagementResponse {
  /// The application id.
  final pulumi.Input<String>? applicationId;
  /// The application ids.
  final pulumi.Input<List<String>>? applicationIds;
  /// The delegation app ids.
  final pulumi.Input<List<String>>? delegationAppIds;
  /// The type.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceTypeRegistrationPropertiesIdentityManagementResponse].
  /// [applicationId] The application id.
  /// [applicationIds] The application ids.
  /// [delegationAppIds] The delegation app ids.
  /// [type] The type.
  const ResourceTypeRegistrationPropertiesIdentityManagementResponse({
    this.applicationId,
    this.applicationIds,
    this.delegationAppIds,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'applicationIds': ?applicationIds,
      'delegationAppIds': ?delegationAppIds,
      'type': ?type,
    };
  }

  factory ResourceTypeRegistrationPropertiesIdentityManagementResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesIdentityManagementResponse(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationIds: (() { final guardedValue = map['applicationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      delegationAppIds: (() { final guardedValue = map['delegationAppIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
