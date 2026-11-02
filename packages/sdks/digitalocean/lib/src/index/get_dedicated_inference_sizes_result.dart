// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_sizes_size.dart';

/// Result data returned by getDedicatedInferenceSizes.
class GetDedicatedInferenceSizesResult {
  /// The list of region slugs where dedicated inference endpoints can be deployed.
  final List<String>? enabledRegions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of available GPU sizes. Each element contains:
  final List<GetDedicatedInferenceSizesSize>? sizes;

  /// Creates a new [GetDedicatedInferenceSizesResult].
  /// [enabledRegions] The list of region slugs where dedicated inference endpoints can be deployed.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sizes] The list of available GPU sizes. Each element contains:
  const GetDedicatedInferenceSizesResult({
    this.enabledRegions,
    this.id,
    this.sizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledRegions': ?enabledRegions,
      'id': ?id,
      'sizes': ?(() { final guardedValue = sizes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceSizesSize, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDedicatedInferenceSizesResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceSizesResult(
      enabledRegions: (() { final guardedValue = map['enabledRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizes: (() { final guardedValue = map['sizes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceSizesSize>(guardedValue, (value) => GetDedicatedInferenceSizesSize.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
