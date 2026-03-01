// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_service_principal_service_principal_key.dart';

/// Input properties used for looking up and filtering CredentialServicePrincipal resources.
class CredentialServicePrincipalState {
  /// List of tags that can be used for describing the Data Factory Credential.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Credential.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Client ID of the Service Principal.
  final pulumi.Input<String>? servicePrincipalId;
  /// A `service_principal_key` block as defined below.
  final pulumi.Input<CredentialServicePrincipalServicePrincipalKey>? servicePrincipalKey;
  /// The Tenant ID of the Service Principal.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [CredentialServicePrincipalState].
  /// [annotations] List of tags that can be used for describing the Data Factory Credential.
  /// [dataFactoryId] The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Credential.
  /// [name] Specifies the name of the Credential. Changing this forces a new resource to be created.
  /// [servicePrincipalId] The Client ID of the Service Principal.
  /// [servicePrincipalKey] A `service_principal_key` block as defined below.
  /// [tenantId] The Tenant ID of the Service Principal.
  CredentialServicePrincipalState({
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? servicePrincipalId,
    pulumi.Output<CredentialServicePrincipalServicePrincipalKey>? servicePrincipalKey,
    pulumi.Output<String>? tenantId,
  }) :
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      servicePrincipalKey = pulumi.Input.asOptionalInput<CredentialServicePrincipalServicePrincipalKey>(servicePrincipalKey),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'name': ?name,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<CredentialServicePrincipalServicePrincipalKey, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'tenantId': ?tenantId,
    };
  }

  factory CredentialServicePrincipalState.fromMap(Map<String, dynamic> map) {
    return CredentialServicePrincipalState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalId'] as String),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : pulumi.Output.create<CredentialServicePrincipalServicePrincipalKey>(CredentialServicePrincipalServicePrincipalKey.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>())),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

