// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_sizes_size.dart';

/// Result data returned by getDedicatedInferenceSizes.
class GetDedicatedInferenceSizesResult {
  /// The list of region slugs where dedicated inference endpoints can be deployed.
  final List<String> enabledRegions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The list of available GPU sizes. Each element contains:
  final List<GetDedicatedInferenceSizesSize> sizes;

  /// Creates a new [GetDedicatedInferenceSizesResult].
  /// [enabledRegions] The list of region slugs where dedicated inference endpoints can be deployed.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sizes] The list of available GPU sizes. Each element contains:
  const GetDedicatedInferenceSizesResult({
    required this.enabledRegions,
    required this.id,
    required this.sizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledRegions': enabledRegions,
      'id': id,
      'sizes': pulumi.Input.encodeList<GetDedicatedInferenceSizesSize, Map<String, dynamic>>(sizes, (value) => value.toMap()),
    };
  }

  factory GetDedicatedInferenceSizesResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceSizesResult(
      enabledRegions: (map['enabledRegions'] as List).cast<String>(),
      id: map['id'] as String,
      sizes: pulumi.Input.decodeList<GetDedicatedInferenceSizesSize>(map['sizes']!, (value) => GetDedicatedInferenceSizesSize.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
