// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ca_certs_cert.dart';

/// Result data returned by getCaCerts.
class GetCaCertsResult {
  /// SHA1 fingerprint of the currently active CA certificate.
  final String? activeVersion;
  /// A list of server CA certificates for the instance. Each contains:
  final List<GetCaCertsCert>? certs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instance;
  final String? project;

  /// Creates a new [GetCaCertsResult].
  /// [activeVersion] SHA1 fingerprint of the currently active CA certificate.
  /// [certs] A list of server CA certificates for the instance. Each contains:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Optional.
  /// [project] Optional.
  const GetCaCertsResult({
    this.activeVersion,
    this.certs,
    this.id,
    this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeVersion': ?activeVersion,
      'certs': ?(() { final guardedValue = certs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCaCertsCert, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instance': ?instance,
      'project': ?project,
    };
  }

  factory GetCaCertsResult.fromMap(Map<String, dynamic> map) {
    return GetCaCertsResult(
      activeVersion: (() { final guardedValue = map['activeVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certs: (() { final guardedValue = map['certs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCaCertsCert>(guardedValue, (value) => GetCaCertsCert.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
