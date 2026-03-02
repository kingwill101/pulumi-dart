// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagementAssociation properties supported by the OperationsManagement resource provider.
class ManagementAssociationProperties {
  /// The applicationId of the appliance for this association.
  final pulumi.Input<String> applicationId;

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
      applicationId: (map['applicationId'] as String).input(),
    );
  }
}

