// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_override_response.dart';
import 'credential_response.dart';
import 'operation_response.dart';
import 'options_response.dart';
import 'type_provider_label_entry_response.dart';

/// Result data returned by getTypeProvider.
class GetTypeProviderResult {
  /// Allows resource handling overrides for specific collections
  final List<CollectionOverrideResponse>? collectionOverrides;
  /// Credential used when interacting with this type.
  final CredentialResponse? credential;
  /// List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  final List<String>? customCertificateAuthorityRoots;
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String? description;
  /// Descriptor Url for the this type provider.
  final String? descriptorUrl;
  /// Creation timestamp in RFC3339 text format.
  final String? insertTime;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  final List<TypeProviderLabelEntryResponse>? labels;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// The Operation that most recently ran, or is currently running, on this type provider.
  final OperationResponse? operation;
  /// Options to apply when handling any resources in this service.
  final OptionsResponse? options;
  /// Self link for the type provider.
  final String? selfLink;

  /// Creates a new [GetTypeProviderResult].
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
  const GetTypeProviderResult({
    this.collectionOverrides,
    this.credential,
    this.customCertificateAuthorityRoots,
    this.description,
    this.descriptorUrl,
    this.insertTime,
    this.labels,
    this.name,
    this.operation,
    this.options,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionOverrides': ?(() { final guardedValue = collectionOverrides; if (guardedValue == null) return null; return pulumi.Input.encodeList<CollectionOverrideResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'credential': ?credential?.toMap(),
      'customCertificateAuthorityRoots': ?customCertificateAuthorityRoots,
      'description': ?description,
      'descriptorUrl': ?descriptorUrl,
      'insertTime': ?insertTime,
      'labels': ?(() { final guardedValue = labels; if (guardedValue == null) return null; return pulumi.Input.encodeList<TypeProviderLabelEntryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'operation': ?operation?.toMap(),
      'options': ?options?.toMap(),
      'selfLink': ?selfLink,
    };
  }

  factory GetTypeProviderResult.fromMap(Map<String, dynamic> map) {
    return GetTypeProviderResult(
      collectionOverrides: (() { final guardedValue = map['collectionOverrides']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CollectionOverrideResponse>(guardedValue, (value) => CollectionOverrideResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return CredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customCertificateAuthorityRoots: (() { final guardedValue = map['customCertificateAuthorityRoots']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      descriptorUrl: (() { final guardedValue = map['descriptorUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insertTime: (() { final guardedValue = map['insertTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TypeProviderLabelEntryResponse>(guardedValue, (value) => TypeProviderLabelEntryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return OperationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return OptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
