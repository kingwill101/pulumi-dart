// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A grouping of information about the connection to the remote resource.
class PrivateLinkServiceConnection {
  /// The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<List<String>>? groupIds;
  /// The resource id of the private link service. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<String>? privateLinkServiceId;

  /// Creates a new [PrivateLinkServiceConnection].
  /// [groupIds] The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to. Required on PUT (CreateOrUpdate) requests.
  /// [privateLinkServiceId] The resource id of the private link service. Required on PUT (CreateOrUpdate) requests.
  PrivateLinkServiceConnection({
    this.groupIds,
    this.privateLinkServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateLinkServiceId': ?privateLinkServiceId,
    };
  }

  factory PrivateLinkServiceConnection.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnection(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateLinkServiceId: (() { final guardedValue = map['privateLinkServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

