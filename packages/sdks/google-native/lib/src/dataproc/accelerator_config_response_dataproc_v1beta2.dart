// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type and number of accelerator cards attached to the instances of an instance group (see GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/)).
class AcceleratorConfigResponseDataprocV1beta2 {
  /// The number of the accelerator cards of this type exposed to this instance.
  final pulumi.Input<int> acceleratorCount;
  /// Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes)Examples * https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 * projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 * nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
  final pulumi.Input<String> acceleratorTypeUri;

  /// Creates a new [AcceleratorConfigResponseDataprocV1beta2].
  /// [acceleratorCount] The number of the accelerator cards of this type exposed to this instance.
  /// [acceleratorTypeUri] Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes)Examples * https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 * projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 * nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
  const AcceleratorConfigResponseDataprocV1beta2({
    required this.acceleratorCount,
    required this.acceleratorTypeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorTypeUri': acceleratorTypeUri,
    };
  }

  factory AcceleratorConfigResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponseDataprocV1beta2(
      acceleratorCount: pulumi.Input.fromValue(map['acceleratorCount'] as int),
      acceleratorTypeUri: pulumi.Input.fromValue(map['acceleratorTypeUri'] as String),
    );
  }
}
