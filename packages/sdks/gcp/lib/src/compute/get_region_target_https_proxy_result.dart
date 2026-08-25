// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionTargetHttpsProxy.
class GetRegionTargetHttpsProxyResult {
  final List<String>? certificateManagerCertificates;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final int? httpKeepAliveTimeoutSec;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  final int? proxyId;
  final String? region;
  final String? selfLink;
  final String? serverTlsPolicy;
  final List<String>? sslCertificates;
  final String? sslPolicy;
  final String? urlMap;

  /// Creates a new [GetRegionTargetHttpsProxyResult].
  /// [certificateManagerCertificates] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [httpKeepAliveTimeoutSec] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [proxyId] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [serverTlsPolicy] Optional.
  /// [sslCertificates] Optional.
  /// [sslPolicy] Optional.
  /// [urlMap] Optional.
  const GetRegionTargetHttpsProxyResult({
    this.certificateManagerCertificates,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.httpKeepAliveTimeoutSec,
    this.id,
    this.name,
    this.project,
    this.proxyId,
    this.region,
    this.selfLink,
    this.serverTlsPolicy,
    this.sslCertificates,
    this.sslPolicy,
    this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagerCertificates': ?certificateManagerCertificates,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'proxyId': ?proxyId,
      'region': ?region,
      'selfLink': ?selfLink,
      'serverTlsPolicy': ?serverTlsPolicy,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
      'urlMap': ?urlMap,
    };
  }

  factory GetRegionTargetHttpsProxyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyResult(
      certificateManagerCertificates: (() { final guardedValue = map['certificateManagerCertificates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpKeepAliveTimeoutSec: (() { final guardedValue = map['httpKeepAliveTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyId: (() { final guardedValue = map['proxyId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverTlsPolicy: (() { final guardedValue = map['serverTlsPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslCertificates: (() { final guardedValue = map['sslCertificates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urlMap: (() { final guardedValue = map['urlMap']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
