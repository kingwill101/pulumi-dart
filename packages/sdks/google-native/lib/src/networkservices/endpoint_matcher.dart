// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_matcher_metadata_label_matcher.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcher {
  /// The matcher is based on node metadata presented by xDS clients.
  final pulumi.Input<EndpointMatcherMetadataLabelMatcher>? metadataLabelMatcher;

  /// Creates a new [EndpointMatcher].
  /// [metadataLabelMatcher] The matcher is based on node metadata presented by xDS clients.
  EndpointMatcher({this.metadataLabelMatcher});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLabelMatcher':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointMatcherMetadataLabelMatcher,
            Map<String, dynamic>
          >(metadataLabelMatcher, (value) => value.toMap()),
    };
  }

  factory EndpointMatcher.fromMap(Map<String, dynamic> map) {
    return EndpointMatcher(
      metadataLabelMatcher: (() {
        final guardedValue = map['metadataLabelMatcher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointMatcherMetadataLabelMatcher.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
