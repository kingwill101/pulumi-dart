// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSOrganization {
  /// The Google for Work customer ID of the Organization.
  final pulumi.Input<String> directoryCustomerId;
  /// A human-readable string that refers to the Organization in the Google Cloud console. The string will be set to the primary domain (for example, `"google.com"`) of the G Suite customer that owns the organization.
  final pulumi.Input<String> displayName;
  /// The Organization's current lifecycle state.
  final pulumi.Input<String> lifecycleState;
  /// The resource name of the Organization in the form `organizations/{organization_id}`.
  final pulumi.Input<String> name;
  /// The Organization ID.
  final pulumi.Input<String> orgId;

  /// Creates a new [GetSOrganization].
  /// [directoryCustomerId] The Google for Work customer ID of the Organization.
  /// [displayName] A human-readable string that refers to the Organization in the Google Cloud console. The string will be set to the primary domain (for example, `"google.com"`) of the G Suite customer that owns the organization.
  /// [lifecycleState] The Organization's current lifecycle state.
  /// [name] The resource name of the Organization in the form `organizations/{organization_id}`.
  /// [orgId] The Organization ID.
  GetSOrganization({
    required this.directoryCustomerId,
    required this.displayName,
    required this.lifecycleState,
    required this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryCustomerId': directoryCustomerId,
      'displayName': displayName,
      'lifecycleState': lifecycleState,
      'name': name,
      'orgId': orgId,
    };
  }

  factory GetSOrganization.fromMap(Map<String, dynamic> map) {
    return GetSOrganization(
      directoryCustomerId: (map['directoryCustomerId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      lifecycleState: (map['lifecycleState'] as String).input(),
      name: (map['name'] as String).input(),
      orgId: (map['orgId'] as String).input(),
    );
  }
}

