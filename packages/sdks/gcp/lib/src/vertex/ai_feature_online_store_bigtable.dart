// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_bigtable_auto_scaling.dart';

class AiFeatureOnlineStoreBigtable {
  /// Autoscaling config applied to Bigtable Instance.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreBigtableAutoScaling> autoScaling;
  /// Optional. If true, enable direct access to the Bigtable instance.
  final pulumi.Input<bool>? enableDirectBigtableAccess;
  /// The zone where the Bigtable instance will be created.
  final pulumi.Input<String>? zone;

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
      'autoScaling': pulumi.Input.mapInputValue<AiFeatureOnlineStoreBigtableAutoScaling, Map<String, dynamic>>(autoScaling, (value) => value.toMap()),
      'enableDirectBigtableAccess': ?enableDirectBigtableAccess,
      'zone': ?zone,
    };
  }

  factory AiFeatureOnlineStoreBigtable.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreBigtable(
      autoScaling: (AiFeatureOnlineStoreBigtableAutoScaling.fromMap((map['autoScaling'] as Map).cast<String, dynamic>())).input(),
      enableDirectBigtableAccess: map['enableDirectBigtableAccess'] == null ? null : (map['enableDirectBigtableAccess'] as bool).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

