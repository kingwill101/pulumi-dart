// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterValidationCheckStatusResult {
  /// (Output)
  /// The category of the validation.
  final pulumi.Input<String>? category;
  /// A human readable description of this VMware User Cluster.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Detailed failure information, which might be unformatted.
  final pulumi.Input<String>? details;
  /// (Output)
  /// Options used for the validation check.
  final pulumi.Input<String>? options;
  /// (Output)
  /// Machine-readable message indicating details about last transition.
  final pulumi.Input<String>? reason;

  /// Creates a new [VMwareClusterValidationCheckStatusResult].
  /// [category] (Output)
  /// [description] A human readable description of this VMware User Cluster.
  /// [details] (Output)
  /// [options] (Output)
  /// [reason] (Output)
  VMwareClusterValidationCheckStatusResult({
    this.category,
    this.description,
    this.details,
    this.options,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'description': ?description,
      'details': ?details,
      'options': ?options,
      'reason': ?reason,
    };
  }

  factory VMwareClusterValidationCheckStatusResult.fromMap(Map<String, dynamic> map) {
    return VMwareClusterValidationCheckStatusResult(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      details: map['details'] == null ? null : (map['details'] as String).input(),
      options: map['options'] == null ? null : (map['options'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
    );
  }
}

