// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataStoreAdvancedSiteSearchConfig {
  /// If set true, automatic refresh is disabled for the DataStore.
  final pulumi.Input<bool>? disableAutomaticRefresh;
  /// If set true, initial indexing is disabled for the DataStore.
  final pulumi.Input<bool>? disableInitialIndex;

  /// Creates a new [DataStoreAdvancedSiteSearchConfig].
  /// [disableAutomaticRefresh] If set true, automatic refresh is disabled for the DataStore.
  /// [disableInitialIndex] If set true, initial indexing is disabled for the DataStore.
  DataStoreAdvancedSiteSearchConfig({
    this.disableAutomaticRefresh,
    this.disableInitialIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAutomaticRefresh': ?disableAutomaticRefresh,
      'disableInitialIndex': ?disableInitialIndex,
    };
  }

  factory DataStoreAdvancedSiteSearchConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreAdvancedSiteSearchConfig(
      disableAutomaticRefresh: map['disableAutomaticRefresh'] == null ? null : (map['disableAutomaticRefresh']! as bool).input(),
      disableInitialIndex: map['disableInitialIndex'] == null ? null : (map['disableInitialIndex']! as bool).input(),
    );
  }
}

