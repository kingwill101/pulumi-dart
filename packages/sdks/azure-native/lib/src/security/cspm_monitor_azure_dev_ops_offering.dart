// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM monitoring for AzureDevOps offering
class CspmMonitorAzureDevOpsOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorAzureDevOps'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorAzureDevOpsOffering].
  /// [offeringType] The type of the security offering.
  const CspmMonitorAzureDevOpsOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorAzureDevOpsOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAzureDevOpsOffering(
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

