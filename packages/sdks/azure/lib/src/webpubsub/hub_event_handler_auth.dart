// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubEventHandlerAuth {
  /// Specify the identity ID of the target resource.
  ///
  /// &gt; **Note:** `managedIdentityId` is required if the auth block is defined
  final pulumi.Input<String> managedIdentityId;

  /// Creates a new [HubEventHandlerAuth].
  /// [managedIdentityId] Specify the identity ID of the target resource.
  const HubEventHandlerAuth({
    required this.managedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentityId': managedIdentityId,
    };
  }

  factory HubEventHandlerAuth.fromMap(Map<String, dynamic> map) {
    return HubEventHandlerAuth(
      managedIdentityId: pulumi.Input.fromValue(map['managedIdentityId'] as String),
    );
  }
}
