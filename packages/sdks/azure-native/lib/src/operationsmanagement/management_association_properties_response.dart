// ignore_for_file: unused_element, unnecessary_cast


/// ManagementAssociation properties supported by the OperationsManagement resource provider.
class ManagementAssociationPropertiesResponse {
  /// The applicationId of the appliance for this association.
  final String applicationId;

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
      applicationId: map['applicationId'] as String,
    );
  }
}

