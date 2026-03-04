// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topology_selector_label_requirement_patch.dart';

/// A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
class TopologySelectorTermPatch {
  /// A list of topology selector requirements by labels.
  final pulumi.Input<List<TopologySelectorLabelRequirementPatch>>?
  matchLabelExpressions;

  /// Creates a new [TopologySelectorTermPatch].
  /// [matchLabelExpressions] A list of topology selector requirements by labels.
  TopologySelectorTermPatch({this.matchLabelExpressions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchLabelExpressions':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopologySelectorLabelRequirementPatch>,
            List<Map<String, dynamic>>
          >(
            matchLabelExpressions,
            (value) =>
                pulumi.Input.encodeList<
                  TopologySelectorLabelRequirementPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TopologySelectorTermPatch.fromMap(Map<String, dynamic> map) {
    return TopologySelectorTermPatch(
      matchLabelExpressions: (() {
        final guardedValue = map['matchLabelExpressions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TopologySelectorLabelRequirementPatch>(
            guardedValue,
            (value) => TopologySelectorLabelRequirementPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
