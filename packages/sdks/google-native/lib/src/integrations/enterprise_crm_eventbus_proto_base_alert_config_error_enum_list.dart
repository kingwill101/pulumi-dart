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
  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList({
    this.enumStrings,
    this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumStrings': ?enumStrings,
      'filterType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType, String>(filterType, (value) => value.value),
    };
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
      enumStrings: map['enumStrings'] == null ? null : ((map['enumStrings'] as List).cast<String>()).input(),
      filterType: map['filterType'] == null ? null : (EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType.fromValue(map['filterType'] as String)).input(),
    );
  }
}

