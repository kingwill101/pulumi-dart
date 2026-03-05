// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_override_response_deploymentmanager_v2beta.dart';
import 'credential_response_deploymentmanager_v2beta.dart';
import 'operation_response_deploymentmanager_v2beta.dart';
import 'options_response_deploymentmanager_v2beta.dart';
import 'type_provider_label_entry_response_deploymentmanager_v2beta.dart';

/// Result data returned by getTypeProvider.
class GetTypeProviderDeploymentmanagerV2betaResult {
  /// Allows resource handling overrides for specific collections
  final List<CollectionOverrideResponseDeploymentmanagerV2beta> collectionOverrides;
  /// Credential used when interacting with this type.
  final CredentialResponseDeploymentmanagerV2beta credential;
  /// List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  final List<String> customCertificateAuthorityRoots;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String description;
  /// Descriptor Url for the this type provider.
  final String descriptorUrl;
  /// Creation timestamp in RFC3339 text format.
  final String insertTime;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  final List<TypeProviderLabelEntryResponseDeploymentmanagerV2beta> labels;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The Operation that most recently ran, or is currently running, on this type provider.
  final OperationResponseDeploymentmanagerV2beta operation;
  /// Options to apply when handling any resources in this service.
  final OptionsResponseDeploymentmanagerV2beta options;
  /// Self link for the type provider.
  final String selfLink;

  /// Creates a new [GetTypeProviderDeploymentmanagerV2betaResult].
  /// [collectionOverrides] Allows resource handling overrides for specific collections
  /// [credential] Credential used when interacting with this type.
  /// [customCertificateAuthorityRoots] List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [descriptorUrl] Descriptor Url for the this type provider.
  /// [insertTime] Creation timestamp in RFC3339 text format.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [operation] The Operation that most recently ran, or is currently running, on this type provider.
  /// [options] Options to apply when handling any resources in this service.
  /// [selfLink] Self link for the type provider.
  GetTypeProviderDeploymentmanagerV2betaResult({
    required this.collectionOverrides,
    required this.credential,
    required this.customCertificateAuthorityRoots,
    required this.description,
    required this.descriptorUrl,
    required this.insertTime,
    required this.labels,
    required this.name,
    required this.operation,
    required this.options,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionOverrides': pulumi.Input.encodeList<CollectionOverrideResponseDeploymentmanagerV2beta, Map<String, dynamic>>(collectionOverrides, (value) => value.toMap()),
      'credential': credential.toMap(),
      'customCertificateAuthorityRoots': customCertificateAuthorityRoots,
      'description': description,
      'descriptorUrl': descriptorUrl,
      'insertTime': insertTime,
      'labels': pulumi.Input.encodeList<TypeProviderLabelEntryResponseDeploymentmanagerV2beta, Map<String, dynamic>>(labels, (value) => value.toMap()),
      'name': name,
      'operation': operation.toMap(),
      'options': options.toMap(),
      'selfLink': selfLink,
    };
  }

  factory GetTypeProviderDeploymentmanagerV2betaResult.fromMap(Map<String, dynamic> map) {
    return GetTypeProviderDeploymentmanagerV2betaResult(
      collectionOverrides: pulumi.Input.decodeList<CollectionOverrideResponseDeploymentmanagerV2beta>(map['collectionOverrides']!, (value) => CollectionOverrideResponseDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>())),
      credential: CredentialResponseDeploymentmanagerV2beta.fromMap((map['credential']! as Map).cast<String, dynamic>()),
      customCertificateAuthorityRoots: (map['customCertificateAuthorityRoots'] as List).cast<String>(),
      description: map['description'] as String,
      descriptorUrl: map['descriptorUrl'] as String,
      insertTime: map['insertTime'] as String,
      labels: pulumi.Input.decodeList<TypeProviderLabelEntryResponseDeploymentmanagerV2beta>(map['labels']!, (value) => TypeProviderLabelEntryResponseDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      operation: OperationResponseDeploymentmanagerV2beta.fromMap((map['operation']! as Map).cast<String, dynamic>()),
      options: OptionsResponseDeploymentmanagerV2beta.fromMap((map['options']! as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
    );
  }
}

