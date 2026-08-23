// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceSizesSizeGpus {
  /// The number of GPUs.
  final pulumi.Input<int> count;
  /// The GPU model slug.
  final pulumi.Input<String> slug;
  /// The VRAM per GPU in GiB.
  final pulumi.Input<int> vramGb;

  /// Creates a new [GetDedicatedInferenceSizesSizeGpus].
  /// [count] The number of GPUs.
  /// [slug] The GPU model slug.
  /// [vramGb] The VRAM per GPU in GiB.
  const GetDedicatedInferenceSizesSizeGpus({
    required this.count,
    required this.slug,
    required this.vramGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'slug': slug,
      'vramGb': vramGb,
    };
  }

  factory GetDedicatedInferenceSizesSizeGpus.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceSizesSizeGpus(
      count: pulumi.Input.fromValue(map['count'] as int),
      slug: pulumi.Input.fromValue(map['slug'] as String),
      vramGb: pulumi.Input.fromValue(map['vramGb'] as int),
    );
  }
}
