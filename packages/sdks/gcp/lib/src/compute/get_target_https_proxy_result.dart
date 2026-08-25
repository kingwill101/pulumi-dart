// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetHttpsProxy.
class GetTargetHttpsProxyResult {
  final List<String>? certificateManagerCertificates;
  final String? certificateMap;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final String? fingerprint;
  final int? httpKeepAliveTimeoutSec;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  final bool? proxyBind;
  final int? proxyId;
  final String? quicOverride;
  final String? selfLink;
  final String? serverTlsPolicy;
  final List<String>? sslCertificates;
  final String? sslPolicy;
  final String? tlsEarlyData;
  final String? urlMap;

  /// Creates a new [GetTargetHttpsProxyResult].
  /// [certificateManagerCertificates] Optional.
  /// [certificateMap] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [fingerprint] Optional.
  /// [httpKeepAliveTimeoutSec] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [proxyBind] Optional.
  /// [proxyId] Optional.
  /// [quicOverride] Optional.
  /// [selfLink] Optional.
  /// [serverTlsPolicy] Optional.
  /// [sslCertificates] Optional.
  /// [sslPolicy] Optional.
  /// [tlsEarlyData] Optional.
  /// [urlMap] Optional.
  const GetTargetHttpsProxyResult({
    this.certificateManagerCertificates,
    this.certificateMap,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.fingerprint,
    this.httpKeepAliveTimeoutSec,
    this.id,
    this.name,
    this.project,
    this.proxyBind,
    this.proxyId,
    this.quicOverride,
    this.selfLink,
    this.serverTlsPolicy,
    this.sslCertificates,
    this.sslPolicy,
    this.tlsEarlyData,
    this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagerCertificates': ?certificateManagerCertificates,
      'certificateMap': ?certificateMap,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'proxyId': ?proxyId,
      'quicOverride': ?quicOverride,
      'selfLink': ?selfLink,
      'serverTlsPolicy': ?serverTlsPolicy,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
      'tlsEarlyData': ?tlsEarlyData,
      'urlMap': ?urlMap,
    };
  }

  factory GetTargetHttpsProxyResult.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyResult(
      certificateManagerCertificates: (() { final guardedValue = map['certificateManagerCertificates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      certificateMap: (() { final guardedValue = map['certificateMap']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpKeepAliveTimeoutSec: (() { final guardedValue = map['httpKeepAliveTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyBind: (() { final guardedValue = map['proxyBind']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      proxyId: (() { final guardedValue = map['proxyId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      quicOverride: (() { final guardedValue = map['quicOverride']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverTlsPolicy: (() { final guardedValue = map['serverTlsPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslCertificates: (() { final guardedValue = map['sslCertificates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlsEarlyData: (() { final guardedValue = map['tlsEarlyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urlMap: (() { final guardedValue = map['urlMap']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
