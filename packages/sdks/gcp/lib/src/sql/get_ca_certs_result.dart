// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ca_certs_cert.dart';

/// Result data returned by getCaCerts.
class GetCaCertsResult {
  /// SHA1 fingerprint of the currently active CA certificate.
  final String activeVersion;

  /// A list of server CA certificates for the instance. Each contains:
  final List<GetCaCertsCert> certs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  final String project;

  /// Creates a new [GetCaCertsResult].
  /// [activeVersion] SHA1 fingerprint of the currently active CA certificate.
  /// [certs] A list of server CA certificates for the instance. Each contains:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Required.
  /// [project] Required.
  GetCaCertsResult({
    required this.activeVersion,
    required this.certs,
    required this.id,
    required this.instance,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeVersion': activeVersion,
      'certs': pulumi.Input.encodeList<GetCaCertsCert, Map<String, dynamic>>(
        certs,
        (value) => value.toMap(),
      ),
      'id': id,
      'instance': instance,
      'project': project,
    };
  }

  factory GetCaCertsResult.fromMap(Map<String, dynamic> map) {
    return GetCaCertsResult(
      activeVersion: map['activeVersion'] as String,
      certs: pulumi.Input.decodeList<GetCaCertsCert>(
        map['certs']!,
        (value) =>
            GetCaCertsCert.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      instance: map['instance'] as String,
      project: map['project'] as String,
    );
  }
}
