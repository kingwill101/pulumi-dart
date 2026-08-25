// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsDatasetConfigLink {
  /// (Output)
  /// Dataset name for the linked DatasetConfig.
  final pulumi.Input<String?>? dataset;
  /// (Output)
  /// State of the linked DatasetConfig.
  final pulumi.Input<bool?>? linked;

  /// Creates a new [InsightsDatasetConfigLink].
  /// [dataset] (Output)
  /// [linked] (Output)
  const InsightsDatasetConfigLink({
    this.dataset,
    this.linked,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'linked': ?linked,
    };
  }

  factory InsightsDatasetConfigLink.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigLink(
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linked: (() { final guardedValue = map['linked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
