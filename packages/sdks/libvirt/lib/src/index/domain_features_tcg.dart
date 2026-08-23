// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesTcg {
  /// Configures the Trusted Boot (TB) cache settings for TCG to manage trusted boot processes.
  final pulumi.Input<double>? tbCache;
  /// Specifies the unit of the TB cache size set for TCG configurations.
  final pulumi.Input<String>? tbCacheUnit;

  /// Creates a new [DomainFeaturesTcg].
  /// [tbCache] Configures the Trusted Boot (TB) cache settings for TCG to manage trusted boot processes.
  /// [tbCacheUnit] Specifies the unit of the TB cache size set for TCG configurations.
  const DomainFeaturesTcg({
    this.tbCache,
    this.tbCacheUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tbCache': ?tbCache,
      'tbCacheUnit': ?tbCacheUnit,
    };
  }

  factory DomainFeaturesTcg.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesTcg(
      tbCache: (() { final guardedValue = map['tbCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tbCacheUnit: (() { final guardedValue = map['tbCacheUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
