// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Web3Hostname resources.
class Web3HostnameState {
  final pulumi.Input<String?>? createdOn;
  /// Specify an optional description of the hostname.
  final pulumi.Input<String?>? description;
  /// Specify the DNSLink value used if the target is ipfs.
  final pulumi.Input<String?>? dnslink;
  final pulumi.Input<String?>? modifiedOn;
  /// Specify the hostname that points to the target gateway via CNAME.
  final pulumi.Input<String?>? name;
  /// Specifies the status of the hostname's activation.
  /// Available values: "active", "pending", "deleting", "error".
  final pulumi.Input<String?>? status;
  /// Specify the target gateway of the hostname.
  /// Available values: "ethereum", "ipfs", "ipfs*universal*path".
  final pulumi.Input<String?>? target;
  /// Specify the identifier of the hostname.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [Web3HostnameState].
  /// [createdOn] Optional.
  /// [description] Specify an optional description of the hostname.
  /// [dnslink] Specify the DNSLink value used if the target is ipfs.
  /// [modifiedOn] Optional.
  /// [name] Specify the hostname that points to the target gateway via CNAME.
  /// [status] Specifies the status of the hostname's activation.
  /// [target] Specify the target gateway of the hostname.
  /// [zoneId] Specify the identifier of the hostname.
  const Web3HostnameState({
    this.createdOn,
    this.description,
    this.dnslink,
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
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'status': ?status,
      'target': ?target,
      'zoneId': ?zoneId,
    };
  }

  factory Web3HostnameState.fromMap(Map<String, dynamic> map) {
    return Web3HostnameState(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnslink: (() { final guardedValue = map['dnslink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
