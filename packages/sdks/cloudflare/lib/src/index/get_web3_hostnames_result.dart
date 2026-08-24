// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWeb3HostnamesResult {
  final pulumi.Input<String> createdOn;
  /// Specify an optional description of the hostname.
  final pulumi.Input<String> description;
  /// Specify the DNSLink value used if the target is ipfs.
  final pulumi.Input<String> dnslink;
  /// Specify the identifier of the hostname.
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedOn;
  /// Specify the hostname that points to the target gateway via CNAME.
  final pulumi.Input<String> name;
  /// Specifies the status of the hostname's activation.
  /// Available values: "active", "pending", "deleting", "error".
  final pulumi.Input<String> status;
  /// Specify the target gateway of the hostname.
  /// Available values: "ethereum", "ipfs", "ipfs*universal*path".
  final pulumi.Input<String> target;

  /// Creates a new [GetWeb3HostnamesResult].
  /// [createdOn] Required.
  /// [description] Specify an optional description of the hostname.
  /// [dnslink] Specify the DNSLink value used if the target is ipfs.
  /// [id] Specify the identifier of the hostname.
  /// [modifiedOn] Required.
  /// [name] Specify the hostname that points to the target gateway via CNAME.
  /// [status] Specifies the status of the hostname's activation.
  /// [target] Specify the target gateway of the hostname.
  const GetWeb3HostnamesResult({
    required this.createdOn,
    required this.description,
    required this.dnslink,
    required this.id,
    required this.modifiedOn,
    required this.name,
    required this.status,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'description': description,
      'dnslink': dnslink,
      'id': id,
      'modifiedOn': modifiedOn,
      'name': name,
      'status': status,
      'target': target,
    };
  }

  factory GetWeb3HostnamesResult.fromMap(Map<String, dynamic> map) {
    return GetWeb3HostnamesResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      dnslink: pulumi.Input.fromValue(map['dnslink'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
