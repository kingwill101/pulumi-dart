// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetHttpProxy.
class GetTargetHttpProxyResult {
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
  final String selfLink;
  final String urlMap;

  /// Creates a new [GetTargetHttpProxyResult].
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
  /// [selfLink] Required.
  /// [urlMap] Required.
  const GetTargetHttpProxyResult({
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
    required this.selfLink,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'selfLink': selfLink,
      'urlMap': urlMap,
    };
  }

  factory GetTargetHttpProxyResult.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyResult(
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
      selfLink: map['selfLink'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
