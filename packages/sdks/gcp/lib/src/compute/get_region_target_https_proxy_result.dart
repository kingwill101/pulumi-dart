// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionTargetHttpsProxy.
class GetRegionTargetHttpsProxyResult {
  final List<String> certificateManagerCertificates;
  final String creationTimestamp;
  final String deletionPolicy;
  final String description;
  final int httpKeepAliveTimeoutSec;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final int proxyId;
  final String? region;
  final String selfLink;
  final String serverTlsPolicy;
  final List<String> sslCertificates;
  final String sslPolicy;
  final String urlMap;

  /// Creates a new [GetRegionTargetHttpsProxyResult].
  /// [certificateManagerCertificates] Required.
  /// [creationTimestamp] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [httpKeepAliveTimeoutSec] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  /// [proxyId] Required.
  /// [region] Optional.
  /// [selfLink] Required.
  /// [serverTlsPolicy] Required.
  /// [sslCertificates] Required.
  /// [sslPolicy] Required.
  /// [urlMap] Required.
  const GetRegionTargetHttpsProxyResult({
    required this.certificateManagerCertificates,
    required this.creationTimestamp,
    required this.deletionPolicy,
    required this.description,
    required this.httpKeepAliveTimeoutSec,
    required this.id,
    required this.name,
    this.project,
    required this.proxyId,
    this.region,
    required this.selfLink,
    required this.serverTlsPolicy,
    required this.sslCertificates,
    required this.sslPolicy,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagerCertificates': certificateManagerCertificates,
      'creationTimestamp': creationTimestamp,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'httpKeepAliveTimeoutSec': httpKeepAliveTimeoutSec,
      'id': id,
      'name': name,
      'project': ?project,
      'proxyId': proxyId,
      'region': ?region,
      'selfLink': selfLink,
      'serverTlsPolicy': serverTlsPolicy,
      'sslCertificates': sslCertificates,
      'sslPolicy': sslPolicy,
      'urlMap': urlMap,
    };
  }

  factory GetRegionTargetHttpsProxyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyResult(
      certificateManagerCertificates: (map['certificateManagerCertificates'] as List).cast<String>(),
      creationTimestamp: map['creationTimestamp'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyId: map['proxyId'] as int,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
      serverTlsPolicy: map['serverTlsPolicy'] as String,
      sslCertificates: (map['sslCertificates'] as List).cast<String>(),
      sslPolicy: map['sslPolicy'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
