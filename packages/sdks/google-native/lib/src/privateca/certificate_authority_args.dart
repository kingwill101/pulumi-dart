// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_type.dart';
import 'certificate_config.dart';
import 'key_version_spec.dart';
import 'subordinate_config.dart';

/// {@template pulumi_privateca_v1_certificate_authority_args_doc}
/// The set of arguments for CertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_certificate_authority_args_doc}
class CertificateAuthorityArgs {
  final pulumi.Input<String> caPoolId;
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> certificateAuthorityId;
  /// Immutable. The config used to create a self-signed X.509 certificate or CSR.
  final pulumi.Input<CertificateConfig> config;
  /// Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.
  final pulumi.Input<String>? gcsBucket;
  /// Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.
  final pulumi.Input<KeyVersionSpec> keySpec;
  /// Optional. Labels with user-defined metadata.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate.
  final pulumi.Input<String> lifetime;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.
  final pulumi.Input<SubordinateConfig>? subordinateConfig;
  /// Immutable. The Type of this CertificateAuthority.
  final pulumi.Input<CertificateAuthorityType> type;

  /// Creates a new [CertificateAuthorityArgs].
  /// [caPoolId] Required.
  /// [certificateAuthorityId] Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  /// [config] Immutable. The config used to create a self-signed X.509 certificate or CSR.
  /// [gcsBucket] Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.
  /// [keySpec] Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [lifetime] Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [subordinateConfig] Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.
  /// [type] Immutable. The Type of this CertificateAuthority.
  const CertificateAuthorityArgs({
    required this.caPoolId,
    required this.certificateAuthorityId,
    required this.config,
    this.gcsBucket,
    required this.keySpec,
    this.labels,
    required this.lifetime,
    this.location,
    this.project,
    this.requestId,
    this.subordinateConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'certificateAuthorityId': certificateAuthorityId,
      'config': pulumi.Input.mapInputValue<CertificateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'gcsBucket': ?gcsBucket,
      'keySpec': pulumi.Input.mapInputValue<KeyVersionSpec, Map<String, dynamic>>(keySpec, (value) => value.toMap()),
      'labels': ?labels,
      'lifetime': lifetime,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'subordinateConfig': ?pulumi.Input.mapOptionalInputValue<SubordinateConfig, Map<String, dynamic>>(subordinateConfig, (value) => value.toMap()),
      'type': pulumi.Input.mapInputValue<CertificateAuthorityType, String>(type, (value) => value.wireValue),
    };
  }

  factory CertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityArgs(
      caPoolId: pulumi.Input.fromValue(map['caPoolId'] as String),
      certificateAuthorityId: pulumi.Input.fromValue(map['certificateAuthorityId'] as String),
      config: pulumi.Input.fromValue(CertificateConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keySpec: pulumi.Input.fromValue(KeyVersionSpec.fromMap((map['keySpec']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lifetime: pulumi.Input.fromValue(map['lifetime'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subordinateConfig: (() { final guardedValue = map['subordinateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubordinateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(CertificateAuthorityType.fromValue(map['type']! as String)),
    );
  }
}

