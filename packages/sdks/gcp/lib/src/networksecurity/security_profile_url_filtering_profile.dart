// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_url_filtering_profile_url_filter.dart';

class SecurityProfileUrlFilteringProfile {
  /// The configuration for action to take based on domain name match.
  /// A domain name would be checked for matching filters through the list in order of highest to lowest priority,
  /// and the first filter that a domain name matches with is the one whose actions gets applied.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileUrlFilteringProfileUrlFilter>?>? urlFilters;

  /// Creates a new [SecurityProfileUrlFilteringProfile].
  /// [urlFilters] The configuration for action to take based on domain name match.
  const SecurityProfileUrlFilteringProfile({
    this.urlFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlFilters': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileUrlFilteringProfileUrlFilter>, List<Map<String, dynamic>>>(urlFilters, (value) => pulumi.Input.encodeList<SecurityProfileUrlFilteringProfileUrlFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityProfileUrlFilteringProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfileUrlFilteringProfile(
      urlFilters: (() { final guardedValue = map['urlFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileUrlFilteringProfileUrlFilter>(guardedValue, (value) => SecurityProfileUrlFilteringProfileUrlFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
