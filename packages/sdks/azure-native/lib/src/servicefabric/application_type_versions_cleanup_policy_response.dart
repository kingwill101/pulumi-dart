// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy used to clean up unused versions. When the policy is not specified explicitly, the default unused application versions to keep will be 3.
class ApplicationTypeVersionsCleanupPolicyResponse {
  /// Number of unused versions per application type to keep.
  final pulumi.Input<int> maxUnusedVersionsToKeep;

  /// Creates a new [ApplicationTypeVersionsCleanupPolicyResponse].
  /// [maxUnusedVersionsToKeep] Number of unused versions per application type to keep.
  const ApplicationTypeVersionsCleanupPolicyResponse({
    required this.maxUnusedVersionsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnusedVersionsToKeep': maxUnusedVersionsToKeep,
    };
  }

  factory ApplicationTypeVersionsCleanupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationTypeVersionsCleanupPolicyResponse(
      maxUnusedVersionsToKeep: pulumi.Input.fromValue(map['maxUnusedVersionsToKeep'] as int),
    );
  }
}

