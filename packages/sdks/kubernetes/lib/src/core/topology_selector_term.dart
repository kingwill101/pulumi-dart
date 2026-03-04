// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topology_selector_label_requirement.dart';

/// A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
class TopologySelectorTerm {
  /// A list of topology selector requirements by labels.
  final pulumi.Input<List<TopologySelectorLabelRequirement>>?
  matchLabelExpressions;

  /// Creates a new [TopologySelectorTerm].
  /// [matchLabelExpressions] A list of topology selector requirements by labels.
  TopologySelectorTerm({this.matchLabelExpressions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchLabelExpressions':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopologySelectorLabelRequirement>,
            List<Map<String, dynamic>>
          >(
            matchLabelExpressions,
            (value) =>
                pulumi.Input.encodeList<
                  TopologySelectorLabelRequirement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TopologySelectorTerm.fromMap(Map<String, dynamic> map) {
    return TopologySelectorTerm(
      matchLabelExpressions: (() {
        final guardedValue = map['matchLabelExpressions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TopologySelectorLabelRequirement>(
            guardedValue,
            (value) => TopologySelectorLabelRequirement.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
