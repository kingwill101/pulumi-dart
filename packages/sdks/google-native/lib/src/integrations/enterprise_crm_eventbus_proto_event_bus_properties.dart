// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_property_entry.dart';

/// LINT.IfChange This message is used for storing key value pair properties for each Event / Task in the EventBus.
class EnterpriseCrmEventbusProtoEventBusProperties {
  /// An unordered list of property entries.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoPropertyEntry>>? properties;

  /// Creates a new [EnterpriseCrmEventbusProtoEventBusProperties].
  /// [properties] An unordered list of property entries.
  EnterpriseCrmEventbusProtoEventBusProperties({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmEventbusProtoPropertyEntry>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoPropertyEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmEventbusProtoEventBusProperties.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoEventBusProperties(
      properties: map['properties'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmEventbusProtoPropertyEntry>(map['properties'], (value) => EnterpriseCrmEventbusProtoPropertyEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

