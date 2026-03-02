// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InteractiveQueryClusterNetwork {
  /// The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** To enabled the private link the `connection_direction` must be set to `Outbound`.
  final pulumi.Input<String>? connectionDirection;
  /// Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? privateLinkEnabled;

  /// Creates a new [InteractiveQueryClusterNetwork].
  /// [connectionDirection] The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  /// [privateLinkEnabled] Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  InteractiveQueryClusterNetwork({
    this.connectionDirection,
    this.privateLinkEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDirection': ?connectionDirection,
      'privateLinkEnabled': ?privateLinkEnabled,
    };
  }

  factory InteractiveQueryClusterNetwork.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterNetwork(
      connectionDirection: map['connectionDirection'] == null ? null : (map['connectionDirection'] as String).input(),
      privateLinkEnabled: map['privateLinkEnabled'] == null ? null : (map['privateLinkEnabled'] as bool).input(),
    );
  }
}

