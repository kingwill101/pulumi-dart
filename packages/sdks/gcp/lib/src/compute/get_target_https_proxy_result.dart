// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetHttpsProxy.
class GetTargetHttpsProxyResult {
  final List<String> certificateManagerCertificates;
  final String certificateMap;
  final String creationTimestamp;
  final String deletionPolicy;
  final String description;
  final String fingerprint;
  final int httpKeepAliveTimeoutSec;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final bool proxyBind;
  final int proxyId;
  final String quicOverride;
  final String selfLink;
  final String serverTlsPolicy;
  final List<String> sslCertificates;
  final String sslPolicy;
  final String tlsEarlyData;
  final String urlMap;

  /// Creates a new [GetTargetHttpsProxyResult].
  /// [certificateManagerCertificates] Required.
  /// [certificateMap] Required.
  /// [creationTimestamp] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [fingerprint] Required.
  /// [httpKeepAliveTimeoutSec] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  /// [proxyBind] Required.
  /// [proxyId] Required.
  /// [quicOverride] Required.
  /// [selfLink] Required.
  /// [serverTlsPolicy] Required.
  /// [sslCertificates] Required.
  /// [sslPolicy] Required.
  /// [tlsEarlyData] Required.
  /// [urlMap] Required.
  const GetTargetHttpsProxyResult({
    required this.certificateManagerCertificates,
    required this.certificateMap,
    required this.creationTimestamp,
    required this.deletionPolicy,
    required this.description,
    required this.fingerprint,
    required this.httpKeepAliveTimeoutSec,
    required this.id,
    required this.name,
    this.project,
    required this.proxyBind,
    required this.proxyId,
    required this.quicOverride,
    required this.selfLink,
    required this.serverTlsPolicy,
    required this.sslCertificates,
    required this.sslPolicy,
    required this.tlsEarlyData,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagerCertificates': certificateManagerCertificates,
      'certificateMap': certificateMap,
      'creationTimestamp': creationTimestamp,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'fingerprint': fingerprint,
      'httpKeepAliveTimeoutSec': httpKeepAliveTimeoutSec,
      'id': id,
      'name': name,
      'project': ?project,
      'proxyBind': proxyBind,
      'proxyId': proxyId,
      'quicOverride': quicOverride,
      'selfLink': selfLink,
      'serverTlsPolicy': serverTlsPolicy,
      'sslCertificates': sslCertificates,
      'sslPolicy': sslPolicy,
      'tlsEarlyData': tlsEarlyData,
      'urlMap': urlMap,
    };
  }

  factory GetTargetHttpsProxyResult.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyResult(
      certificateManagerCertificates: (map['certificateManagerCertificates'] as List).cast<String>(),
      certificateMap: map['certificateMap'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyBind: map['proxyBind'] as bool,
      proxyId: map['proxyId'] as int,
      quicOverride: map['quicOverride'] as String,
      selfLink: map['selfLink'] as String,
      serverTlsPolicy: map['serverTlsPolicy'] as String,
      sslCertificates: (map['sslCertificates'] as List).cast<String>(),
      sslPolicy: map['sslPolicy'] as String,
      tlsEarlyData: map['tlsEarlyData'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
