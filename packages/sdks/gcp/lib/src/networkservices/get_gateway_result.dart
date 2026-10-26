// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGateway.
class GetGatewayResult {
  final List<String>? addresses;
  final bool? allPorts;
  final bool? allowGlobalAccess;
  final List<String>? certificateUrls;
  final String? createTime;
  final bool? deleteSwgAutogenRouterOnDestroy;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final String? envoyHeaders;
  final String? gatewaySecurityPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipVersion;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? network;
  final List<int>? ports;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? routingMode;
  final String? scope;
  final String? selfLink;
  final String? serverTlsPolicy;
  final String? subnetwork;
  final String? type;
  final String? updateTime;

  /// Creates a new [GetGatewayResult].
  /// [addresses] Optional.
  /// [allPorts] Optional.
  /// [allowGlobalAccess] Optional.
  /// [certificateUrls] Optional.
  /// [createTime] Optional.
  /// [deleteSwgAutogenRouterOnDestroy] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [envoyHeaders] Optional.
  /// [gatewaySecurityPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipVersion] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [ports] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [routingMode] Optional.
  /// [scope] Optional.
  /// [selfLink] Optional.
  /// [serverTlsPolicy] Optional.
  /// [subnetwork] Optional.
  /// [type] Optional.
  /// [updateTime] Optional.
  const GetGatewayResult({
    this.addresses,
    this.allPorts,
    this.allowGlobalAccess,
    this.certificateUrls,
    this.createTime,
    this.deleteSwgAutogenRouterOnDestroy,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.envoyHeaders,
    this.gatewaySecurityPolicy,
    this.id,
    this.ipVersion,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.ports,
    this.project,
    this.pulumiLabels,
    this.routingMode,
    this.scope,
    this.selfLink,
    this.serverTlsPolicy,
    this.subnetwork,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'allPorts': ?allPorts,
      'allowGlobalAccess': ?allowGlobalAccess,
      'certificateUrls': ?certificateUrls,
      'createTime': ?createTime,
      'deleteSwgAutogenRouterOnDestroy': ?deleteSwgAutogenRouterOnDestroy,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'envoyHeaders': ?envoyHeaders,
      'gatewaySecurityPolicy': ?gatewaySecurityPolicy,
      'id': ?id,
      'ipVersion': ?ipVersion,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'ports': ?ports,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'routingMode': ?routingMode,
      'scope': ?scope,
      'selfLink': ?selfLink,
      'serverTlsPolicy': ?serverTlsPolicy,
      'subnetwork': ?subnetwork,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      allPorts: (() { final guardedValue = map['allPorts']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowGlobalAccess: (() { final guardedValue = map['allowGlobalAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      certificateUrls: (() { final guardedValue = map['certificateUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteSwgAutogenRouterOnDestroy: (() { final guardedValue = map['deleteSwgAutogenRouterOnDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      envoyHeaders: (() { final guardedValue = map['envoyHeaders']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewaySecurityPolicy: (() { final guardedValue = map['gatewaySecurityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      routingMode: (() { final guardedValue = map['routingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverTlsPolicy: (() { final guardedValue = map['serverTlsPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
