// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceCustomMetric {
  /// If true, the metric data is not used for load balancing.
  final pulumi.Input<bool> dryRun;
  /// Name of a custom utilization signal. The name must be 1-64 characters
  /// long and match the regular expression a-z? which
  /// means the first character must be a lowercase letter, and all following
  /// characters must be a dash, period, underscore, lowercase letter, or
  /// digit, except the last character, which cannot be a dash, period, or
  /// underscore. For usage guidelines, see Custom Metrics balancing mode. This
  /// field can only be used for a global or regional backend service with the
  /// loadBalancingScheme set to <code>EXTERNAL_MANAGED</code>,
  /// <code>INTERNAL_MANAGED</code> <code>INTERNAL_SELF_MANAGED</code>.
  final pulumi.Input<String> name;

  /// Creates a new [RegionBackendServiceCustomMetric].
  /// [dryRun] If true, the metric data is not used for load balancing.
  /// [name] Name of a custom utilization signal. The name must be 1-64 characters
  RegionBackendServiceCustomMetric({
    required this.dryRun,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': dryRun,
      'name': name,
    };
  }

  factory RegionBackendServiceCustomMetric.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceCustomMetric(
      dryRun: (map['dryRun'] as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}

