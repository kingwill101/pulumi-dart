// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sizes_size_gpu_info_vram.dart';

class GetSizesSizeGpuInfo {
  /// The number of GPUs allocated to Droplets of this size.
  final pulumi.Input<int> count;
  /// The model of the GPU.
  final pulumi.Input<String> model;
  /// The GPU partition modes available for this size (e.g. `PARTITION_MODE_SPX_NPS1`, `PARTITION_MODE_DPX_NPS2`). Only returned to callers with access to the feature; an empty list means partition-mode selection is unavailable.
  final pulumi.Input<List<String>> supportedPartitionModes;
  /// Information about the VRAM available to the GPU. The `vram` block exports `amount` (the amount of VRAM) and `unit` (the unit of measurement).
  final pulumi.Input<List<GetSizesSizeGpuInfoVram>> vrams;

  /// Creates a new [GetSizesSizeGpuInfo].
  /// [count] The number of GPUs allocated to Droplets of this size.
  /// [model] The model of the GPU.
  /// [supportedPartitionModes] The GPU partition modes available for this size (e.g. `PARTITION_MODE_SPX_NPS1`, `PARTITION_MODE_DPX_NPS2`). Only returned to callers with access to the feature; an empty list means partition-mode selection is unavailable.
  /// [vrams] Information about the VRAM available to the GPU. The `vram` block exports `amount` (the amount of VRAM) and `unit` (the unit of measurement).
  const GetSizesSizeGpuInfo({
    required this.count,
    required this.model,
    required this.supportedPartitionModes,
    required this.vrams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'model': model,
      'supportedPartitionModes': supportedPartitionModes,
      'vrams': pulumi.Input.mapInputValue<List<GetSizesSizeGpuInfoVram>, List<Map<String, dynamic>>>(vrams, (value) => pulumi.Input.encodeList<GetSizesSizeGpuInfoVram, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSizesSizeGpuInfo.fromMap(Map<String, dynamic> map) {
    return GetSizesSizeGpuInfo(
      count: pulumi.Input.fromValue(map['count'] as int),
      model: pulumi.Input.fromValue(map['model'] as String),
      supportedPartitionModes: pulumi.Input.fromValue((map['supportedPartitionModes'] as List).cast<String>()),
      vrams: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSizesSizeGpuInfoVram>(map['vrams']!, (value) => GetSizesSizeGpuInfoVram.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
