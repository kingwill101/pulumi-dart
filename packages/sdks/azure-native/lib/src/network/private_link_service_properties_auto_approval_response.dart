// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The auto-approval list of the private link service.
class PrivateLinkServicePropertiesAutoApprovalResponse {
  /// The list of subscriptions.
  final pulumi.Input<List<String>>? subscriptions;

  /// Creates a new [PrivateLinkServicePropertiesAutoApprovalResponse].
  /// [subscriptions] The list of subscriptions.
  const PrivateLinkServicePropertiesAutoApprovalResponse({
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptions': ?subscriptions,
    };
  }

  factory PrivateLinkServicePropertiesAutoApprovalResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServicePropertiesAutoApprovalResponse(
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
