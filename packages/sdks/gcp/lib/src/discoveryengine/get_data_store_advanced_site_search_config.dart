// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataStoreAdvancedSiteSearchConfig {
  /// If set true, automatic refresh is disabled for the DataStore.
  final pulumi.Input<bool> disableAutomaticRefresh;
  /// If set true, initial indexing is disabled for the DataStore.
  final pulumi.Input<bool> disableInitialIndex;

  /// Creates a new [GetDataStoreAdvancedSiteSearchConfig].
  /// [disableAutomaticRefresh] If set true, automatic refresh is disabled for the DataStore.
  /// [disableInitialIndex] If set true, initial indexing is disabled for the DataStore.
  const GetDataStoreAdvancedSiteSearchConfig({
    required this.disableAutomaticRefresh,
    required this.disableInitialIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAutomaticRefresh': disableAutomaticRefresh,
      'disableInitialIndex': disableInitialIndex,
    };
  }

  factory GetDataStoreAdvancedSiteSearchConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreAdvancedSiteSearchConfig(
      disableAutomaticRefresh: pulumi.Input.fromValue(map['disableAutomaticRefresh'] as bool),
      disableInitialIndex: pulumi.Input.fromValue(map['disableInitialIndex'] as bool),
    );
  }
}
