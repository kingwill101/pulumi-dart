// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_sizes_size_disk.dart';
import 'get_dedicated_inference_sizes_size_gpus.dart';
import 'get_dedicated_inference_sizes_size_size_category.dart';

class GetDedicatedInferenceSizesSize {
  /// The number of vCPUs.
  final pulumi.Input<int> cpu;
  /// The currency for the price.
  final pulumi.Input<String> currency;
  /// The disks attached to this size. Each element contains:
  final pulumi.Input<List<GetDedicatedInferenceSizesSizeDisk>> disks;
  /// The slug identifier for this GPU size.
  final pulumi.Input<String> gpuSlug;
  /// GPU hardware details. Each element contains:
  final pulumi.Input<List<GetDedicatedInferenceSizesSizeGpus>> gpus;
  /// The amount of memory in MiB.
  final pulumi.Input<int> memory;
  /// The hourly price for this GPU size.
  final pulumi.Input<String> pricePerHour;
  /// The regions where this GPU size is available.
  final pulumi.Input<List<String>> regions;
  /// The category this size belongs to. Each element contains:
  final pulumi.Input<List<GetDedicatedInferenceSizesSizeSizeCategory>> sizeCategories;

  /// Creates a new [GetDedicatedInferenceSizesSize].
  /// [cpu] The number of vCPUs.
  /// [currency] The currency for the price.
  /// [disks] The disks attached to this size. Each element contains:
  /// [gpuSlug] The slug identifier for this GPU size.
  /// [gpus] GPU hardware details. Each element contains:
  /// [memory] The amount of memory in MiB.
  /// [pricePerHour] The hourly price for this GPU size.
  /// [regions] The regions where this GPU size is available.
  /// [sizeCategories] The category this size belongs to. Each element contains:
  const GetDedicatedInferenceSizesSize({
    required this.cpu,
    required this.currency,
    required this.disks,
    required this.gpuSlug,
    required this.gpus,
    required this.memory,
    required this.pricePerHour,
    required this.regions,
    required this.sizeCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'currency': currency,
      'disks': pulumi.Input.mapInputValue<List<GetDedicatedInferenceSizesSizeDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<GetDedicatedInferenceSizesSizeDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gpuSlug': gpuSlug,
      'gpus': pulumi.Input.mapInputValue<List<GetDedicatedInferenceSizesSizeGpus>, List<Map<String, dynamic>>>(gpus, (value) => pulumi.Input.encodeList<GetDedicatedInferenceSizesSizeGpus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': memory,
      'pricePerHour': pricePerHour,
      'regions': regions,
      'sizeCategories': pulumi.Input.mapInputValue<List<GetDedicatedInferenceSizesSizeSizeCategory>, List<Map<String, dynamic>>>(sizeCategories, (value) => pulumi.Input.encodeList<GetDedicatedInferenceSizesSizeSizeCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDedicatedInferenceSizesSize.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceSizesSize(
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
      currency: pulumi.Input.fromValue(map['currency'] as String),
      disks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceSizesSizeDisk>(map['disks']!, (value) => GetDedicatedInferenceSizesSizeDisk.fromMap((value as Map).cast<String, dynamic>()))),
      gpuSlug: pulumi.Input.fromValue(map['gpuSlug'] as String),
      gpus: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceSizesSizeGpus>(map['gpus']!, (value) => GetDedicatedInferenceSizesSizeGpus.fromMap((value as Map).cast<String, dynamic>()))),
      memory: pulumi.Input.fromValue(map['memory'] as int),
      pricePerHour: pulumi.Input.fromValue(map['pricePerHour'] as String),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      sizeCategories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceSizesSizeSizeCategory>(map['sizeCategories']!, (value) => GetDedicatedInferenceSizesSizeSizeCategory.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
