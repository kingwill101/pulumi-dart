// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_label_matcher.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcherNetworkservicesV1beta1 {
  /// The matcher is based on node metadata presented by xDS clients.
  final pulumi.Input<MetadataLabelMatcher>? metadataLabelMatcher;

  /// Creates a new [EndpointMatcherNetworkservicesV1beta1].
  /// [metadataLabelMatcher] The matcher is based on node metadata presented by xDS clients.
  EndpointMatcherNetworkservicesV1beta1({
    this.metadataLabelMatcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLabelMatcher': ?pulumi.Input.mapOptionalInputValue<MetadataLabelMatcher, Map<String, dynamic>>(metadataLabelMatcher, (value) => value.toMap()),
    };
  }

  factory EndpointMatcherNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointMatcherNetworkservicesV1beta1(
      metadataLabelMatcher: map['metadataLabelMatcher'] == null ? null : (MetadataLabelMatcher.fromMap((map['metadataLabelMatcher']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

