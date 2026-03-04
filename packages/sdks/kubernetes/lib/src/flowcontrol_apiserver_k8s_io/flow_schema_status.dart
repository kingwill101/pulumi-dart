// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_schema_condition.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatus {
  /// `conditions` is a list of the current states of FlowSchema.
  final pulumi.Input<List<FlowSchemaCondition>>? conditions;

  /// Creates a new [FlowSchemaStatus].
  /// [conditions] `conditions` is a list of the current states of FlowSchema.
  FlowSchemaStatus({this.conditions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<FlowSchemaCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  FlowSchemaCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FlowSchemaStatus.fromMap(Map<String, dynamic> map) {
    return FlowSchemaStatus(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FlowSchemaCondition>(
            guardedValue,
            (value) => FlowSchemaCondition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
