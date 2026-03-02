// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CSPM monitoring for AzureDevOps offering
class CspmMonitorAzureDevOpsOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorAzureDevOps'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [CspmMonitorAzureDevOpsOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  CspmMonitorAzureDevOpsOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorAzureDevOpsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAzureDevOpsOfferingResponse(
      description: (map['description'] as String).input(),
      offeringType: (map['offeringType'] as String).input(),
    );
  }
}

