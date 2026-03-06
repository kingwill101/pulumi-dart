// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppProfileDataBoostIsolationReadOnly {
  /// The Compute Billing Owner for this Data Boost App Profile.
  /// Possible values are: `HOST_PAYS`.
  final pulumi.Input<String> computeBillingOwner;

  /// Creates a new [AppProfileDataBoostIsolationReadOnly].
  /// [computeBillingOwner] The Compute Billing Owner for this Data Boost App Profile.
  const AppProfileDataBoostIsolationReadOnly({
    required this.computeBillingOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeBillingOwner': computeBillingOwner,
    };
  }

  factory AppProfileDataBoostIsolationReadOnly.fromMap(Map<String, dynamic> map) {
    return AppProfileDataBoostIsolationReadOnly(
      computeBillingOwner: pulumi.Input.fromValue(map['computeBillingOwner'] as String),
    );
  }
}

