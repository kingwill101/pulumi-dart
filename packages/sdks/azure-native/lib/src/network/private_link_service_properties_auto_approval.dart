// ignore_for_file: unused_element, unnecessary_cast


/// The auto-approval list of the private link service.
class PrivateLinkServicePropertiesAutoApproval {
  /// The list of subscriptions.
  final List<String>? subscriptions;

  /// Creates a new [PrivateLinkServicePropertiesAutoApproval].
  /// [subscriptions] The list of subscriptions.
  PrivateLinkServicePropertiesAutoApproval({
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptions': ?subscriptions,
    };
  }

  factory PrivateLinkServicePropertiesAutoApproval.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServicePropertiesAutoApproval(
      subscriptions: map['subscriptions'] == null ? null : (map['subscriptions'] as List).cast<String>(),
    );
  }
}

