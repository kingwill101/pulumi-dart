// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorOriginPrivateLink {
  /// Specifies the location where the Private Link resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> location;
  /// The ID of the Azure Resource to connect to via the Private Link.
  ///
  /// &gt; **Note:** the `privateLinkTargetId` property must specify the Resource ID of the Private Link Service when using Load Balancer as an Origin.
  final pulumi.Input<String> privateLinkTargetId;
  /// Specifies the request message that will be submitted to the `privateLinkTargetId` when requesting the private link endpoint connection. Values must be between `1` and `140` characters in length. Defaults to `Access request for CDN FrontDoor Private Link Origin`.
  final pulumi.Input<String>? requestMessage;
  /// Specifies the type of target for this Private Link Endpoint. Possible values are `blob`, `blobSecondary`, `Gateway`, `managedEnvironments`, `sites`, `web` and `webSecondary`.
  ///
  /// &gt; **Note:** `targetType` cannot be specified when using a Load Balancer as an Origin.
  final pulumi.Input<String>? targetType;

  /// Creates a new [FrontdoorOriginPrivateLink].
  /// [location] Specifies the location where the Private Link resource should exist. Changing this forces a new resource to be created.
  /// [privateLinkTargetId] The ID of the Azure Resource to connect to via the Private Link.
  /// [requestMessage] Specifies the request message that will be submitted to the `privateLinkTargetId` when requesting the private link endpoint connection. Values must be between `1` and `140` characters in length. Defaults to `Access request for CDN FrontDoor Private Link Origin`.
  /// [targetType] Specifies the type of target for this Private Link Endpoint. Possible values are `blob`, `blobSecondary`, `Gateway`, `managedEnvironments`, `sites`, `web` and `webSecondary`.
  const FrontdoorOriginPrivateLink({
    required this.location,
    required this.privateLinkTargetId,
    this.requestMessage,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'privateLinkTargetId': privateLinkTargetId,
      'requestMessage': ?requestMessage,
      'targetType': ?targetType,
    };
  }

  factory FrontdoorOriginPrivateLink.fromMap(Map<String, dynamic> map) {
    return FrontdoorOriginPrivateLink(
      location: pulumi.Input.fromValue(map['location'] as String),
      privateLinkTargetId: pulumi.Input.fromValue(map['privateLinkTargetId'] as String),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
