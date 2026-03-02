// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_update_configuration_target_azure_query_tag.dart';

class SoftwareUpdateConfigurationTargetAzureQuery {
  /// Specifies a list of locations to scope the query to.
  final pulumi.Input<List<String>>? locations;
  /// Specifies a list of Subscription or Resource Group ARM Ids to query.
  final pulumi.Input<List<String>>? scopes;
  /// Specifies how the specified tags to filter VMs. Possible values are `Any` and `All`.
  final pulumi.Input<String>? tagFilter;
  /// A mapping of tags used for query filter. One or more `tags` block as defined below.
  final pulumi.Input<List<SoftwareUpdateConfigurationTargetAzureQueryTag>>? tags;

  /// Creates a new [SoftwareUpdateConfigurationTargetAzureQuery].
  /// [locations] Specifies a list of locations to scope the query to.
  /// [scopes] Specifies a list of Subscription or Resource Group ARM Ids to query.
  /// [tagFilter] Specifies how the specified tags to filter VMs. Possible values are `Any` and `All`.
  /// [tags] A mapping of tags used for query filter. One or more `tags` block as defined below.
  SoftwareUpdateConfigurationTargetAzureQuery({
    this.locations,
    this.scopes,
    this.tagFilter,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'scopes': ?scopes,
      'tagFilter': ?tagFilter,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<SoftwareUpdateConfigurationTargetAzureQueryTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<SoftwareUpdateConfigurationTargetAzureQueryTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoftwareUpdateConfigurationTargetAzureQuery.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTargetAzureQuery(
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
      tagFilter: map['tagFilter'] == null ? null : (map['tagFilter'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<SoftwareUpdateConfigurationTargetAzureQueryTag>(map['tags'], (value) => SoftwareUpdateConfigurationTargetAzureQueryTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

