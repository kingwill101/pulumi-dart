// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_base_alert_config_error_enum_list_filter_type.dart';

/// List of error enums for alerts.
class EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList {
  final pulumi.Input<List<String>>? enumStrings;
  final pulumi.Input<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType>? filterType;

  /// Creates a new [EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList].
  /// [enumStrings] Optional.
  /// [filterType] Optional.
  const EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList({
    this.enumStrings,
    this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumStrings': ?enumStrings,
      'filterType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType, String>(filterType, (value) => value.wireValue),
    };
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
      enumStrings: (() { final guardedValue = map['enumStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filterType: (() { final guardedValue = map['filterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType.fromValue(guardedValue as String)); })(),
    );
  }
}
