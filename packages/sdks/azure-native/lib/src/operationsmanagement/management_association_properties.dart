// ignore_for_file: unused_element, unnecessary_cast


/// ManagementAssociation properties supported by the OperationsManagement resource provider.
class ManagementAssociationProperties {
  /// The applicationId of the appliance for this association.
  final String applicationId;

  /// Creates a new [ManagementAssociationProperties].
  /// [applicationId] The applicationId of the appliance for this association.
  ManagementAssociationProperties({
    required this.applicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
    };
  }

  factory ManagementAssociationProperties.fromMap(Map<String, dynamic> map) {
    return ManagementAssociationProperties(
      applicationId: map['applicationId'] as String,
    );
  }
}

