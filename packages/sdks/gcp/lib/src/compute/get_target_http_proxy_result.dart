// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetHttpProxy.
class GetTargetHttpProxyResult {
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
  final String? selfLink;
  final String? urlMap;

  /// Creates a new [GetTargetHttpProxyResult].
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
  /// [selfLink] Optional.
  /// [urlMap] Optional.
  const GetTargetHttpProxyResult({
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
    this.selfLink,
    this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'selfLink': ?selfLink,
      'urlMap': ?urlMap,
    };
  }

  factory GetTargetHttpProxyResult.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyResult(
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
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urlMap: (() { final guardedValue = map['urlMap']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
