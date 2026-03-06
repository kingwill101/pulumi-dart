// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterNetwork {
  /// The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** To enabled the private link the `connection_direction` must be set to `Outbound`.
  final pulumi.Input<String>? connectionDirection;
  /// Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? privateLinkEnabled;

  /// Creates a new [HadoopClusterNetwork].
  /// [connectionDirection] The direction of the resource provider connection. Possible values include `Inbound` or `Outbound`. Defaults to `Inbound`. Changing this forces a new resource to be created.
  /// [privateLinkEnabled] Is the private link enabled? Possible values include `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  const HadoopClusterNetwork({
    this.connectionDirection,
    this.privateLinkEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDirection': ?connectionDirection,
      'privateLinkEnabled': ?privateLinkEnabled,
    };
  }

  factory HadoopClusterNetwork.fromMap(Map<String, dynamic> map) {
    return HadoopClusterNetwork(
      connectionDirection: (() { final guardedValue = map['connectionDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkEnabled: (() { final guardedValue = map['privateLinkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

