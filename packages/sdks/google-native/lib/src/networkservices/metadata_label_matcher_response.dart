// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_labels_response.dart';

/// The matcher that is based on node metadata presented by xDS clients.
class MetadataLabelMatcherResponse {
  /// Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), an error will be thrown.
  final pulumi.Input<String> metadataLabelMatchCriteria;
  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list can have at most 64 entries. The list can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (i.e this matches any client).
  final pulumi.Input<List<MetadataLabelsResponse>> metadataLabels;

  /// Creates a new [MetadataLabelMatcherResponse].
  /// [metadataLabelMatchCriteria] Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), an error will be thrown.
  /// [metadataLabels] The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list can have at most 64 entries. The list can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (i.e this matches any client).
  MetadataLabelMatcherResponse({
    required this.metadataLabelMatchCriteria,
    required this.metadataLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLabelMatchCriteria': metadataLabelMatchCriteria,
      'metadataLabels': pulumi.Input.mapInputValue<List<MetadataLabelsResponse>, List<Map<String, dynamic>>>(metadataLabels, (value) => pulumi.Input.encodeList<MetadataLabelsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetadataLabelMatcherResponse.fromMap(Map<String, dynamic> map) {
    return MetadataLabelMatcherResponse(
      metadataLabelMatchCriteria: pulumi.Input.fromValue(map['metadataLabelMatchCriteria'] as String),
      metadataLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataLabelsResponse>(map['metadataLabels']!, (value) => MetadataLabelsResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

