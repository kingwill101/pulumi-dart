// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagementAssociation properties supported by the OperationsManagement resource provider.
class ManagementAssociationPropertiesResponse {
  /// The applicationId of the appliance for this association.
  final pulumi.Input<String> applicationId;

  /// Creates a new [ManagementAssociationPropertiesResponse].
  /// [applicationId] The applicationId of the appliance for this association.
  ManagementAssociationPropertiesResponse({
    required this.applicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
    };
  }

  factory ManagementAssociationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementAssociationPropertiesResponse(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
    );
  }
}

