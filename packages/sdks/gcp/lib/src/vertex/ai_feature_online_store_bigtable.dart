// ignore_for_file: unused_element, unnecessary_cast

import 'ai_feature_online_store_bigtable_auto_scaling.dart';

class AiFeatureOnlineStoreBigtable {
  /// Autoscaling config applied to Bigtable Instance.
  /// Structure is documented below.
  final AiFeatureOnlineStoreBigtableAutoScaling autoScaling;
  /// Optional. If true, enable direct access to the Bigtable instance.
  final bool? enableDirectBigtableAccess;
  /// The zone where the Bigtable instance will be created.
  final String? zone;

  /// Creates a new [AiFeatureOnlineStoreBigtable].
  /// [autoScaling] Autoscaling config applied to Bigtable Instance.
  /// [enableDirectBigtableAccess] Optional. If true, enable direct access to the Bigtable instance.
  /// [zone] The zone where the Bigtable instance will be created.
  AiFeatureOnlineStoreBigtable({
    required this.autoScaling,
    this.enableDirectBigtableAccess,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaling': autoScaling.toMap(),
      'enableDirectBigtableAccess': ?enableDirectBigtableAccess,
      'zone': ?zone,
    };
  }

  factory AiFeatureOnlineStoreBigtable.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreBigtable(
      autoScaling: AiFeatureOnlineStoreBigtableAutoScaling.fromMap((map['autoScaling'] as Map).cast<String, dynamic>()),
      enableDirectBigtableAccess: map['enableDirectBigtableAccess'] == null ? null : map['enableDirectBigtableAccess'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

