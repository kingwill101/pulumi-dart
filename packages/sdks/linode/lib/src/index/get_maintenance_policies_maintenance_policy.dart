// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMaintenancePoliciesMaintenancePolicy {
  /// Description of this policy
  final pulumi.Input<String> description;
  /// Whether this is the default policy for the account.
  final pulumi.Input<bool> isDefault;
  /// The label for this policy.
  final pulumi.Input<String> label;
  /// The notification lead time in seconds.
  final pulumi.Input<int> notificationPeriodSec;
  /// Unique identifier for this policy
  final pulumi.Input<String> slug;
  /// The type of action taken during maintenance.
  final pulumi.Input<String> type;

  /// Creates a new [GetMaintenancePoliciesMaintenancePolicy].
  /// [description] Description of this policy
  /// [isDefault] Whether this is the default policy for the account.
  /// [label] The label for this policy.
  /// [notificationPeriodSec] The notification lead time in seconds.
  /// [slug] Unique identifier for this policy
  /// [type] The type of action taken during maintenance.
  GetMaintenancePoliciesMaintenancePolicy({
    required this.description,
    required this.isDefault,
    required this.label,
    required this.notificationPeriodSec,
    required this.slug,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'isDefault': isDefault,
      'label': label,
      'notificationPeriodSec': notificationPeriodSec,
      'slug': slug,
      'type': type,
    };
  }

  factory GetMaintenancePoliciesMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetMaintenancePoliciesMaintenancePolicy(
      description: pulumi.Input.fromValue(map['description'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      notificationPeriodSec: pulumi.Input.fromValue(map['notificationPeriodSec'] as int),
      slug: pulumi.Input.fromValue(map['slug'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

