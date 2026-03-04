// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_matcher_metadata_label_matcher_metadata_label_match_criteria.dart';
import 'endpoint_matcher_metadata_label_matcher_metadata_labels.dart';

/// The matcher that is based on node metadata presented by xDS clients.
class EndpointMatcherMetadataLabelMatcher {
  /// Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), an error will be thrown.
  final pulumi.Input<
    EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria
  >?
  metadataLabelMatchCriteria;

  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list can have at most 64 entries. The list can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (i.e this matches any client).
  final pulumi.Input<List<EndpointMatcherMetadataLabelMatcherMetadataLabels>>?
  metadataLabels;

  /// Creates a new [EndpointMatcherMetadataLabelMatcher].
  /// [metadataLabelMatchCriteria] Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), an error will be thrown.
  /// [metadataLabels] The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list can have at most 64 entries. The list can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (i.e this matches any client).
  EndpointMatcherMetadataLabelMatcher({
    this.metadataLabelMatchCriteria,
    this.metadataLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLabelMatchCriteria':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria,
            String
          >(metadataLabelMatchCriteria, (value) => value.wireValue),
      'metadataLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointMatcherMetadataLabelMatcherMetadataLabels>,
            List<Map<String, dynamic>>
          >(
            metadataLabels,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointMatcherMetadataLabelMatcherMetadataLabels,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EndpointMatcherMetadataLabelMatcher.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointMatcherMetadataLabelMatcher(
      metadataLabelMatchCriteria: (() {
        final guardedValue = map['metadataLabelMatchCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      metadataLabels: (() {
        final guardedValue = map['metadataLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EndpointMatcherMetadataLabelMatcherMetadataLabels
          >(
            guardedValue,
            (value) =>
                EndpointMatcherMetadataLabelMatcherMetadataLabels.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
