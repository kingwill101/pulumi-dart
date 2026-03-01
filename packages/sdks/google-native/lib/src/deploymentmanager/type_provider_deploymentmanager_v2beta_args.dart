// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_override_deploymentmanager_v2beta.dart';
import 'credential_deploymentmanager_v2beta.dart';
import 'options_deploymentmanager_v2beta.dart';
import 'type_provider_label_entry_deploymentmanager_v2beta.dart';

/// {@template pulumi_deploymentmanager_v2beta_type_provider_deploymentmanager_v2beta_args_doc}
/// The set of arguments for TypeProvider.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2beta_type_provider_deploymentmanager_v2beta_args_doc}
class TypeProviderDeploymentmanagerV2betaArgs {
  /// Allows resource handling overrides for specific collections
  final pulumi.Input<List<CollectionOverrideDeploymentmanagerV2beta>>? collectionOverrides;
  /// Credential used when interacting with this type.
  final pulumi.Input<CredentialDeploymentmanagerV2beta>? credential;
  /// List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  final pulumi.Input<List<String>>? customCertificateAuthorityRoots;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;
  /// Descriptor Url for the this type provider.
  final pulumi.Input<String>? descriptorUrl;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  final pulumi.Input<List<TypeProviderLabelEntryDeploymentmanagerV2beta>>? labels;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Options to apply when handling any resources in this service.
  final pulumi.Input<OptionsDeploymentmanagerV2beta>? options;
  final pulumi.Input<String>? project;

  /// Creates a new [TypeProviderDeploymentmanagerV2betaArgs].
  /// [collectionOverrides] Allows resource handling overrides for specific collections
  /// [credential] Credential used when interacting with this type.
  /// [customCertificateAuthorityRoots] List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [descriptorUrl] Descriptor Url for the this type provider.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [options] Options to apply when handling any resources in this service.
  /// [project] Optional.
  TypeProviderDeploymentmanagerV2betaArgs({
    pulumi.Output<List<CollectionOverrideDeploymentmanagerV2beta>>? collectionOverrides,
    pulumi.Output<CredentialDeploymentmanagerV2beta>? credential,
    pulumi.Output<List<String>>? customCertificateAuthorityRoots,
    pulumi.Output<String>? description,
    pulumi.Output<String>? descriptorUrl,
    pulumi.Output<List<TypeProviderLabelEntryDeploymentmanagerV2beta>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<OptionsDeploymentmanagerV2beta>? options,
    pulumi.Output<String>? project,
  }) :
      collectionOverrides = pulumi.Input.asOptionalInput<List<CollectionOverrideDeploymentmanagerV2beta>>(collectionOverrides),
      credential = pulumi.Input.asOptionalInput<CredentialDeploymentmanagerV2beta>(credential),
      customCertificateAuthorityRoots = pulumi.Input.asOptionalInput<List<String>>(customCertificateAuthorityRoots),
      description = pulumi.Input.asOptionalInput<String>(description),
      descriptorUrl = pulumi.Input.asOptionalInput<String>(descriptorUrl),
      labels = pulumi.Input.asOptionalInput<List<TypeProviderLabelEntryDeploymentmanagerV2beta>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      options = pulumi.Input.asOptionalInput<OptionsDeploymentmanagerV2beta>(options),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionOverrides': ?pulumi.Input.mapOptionalInputValue<List<CollectionOverrideDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(collectionOverrides, (value) => pulumi.Input.encodeList<CollectionOverrideDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialDeploymentmanagerV2beta, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'customCertificateAuthorityRoots': ?customCertificateAuthorityRoots,
      'description': ?description,
      'descriptorUrl': ?descriptorUrl,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<TypeProviderLabelEntryDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<TypeProviderLabelEntryDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'options': ?pulumi.Input.mapOptionalInputValue<OptionsDeploymentmanagerV2beta, Map<String, dynamic>>(options, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory TypeProviderDeploymentmanagerV2betaArgs.fromMap(Map<String, dynamic> map) {
    return TypeProviderDeploymentmanagerV2betaArgs(
      collectionOverrides: map['collectionOverrides'] == null ? null : pulumi.Output.create<List<CollectionOverrideDeploymentmanagerV2beta>>(pulumi.Input.decodeList<CollectionOverrideDeploymentmanagerV2beta>(map['collectionOverrides'], (value) => CollectionOverrideDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))),
      credential: map['credential'] == null ? null : pulumi.Output.create<CredentialDeploymentmanagerV2beta>(CredentialDeploymentmanagerV2beta.fromMap((map['credential'] as Map).cast<String, dynamic>())),
      customCertificateAuthorityRoots: map['customCertificateAuthorityRoots'] == null ? null : pulumi.Output.create<List<String>>((map['customCertificateAuthorityRoots'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      descriptorUrl: map['descriptorUrl'] == null ? null : pulumi.Output.create<String>(map['descriptorUrl'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<TypeProviderLabelEntryDeploymentmanagerV2beta>>(pulumi.Input.decodeList<TypeProviderLabelEntryDeploymentmanagerV2beta>(map['labels'], (value) => TypeProviderLabelEntryDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<OptionsDeploymentmanagerV2beta>(OptionsDeploymentmanagerV2beta.fromMap((map['options'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

