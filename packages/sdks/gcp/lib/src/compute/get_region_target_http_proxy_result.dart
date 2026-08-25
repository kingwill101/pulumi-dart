// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionTargetHttpProxy.
class GetRegionTargetHttpProxyResult {
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
  final String? urlMap;

  /// Creates a new [GetRegionTargetHttpProxyResult].
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
  /// [urlMap] Optional.
  const GetRegionTargetHttpProxyResult({
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
    this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'urlMap': ?urlMap,
    };
  }

  factory GetRegionTargetHttpProxyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpProxyResult(
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
      urlMap: (() { final guardedValue = map['urlMap']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
