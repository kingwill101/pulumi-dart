// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_rule_set_object_filter_source_object_identifier.dart';

class StreamRuleSetObjectFilter {
  /// Specific source object identifier.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifier>? sourceObjectIdentifier;

  /// Creates a new [StreamRuleSetObjectFilter].
  /// [sourceObjectIdentifier] Specific source object identifier.
  const StreamRuleSetObjectFilter({
    this.sourceObjectIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceObjectIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifier, Map<String, dynamic>>(sourceObjectIdentifier, (value) => value.toMap()),
    };
  }

  factory StreamRuleSetObjectFilter.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilter(
      sourceObjectIdentifier: (() { final guardedValue = map['sourceObjectIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

