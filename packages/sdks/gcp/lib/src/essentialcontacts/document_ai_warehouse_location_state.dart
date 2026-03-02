// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DocumentAiWarehouseLocation resources.
class DocumentAiWarehouseLocationState {
  /// The access control mode for accessing the customer data.
  /// Possible values are: `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI`, `ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID`, `ACL_MODE_UNIVERSAL_ACCESS`.
  final pulumi.Input<String>? accessControlMode;
  /// The type of database used to store customer data.
  /// Possible values are: `DB_INFRA_SPANNER`, `DB_CLOUD_SQL_POSTGRES`.
  final pulumi.Input<String>? databaseType;
  /// The default role for the person who create a document.
  /// Possible values are: `DOCUMENT_ADMIN`, `DOCUMENT_EDITOR`, `DOCUMENT_VIEWER`.
  final pulumi.Input<String>? documentCreatorDefaultRole;
  /// The KMS key used for CMEK encryption. It is required that
  /// the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if
  /// encryption is available. If the kmsKey is left empty, no
  /// encryption will be enforced.
  final pulumi.Input<String>? kmsKey;
  /// The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  final pulumi.Input<String>? location;
  /// The unique identifier of the project.
  final pulumi.Input<String>? projectNumber;

  /// Creates a new [DocumentAiWarehouseLocationState].
  /// [accessControlMode] The access control mode for accessing the customer data.
  /// [databaseType] The type of database used to store customer data.
  /// [documentCreatorDefaultRole] The default role for the person who create a document.
  /// [kmsKey] The KMS key used for CMEK encryption. It is required that
  /// [location] The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.
  /// [projectNumber] The unique identifier of the project.
  DocumentAiWarehouseLocationState({
    this.accessControlMode,
    this.databaseType,
    this.documentCreatorDefaultRole,
    this.kmsKey,
    this.location,
    this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlMode': ?accessControlMode,
      'databaseType': ?databaseType,
      'documentCreatorDefaultRole': ?documentCreatorDefaultRole,
      'kmsKey': ?kmsKey,
      'location': ?location,
      'projectNumber': ?projectNumber,
    };
  }

  factory DocumentAiWarehouseLocationState.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseLocationState(
      accessControlMode: map['accessControlMode'] == null ? null : (map['accessControlMode'] as String).input(),
      databaseType: map['databaseType'] == null ? null : (map['databaseType'] as String).input(),
      documentCreatorDefaultRole: map['documentCreatorDefaultRole'] == null ? null : (map['documentCreatorDefaultRole'] as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      projectNumber: map['projectNumber'] == null ? null : (map['projectNumber'] as String).input(),
    );
  }
}

