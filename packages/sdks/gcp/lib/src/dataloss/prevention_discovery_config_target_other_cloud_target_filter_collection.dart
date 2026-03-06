// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection {
  /// A collection of regular expressions to match a resource against.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes>? includeRegexes;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection].
  /// [includeRegexes] A collection of regular expressions to match a resource against.
  const PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes, Map<String, dynamic>>(includeRegexes, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection(
      includeRegexes: (() { final guardedValue = map['includeRegexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

