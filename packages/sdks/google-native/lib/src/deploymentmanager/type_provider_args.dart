// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_override.dart';
import 'credential.dart';
import 'options.dart';
import 'type_provider_label_entry.dart';

/// {@template pulumi_deploymentmanager_alpha_type_provider_args_doc}
/// The set of arguments for TypeProvider.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_alpha_type_provider_args_doc}
class TypeProviderArgs {
  /// Allows resource handling overrides for specific collections
  final pulumi.Input<List<CollectionOverride>>? collectionOverrides;
  /// Credential used when interacting with this type.
  final pulumi.Input<Credential>? credential;
  /// List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  final pulumi.Input<List<String>>? customCertificateAuthorityRoots;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;
  /// Descriptor Url for the this type provider.
  final pulumi.Input<String>? descriptorUrl;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  final pulumi.Input<List<TypeProviderLabelEntry>>? labels;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Options to apply when handling any resources in this service.
  final pulumi.Input<Options>? options;
  final pulumi.Input<String>? project;

  /// Creates a new [TypeProviderArgs].
  /// [collectionOverrides] Allows resource handling overrides for specific collections
  /// [credential] Credential used when interacting with this type.
  /// [customCertificateAuthorityRoots] List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  /// [description] An optional textual description of the resource; provided by the client when the resource is created.
  /// [descriptorUrl] Descriptor Url for the this type provider.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [options] Options to apply when handling any resources in this service.
  /// [project] Optional.
  TypeProviderArgs({
    this.collectionOverrides,
    this.credential,
    this.customCertificateAuthorityRoots,
    this.description,
    this.descriptorUrl,
    this.labels,
    this.name,
    this.options,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionOverrides': ?pulumi.Input.mapOptionalInputValue<List<CollectionOverride>, List<Map<String, dynamic>>>(collectionOverrides, (value) => pulumi.Input.encodeList<CollectionOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credential': ?pulumi.Input.mapOptionalInputValue<Credential, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'customCertificateAuthorityRoots': ?customCertificateAuthorityRoots,
      'description': ?description,
      'descriptorUrl': ?descriptorUrl,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<TypeProviderLabelEntry>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<TypeProviderLabelEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'options': ?pulumi.Input.mapOptionalInputValue<Options, Map<String, dynamic>>(options, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory TypeProviderArgs.fromMap(Map<String, dynamic> map) {
    return TypeProviderArgs(
      collectionOverrides: map['collectionOverrides'] == null ? null : (pulumi.Input.decodeList<CollectionOverride>(map['collectionOverrides'], (value) => CollectionOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      credential: map['credential'] == null ? null : (Credential.fromMap((map['credential'] as Map).cast<String, dynamic>())).input(),
      customCertificateAuthorityRoots: map['customCertificateAuthorityRoots'] == null ? null : ((map['customCertificateAuthorityRoots'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      descriptorUrl: map['descriptorUrl'] == null ? null : (map['descriptorUrl'] as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<TypeProviderLabelEntry>(map['labels'], (value) => TypeProviderLabelEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      options: map['options'] == null ? null : (Options.fromMap((map['options'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

