// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alloy_db_settings.dart';

/// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
class AlloyDbConnectionProfile {
  /// The AlloyDB cluster ID that this connection profile is associated with.
  final pulumi.Input<String> clusterId;
  /// Immutable. Metadata used to create the destination AlloyDB cluster.
  final pulumi.Input<AlloyDbSettings>? settings;

  /// Creates a new [AlloyDbConnectionProfile].
  /// [clusterId] The AlloyDB cluster ID that this connection profile is associated with.
  /// [settings] Immutable. Metadata used to create the destination AlloyDB cluster.
  AlloyDbConnectionProfile({
    required this.clusterId,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'settings': ?pulumi.Input.mapOptionalInputValue<AlloyDbSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory AlloyDbConnectionProfile.fromMap(Map<String, dynamic> map) {
    return AlloyDbConnectionProfile(
      clusterId: (map['clusterId'] as String).input(),
      settings: map['settings'] == null ? null : (AlloyDbSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

