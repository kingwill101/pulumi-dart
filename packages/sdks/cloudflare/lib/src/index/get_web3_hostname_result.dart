// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWeb3Hostname.
class GetWeb3HostnameResult {
  final String? createdOn;
  /// Specify an optional description of the hostname.
  final String? description;
  /// Specify the DNSLink value used if the target is ipfs.
  final String? dnslink;
  /// Specify the identifier of the hostname.
  final String? id;
  /// Specify the identifier of the hostname.
  final String? identifier;
  final String? modifiedOn;
  /// Specify the hostname that points to the target gateway via CNAME.
  final String? name;
  /// Specifies the status of the hostname's activation.
  /// Available values: "active", "pending", "deleting", "error".
  final String? status;
  /// Specify the target gateway of the hostname.
  /// Available values: "ethereum", "ipfs", "ipfs*universal*path".
  final String? target;
  /// Specify the identifier of the hostname.
  final String? zoneId;

  /// Creates a new [GetWeb3HostnameResult].
  /// [createdOn] Optional.
  /// [description] Specify an optional description of the hostname.
  /// [dnslink] Specify the DNSLink value used if the target is ipfs.
  /// [id] Specify the identifier of the hostname.
  /// [identifier] Specify the identifier of the hostname.
  /// [modifiedOn] Optional.
  /// [name] Specify the hostname that points to the target gateway via CNAME.
  /// [status] Specifies the status of the hostname's activation.
  /// [target] Specify the target gateway of the hostname.
  /// [zoneId] Specify the identifier of the hostname.
  const GetWeb3HostnameResult({
    this.createdOn,
    this.description,
    this.dnslink,
    this.id,
    this.identifier,
    this.modifiedOn,
    this.name,
    this.status,
    this.target,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'description': ?description,
      'dnslink': ?dnslink,
      'id': ?id,
      'identifier': ?identifier,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'status': ?status,
      'target': ?target,
      'zoneId': ?zoneId,
    };
  }

  factory GetWeb3HostnameResult.fromMap(Map<String, dynamic> map) {
    return GetWeb3HostnameResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnslink: (() { final guardedValue = map['dnslink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
