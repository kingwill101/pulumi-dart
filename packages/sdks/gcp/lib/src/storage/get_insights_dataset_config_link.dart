// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInsightsDatasetConfigLink {
  /// Dataset name for the linked DatasetConfig.
  final pulumi.Input<String> dataset;
  /// State of the linked DatasetConfig.
  final pulumi.Input<bool> linked;

  /// Creates a new [GetInsightsDatasetConfigLink].
  /// [dataset] Dataset name for the linked DatasetConfig.
  /// [linked] State of the linked DatasetConfig.
  GetInsightsDatasetConfigLink({
    required this.dataset,
    required this.linked,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'linked': linked,
    };
  }

  factory GetInsightsDatasetConfigLink.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigLink(
      dataset: (map['dataset'] as String).input(),
      linked: (map['linked'] as bool).input(),
    );
  }
}

