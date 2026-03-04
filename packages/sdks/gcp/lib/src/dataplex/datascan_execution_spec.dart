// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_execution_spec_trigger.dart';

class DatascanExecutionSpec {
  /// The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time. If not specified, a data scan will run for all data in the table.
  final pulumi.Input<String>? field;

  /// Spec related to how often and when a scan should be triggered.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpecTrigger> trigger;

  /// Creates a new [DatascanExecutionSpec].
  /// [field] The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time. If not specified, a data scan will run for all data in the table.
  /// [trigger] Spec related to how often and when a scan should be triggered.
  DatascanExecutionSpec({this.field, required this.trigger});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'trigger':
          pulumi.Input.mapInputValue<
            DatascanExecutionSpecTrigger,
            Map<String, dynamic>
          >(trigger, (value) => value.toMap()),
    };
  }

  factory DatascanExecutionSpec.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionSpec(
      field: (() {
        final guardedValue = map['field'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trigger: pulumi.Input.fromValue(
        DatascanExecutionSpecTrigger.fromMap(
          (map['trigger']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
