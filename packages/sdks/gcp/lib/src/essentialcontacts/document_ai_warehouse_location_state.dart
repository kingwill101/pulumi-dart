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
    pulumi.Output<String>? accessControlMode,
    pulumi.Output<String>? databaseType,
    pulumi.Output<String>? documentCreatorDefaultRole,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<String>? location,
    pulumi.Output<String>? projectNumber,
  }) :
      accessControlMode = pulumi.Input.asOptionalInput<String>(accessControlMode),
      databaseType = pulumi.Input.asOptionalInput<String>(databaseType),
      documentCreatorDefaultRole = pulumi.Input.asOptionalInput<String>(documentCreatorDefaultRole),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      location = pulumi.Input.asOptionalInput<String>(location),
      projectNumber = pulumi.Input.asOptionalInput<String>(projectNumber);

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
      accessControlMode: map['accessControlMode'] == null ? null : pulumi.Output.create<String>(map['accessControlMode'] as String),
      databaseType: map['databaseType'] == null ? null : pulumi.Output.create<String>(map['databaseType'] as String),
      documentCreatorDefaultRole: map['documentCreatorDefaultRole'] == null ? null : pulumi.Output.create<String>(map['documentCreatorDefaultRole'] as String),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      projectNumber: map['projectNumber'] == null ? null : pulumi.Output.create<String>(map['projectNumber'] as String),
    );
  }
}

