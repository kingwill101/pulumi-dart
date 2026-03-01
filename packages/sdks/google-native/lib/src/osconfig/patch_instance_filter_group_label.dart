// ignore_for_file: unused_element, unnecessary_cast


/// Targets a group of VM instances by using their [assigned labels](https://cloud.google.com/compute/docs/labeling-resources). Labels are key-value pairs. A `GroupLabel` is a combination of labels that is used to target VMs for a patch job. For example, a patch job can target VMs that have the following `GroupLabel`: `{"env":"test", "app":"web"}`. This means that the patch job is applied to VMs that have both the labels `env=test` and `app=web`.
class PatchInstanceFilterGroupLabel {
  /// Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  final Map<String, String>? labels;

  /// Creates a new [PatchInstanceFilterGroupLabel].
  /// [labels] Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  PatchInstanceFilterGroupLabel({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory PatchInstanceFilterGroupLabel.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilterGroupLabel(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

